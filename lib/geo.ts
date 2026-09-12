import { countries } from "countries-list";

/**
 * Continent values, mirroring the Prisma `Continent` enum exactly (see
 * prisma/schema.prisma). Kept as a plain string-literal union here so this
 * module has no compile-time dependency on the generated Prisma client.
 */
export type ContinentValue =
  | "africa"
  | "asia"
  | "europe"
  | "north_america"
  | "south_america"
  | "oceania";

export const continentValues: ContinentValue[] = [
  "africa",
  "asia",
  "europe",
  "north_america",
  "south_america",
  "oceania",
];

export const continentLabels: Record<ContinentValue, string> = {
  africa: "Africa",
  asia: "Asia",
  europe: "Europe",
  north_america: "North America",
  south_america: "South America",
  oceania: "Oceania",
};

const CONTINENT_CODE_MAP: Record<string, ContinentValue> = {
  AF: "africa",
  AS: "asia",
  EU: "europe",
  NA: "north_america",
  SA: "south_america",
  OC: "oceania",
  // "AN" (Antarctica) has no Continent enum value — no dishes are expected
  // to map there, and continentForCountry() throws rather than guessing.
};

/**
 * Built once at module load from the `countries-list` package (all ~250
 * ISO 3166-1 countries/territories, MIT licensed): every country's official
 * name AND its known aliases ("Turkey" for "Türkiye", "USA" for "United
 * States", etc.) map to a lowercased key so a member typing a country name
 * almost anywhere in the world resolves correctly — this is what lets the
 * site genuinely welcome recipes "from every state and country" rather than
 * only the countries we thought to hand-list.
 */
const NAME_TO_CONTINENT: Map<string, ContinentValue> = new Map();
for (const country of Object.values(countries)) {
  const continent = CONTINENT_CODE_MAP[country.continent];
  if (!continent) continue; // skip Antarctica-only entries, if any
  NAME_TO_CONTINENT.set(country.name.toLowerCase(), continent);
  for (const alias of country.alias ?? []) {
    NAME_TO_CONTINENT.set(alias.toLowerCase(), continent);
  }
}

// A handful of everyday short forms/spellings that aren't already covered by
// the library's own `alias` lists.
const EXTRA_ALIASES: Record<string, string> = {
  usa: "united states",
  "u.s.a.": "united states",
  "u.s.": "united states",
  america: "united states",
  uk: "united kingdom",
  "u.k.": "united kingdom",
  britain: "united kingdom",
  "great britain": "united kingdom",
  holland: "netherlands",
  "south korea": "south korea",
  "n. korea": "north korea",
  uae: "united arab emirates",
};
for (const [alias, canonical] of Object.entries(EXTRA_ALIASES)) {
  const continent = NAME_TO_CONTINENT.get(canonical);
  if (continent) NAME_TO_CONTINENT.set(alias, continent);
}

/**
 * Resolves a free-text country name to a continent. Used server-side only —
 * a member's recipe submission and the seed script both send just a country
 * string; the continent is always derived here rather than trusted from
 * client input, the same non-spoofable pattern used for Owner and the
 * Original/Updated timestamps.
 *
 * Throws on a country this function can't recognize, rather than silently
 * guessing — the caller (the API route) turns that into a friendly 400 (see
 * app/api/recipes/route.ts) rather than mis-filing a country's dishes under
 * the wrong continent.
 */
export function continentForCountry(country: string): ContinentValue {
  const key = country.trim().toLowerCase();
  const continent = NAME_TO_CONTINENT.get(key);
  if (!continent) {
    throw new Error(
      `Couldn't recognize "${country}" as a country. Check the spelling, or use the country's common English name.`
    );
  }
  return continent;
}

/** True if continentForCountry(country) would succeed — lets the UI validate before submitting. */
export function isRecognizedCountry(country: string): boolean {
  return NAME_TO_CONTINENT.has(country.trim().toLowerCase());
}

/** Every recognized country's canonical display name, sorted, for a <datalist> suggestion list. */
export function allCountryNames(): string[] {
  return Object.values(countries)
    .map((c) => c.name)
    .sort((a, b) => a.localeCompare(b));
}
