// Seeds the ~70-dish starter catalog. Every row is Owner: Internet (see
// docs/CONTENT.md) — general public information compiled as a starting
// point, not original to Kalabhavans or any member.
//
// Run with: npm run db:seed  (requires DATABASE_URL / DIRECT_URL to already
// point at a migrated database — see DEPLOYMENT.md).

import { PrismaClient, Difficulty } from "@prisma/client";
import slugify from "slugify";
import { seedDishes, SEED_TIMESTAMP } from "./seed-data";
import { continentForCountry } from "../lib/geo";
import { inferDiet } from "../lib/dish-classify";

const prisma = new PrismaClient();

const PLACEHOLDER_PHOTO = "/images/placeholder-dish.svg";

function toSlug(title: string, state: string, country: string): string {
  // Country is included so e.g. a future "Biryani-Hyderabad" and a
  // same-named dish from another Hyderabad-named place elsewhere can't
  // collide, and so slugs stay stable if two countries happen to share a
  // state/city name.
  return slugify(`${title}-${state}-${country}`, { lower: true, strict: true });
}

async function upsertTag(name: string, kind: "region" | "state" | "country") {
  return prisma.tag.upsert({
    where: { name: `${kind}:${name}` },
    update: {},
    create: { name: `${kind}:${name}`, kind },
  });
}

async function main() {
  console.log(`Seeding ${seedDishes.length} dishes (Owner: Internet)...`);

  for (const dish of seedDishes) {
    // `country` defaults to "India" when omitted — see the SeedDish comment
    // in seed-data.ts — which is what let the original India entries skip
    // adding this field individually.
    const country = dish.country ?? "India";
    const continent = continentForCountry(country);
    const diet = inferDiet(dish.ingredients, dish.dietOverride);

    const slug = toSlug(dish.title, dish.state, country);
    const steps = dish.instructions
      .split(/(?<=[.])\s+/) // split into sentences -> numbered steps
      .map((s) => s.trim())
      .filter(Boolean);

    const [regionTag, stateTag, countryTag] = await Promise.all([
      upsertTag(dish.region, "region"),
      upsertTag(dish.state, "state"),
      upsertTag(country, "country"),
    ]);

    const recipe = await prisma.recipe.upsert({
      where: { slug },
      update: {}, // don't clobber a recipe a real admin has since edited
      create: {
        slug,
        title: dish.title,
        continent,
        country,
        region: dish.state,
        diet,
        isStreetFood: dish.isStreetFood ?? false,
        difficulty: Difficulty.medium,
        imageUrl: dish.photo ?? PLACEHOLDER_PHOTO,
        ownerId: null,
        ownerLabel: "Internet",
        originalAt: SEED_TIMESTAMP,
        updatedAt: SEED_TIMESTAMP,
        ingredients: {
          create: dish.ingredients.map((name, i) => ({ name, sortOrder: i })),
        },
        steps: {
          create: steps.map((instruction, i) => ({
            stepNumber: i + 1,
            instruction,
          })),
        },
        tags: {
          create: [
            { tag: { connect: { id: regionTag.id } } },
            { tag: { connect: { id: stateTag.id } } },
            { tag: { connect: { id: countryTag.id } } },
          ],
        },
      },
    });

    console.log(`  ✓ ${recipe.title} (${dish.state}, ${country})`);
  }

  console.log("Seed complete.");
}

main()
  .catch((err) => {
    console.error(err);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
