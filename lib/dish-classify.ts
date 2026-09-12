/**
 * Diet values, mirroring the Prisma `Diet` enum exactly (see
 * prisma/schema.prisma). Kept as a plain string-literal union so this module
 * has no compile-time dependency on the generated Prisma client.
 */
export type DietValue = "vegetarian" | "vegan" | "non_vegetarian" | "eggetarian";

// Word-boundary matched against the joined ingredient list, case-insensitive.
// Deliberately generic (no brand names) and deliberately over- rather than
// under-inclusive for meat/fish/seafood — the cost of mis-tagging a
// vegetarian dish as non-vegetarian (annoying) is much lower than the
// reverse (a member relying on the "vegetarian" filter getting meat).
// Plural/irregular forms are listed explicitly (rather than derived with a
// pluralization regex) so matching stays simple and predictable to test.
const MEAT_OR_FISH_KEYWORDS = [
  "chicken", "mutton", "lamb", "goat", "beef", "pork", "bacon", "sausage",
  "sausages", "ham", "veal", "venison", "rabbit", "quail", "quails", "duck",
  "turkey", "offal", "meat", "fish", "prawn", "prawns", "shrimp", "shrimps",
  "crab", "crabs", "lobster", "lobsters", "squid", "octopus", "clam", "clams",
  "oyster", "oysters", "anchovy", "anchovies", "hilsa", "seafood",
  "bone marrow", "gelatin", "gelatine",
];

const EGG_KEYWORDS = ["egg", "eggs"];

function containsWord(haystack: string, word: string): boolean {
  // Escape any regex-special characters in `word` (none of the current
  // keywords need it, but this keeps the helper safe for future additions).
  const escaped = word.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
  return new RegExp(`\\b${escaped}\\b`, "i").test(haystack);
}

/**
 * Infers a dish's diet classification from its ingredient list — used at
 * seed time (and available to any future auto-tagging) so ~100+ dishes don't
 * each need a hand-set `diet` field. Only infers "vegetarian" /
 * "non_vegetarian" / "eggetarian": "vegan" is deliberately never inferred
 * here, because ruling out dairy (ghee, yogurt, milk, paneer, cream — none
 * of which are meat/fish/egg) from a short ingredient list reliably enough
 * to tell a vegan member it's safe is a much easier claim to get wrong than
 * right. Pass an explicit `override` (see SeedDish.dietOverride in
 * prisma/seed-data.ts) for a specific dish you've hand-verified as vegan.
 */
export function inferDiet(ingredients: string[], override?: DietValue): DietValue {
  if (override) return override;

  const joined = ingredients.join(", ");
  if (MEAT_OR_FISH_KEYWORDS.some((kw) => containsWord(joined, kw))) {
    return "non_vegetarian";
  }
  if (EGG_KEYWORDS.some((kw) => containsWord(joined, kw))) {
    return "eggetarian";
  }
  return "vegetarian";
}
