// Generates a plain SQL INSERT script equivalent to what `npm run db:seed`
// would produce via Prisma — used because the actual Prisma CLI/engine
// binaries aren't downloadable from this environment (network policy blocks
// binaries.prisma.sh). This script imports the same data + helper functions
// prisma/seed.ts uses and prints raw SQL instead of calling PrismaClient.
import slugify from "slugify";
import { randomUUID } from "crypto";
import { seedDishes, SEED_TIMESTAMP } from "../prisma/seed-data";
import { continentForCountry } from "../lib/geo";
import { inferDiet } from "../lib/dish-classify";

const PLACEHOLDER_PHOTO = "/images/placeholder-dish.svg";

function toSlug(title: string, state: string, country: string): string {
  return slugify(`${title}-${state}-${country}`, { lower: true, strict: true });
}

// Escapes a JS string for use inside a single-quoted Postgres string literal.
function q(val: string | null): string {
  if (val === null) return "NULL";
  return `'${val.replace(/'/g, "''")}'`;
}

function tsLiteral(d: Date): string {
  return `'${d.toISOString()}'`;
}

const lines: string[] = [];
lines.push("-- Kalabhavans.com seed data — generated to match prisma/seed.ts's logic exactly.");
lines.push("-- Safe to re-run: uses ON CONFLICT DO NOTHING, same upsert intent as the original script.");
lines.push("BEGIN;");
lines.push("");

// Ensures a "kind:name" tag row exists, but deliberately returns the KEY,
// not an id. On a re-run against a database that already has this tag (e.g.
// adding more dishes to a country that's already represented), `ON CONFLICT
// ("name") DO NOTHING` silently skips the INSERT — so a freshly generated,
// never-persisted UUID here would be a dangling reference. recipe_tags below
// looks the real id up by name instead, which is correct whether the INSERT
// above just ran or was skipped. (This fixed a real FK-violation bug hit
// when re-running this script against a database with pre-existing tags —
// see the incident notes in kalabhavans-website-plan.md.)
const seenTags = new Set<string>(); // "kind:name" already emitted this run
function tagKey(name: string, kind: string): string {
  const key = `${kind}:${name}`;
  if (!seenTags.has(key)) {
    seenTags.add(key);
    lines.push(
      `INSERT INTO "tags" ("id","name","kind") VALUES (${q(randomUUID())}, ${q(key)}, ${q(kind)}) ON CONFLICT ("name") DO NOTHING;`
    );
  }
  return key;
}

let count = 0;
for (const dish of seedDishes) {
  const country = dish.country ?? "India";
  const continent = continentForCountry(country);
  const diet = inferDiet(dish.ingredients, dish.dietOverride);
  const slug = toSlug(dish.title, dish.state, country);
  const steps = dish.instructions
    .split(/(?<=[.])\s+/)
    .map((s) => s.trim())
    .filter(Boolean);

  const recipeId = randomUUID();
  const regionTagKey = tagKey(dish.region, "region");
  const stateTagKey = tagKey(dish.state, "state");
  const countryTagKey = tagKey(country, "country");

  lines.push("");
  lines.push(`-- ${dish.title} (${dish.state}, ${country})`);
  lines.push(
    `INSERT INTO "recipes" ("id","slug","title","description","continent","country","region","diet","isStreetFood","difficulty","imageUrl","ownerId","ownerLabel","avgRating","ratingCount","originalAt","updatedAt")\n` +
      `VALUES (${q(recipeId)}, ${q(slug)}, ${q(dish.title)}, NULL, ${q(continent)}::"Continent", ${q(country)}, ${q(dish.state)}, ${q(diet)}::"Diet", ${dish.isStreetFood ? "true" : "false"}, 'medium'::"Difficulty", ${q(dish.photo ?? PLACEHOLDER_PHOTO)}, NULL, ${q("Internet")}, 0, 0, ${tsLiteral(SEED_TIMESTAMP)}, ${tsLiteral(SEED_TIMESTAMP)})\n` +
      `ON CONFLICT ("slug") DO NOTHING;`
  );

  dish.ingredients.forEach((name, i) => {
    lines.push(
      `INSERT INTO "recipe_ingredients" ("id","recipeId","sortOrder","quantity","name") VALUES (${q(randomUUID())}, ${q(recipeId)}, ${i}, NULL, ${q(name)}) ON CONFLICT DO NOTHING;`
    );
  });

  steps.forEach((instruction, i) => {
    lines.push(
      `INSERT INTO "recipe_steps" ("id","recipeId","stepNumber","instruction") VALUES (${q(randomUUID())}, ${q(recipeId)}, ${i + 1}, ${q(instruction)}) ON CONFLICT DO NOTHING;`
    );
  });

  for (const key of [regionTagKey, stateTagKey, countryTagKey]) {
    lines.push(
      `INSERT INTO "recipe_tags" ("recipeId","tagId")\n` +
        `SELECT ${q(recipeId)}, "id" FROM "tags" WHERE "name" = ${q(key)}\n` +
        `ON CONFLICT DO NOTHING;`
    );
  }

  count++;
}

lines.push("");
lines.push("COMMIT;");

console.error(`Generated SQL for ${count} dishes.`);
process.stdout.write(lines.join("\n") + "\n");
