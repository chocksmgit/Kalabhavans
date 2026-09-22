// One-off delta SQL generator: emits INSERT statements for ONLY the newly
// added dishes (matched by title+state+country against a JSON key list),
// not the whole seedDishes catalog. This deliberately does NOT reuse
// generate-seed-sql.ts's "run once against a full array" approach for a
// second time against an already-seeded database: that script's per-dish
// recipeId is freshly generated every run, and for a recipe that ALREADY
// exists (its own INSERT skipped via `ON CONFLICT ("slug") DO NOTHING`),
// the recipe_ingredients/recipe_steps statements would still try to insert
// rows referencing that discarded, non-existent id — a foreign-key
// violation that would roll back the entire transaction, including the
// genuinely new dishes. Filtering to just the new dishes first avoids that:
// every recipeId used here belongs to a recipe actually being inserted in
// this same script run.
import slugify from "slugify";
import { randomUUID } from "crypto";
import fs from "fs";
import { seedDishes, SEED_TIMESTAMP } from "../prisma/seed-data";
import { continentForCountry } from "../lib/geo";
import { inferDiet } from "../lib/dish-classify";

const PLACEHOLDER_PHOTO = "/images/placeholder-dish.svg";
const KEYS_PATH = process.argv[2];
if (!KEYS_PATH) {
  console.error("Usage: tsx scripts/generate-new-dishes-sql.ts <path-to-keys.json>");
  process.exit(1);
}

type Key = { title: string; state: string; country: string };
const keys: Key[] = JSON.parse(fs.readFileSync(KEYS_PATH, "utf8"));
const keySet = new Set(keys.map((k) => `${k.title}|||${k.state}|||${k.country}`));

const newDishes = seedDishes.filter((d) =>
  keySet.has(`${d.title}|||${d.state}|||${d.country ?? "India"}`)
);

if (newDishes.length !== keys.length) {
  console.error(
    `MISMATCH: ${keys.length} keys given but only matched ${newDishes.length} dishes in seedDishes. Aborting — check titles/states/countries for typos.`
  );
  const matchedKeys = new Set(newDishes.map((d) => `${d.title}|||${d.state}|||${d.country ?? "India"}`));
  for (const k of keys) {
    const kk = `${k.title}|||${k.state}|||${k.country}`;
    if (!matchedKeys.has(kk)) console.error("  unmatched:", kk);
  }
  process.exit(1);
}

function toSlug(title: string, state: string, country: string): string {
  return slugify(`${title}-${state}-${country}`, { lower: true, strict: true });
}
function q(val: string | null): string {
  if (val === null) return "NULL";
  return `'${val.replace(/'/g, "''")}'`;
}
function tsLiteral(d: Date): string {
  return `'${d.toISOString()}'`;
}

const lines: string[] = [];
lines.push("-- Kalabhavans.com — newly added dishes only (deepened coverage of existing countries/states).");
lines.push("-- Safe to re-run: uses ON CONFLICT DO NOTHING throughout.");
lines.push("BEGIN;");
lines.push("");

const seenTags = new Set<string>();
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
for (const dish of newDishes) {
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

console.error(`Generated SQL for ${count} new dishes (of ${keys.length} requested).`);
process.stdout.write(lines.join("\n") + "\n");
