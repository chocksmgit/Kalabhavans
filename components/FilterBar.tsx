"use client";

import { useRouter, useSearchParams } from "next/navigation";
import { continentLabels, type ContinentValue } from "@/lib/geo";
import { dietLabels } from "@/lib/dish-labels";

/**
 * Faceted search bar: continent, country, region, diet, difficulty, street
 * food, free text, and sort are all independent facets combined with AND by
 * lib/queries.ts's searchRecipes — picking one never clears another, so a
 * visitor can genuinely narrow "vegetarian Italian street food" all at once
 * (see the "faceted search" recommendation in kalabhavans-website-plan.md
 * section 6). Continent selection narrows the Country dropdown (the Explore
 * page re-fetches the country list for the selected continent server-side)
 * rather than filtering the same fixed list client-side.
 */
export default function FilterBar({
  continents,
  countries,
  regions,
}: {
  continents: ContinentValue[];
  countries: string[];
  regions: string[];
}) {
  const router = useRouter();
  const searchParams = useSearchParams();

  function update(key: string, value: string) {
    const params = new URLSearchParams(searchParams.toString());
    if (value) params.set(key, value);
    else params.delete(key);
    // Changing continent invalidates any previously chosen country/region —
    // they may not belong to the new continent, so clear them rather than
    // silently filtering on a combination that can never match anything.
    if (key === "continent") {
      params.delete("country");
      params.delete("region");
    }
    if (key === "country") {
      params.delete("region");
    }
    router.push(`/explore?${params.toString()}`);
  }

  function updateCheckbox(key: string, checked: boolean) {
    update(key, checked ? "1" : "");
  }

  return (
    <form
      role="search"
      onSubmit={(e) => e.preventDefault()}
      className="flex flex-wrap items-center gap-3 rounded-2xl border border-ink-100 bg-white p-4"
    >
      <label className="sr-only" htmlFor="q">
        Search recipes
      </label>
      <input
        id="q"
        type="search"
        defaultValue={searchParams.get("q") ?? ""}
        onChange={(e) => update("q", e.target.value)}
        placeholder="Search by dish or ingredient..."
        className="min-w-[220px] flex-1 rounded-lg border border-ink-200 px-3 py-2 text-sm focus:border-saffron-500 focus:outline-none"
      />

      <label className="sr-only" htmlFor="continent">
        Filter by continent
      </label>
      <select
        id="continent"
        defaultValue={searchParams.get("continent") ?? ""}
        onChange={(e) => update("continent", e.target.value)}
        className="rounded-lg border border-ink-200 px-3 py-2 text-sm"
      >
        <option value="">All continents</option>
        {continents.map((c) => (
          <option key={c} value={c}>
            {continentLabels[c]}
          </option>
        ))}
      </select>

      <label className="sr-only" htmlFor="country">
        Filter by country
      </label>
      <select
        id="country"
        defaultValue={searchParams.get("country") ?? ""}
        onChange={(e) => update("country", e.target.value)}
        className="rounded-lg border border-ink-200 px-3 py-2 text-sm"
      >
        <option value="">All countries</option>
        {countries.map((c) => (
          <option key={c} value={c}>
            {c}
          </option>
        ))}
      </select>

      <label className="sr-only" htmlFor="region">
        Filter by state/region
      </label>
      <select
        id="region"
        defaultValue={searchParams.get("region") ?? ""}
        onChange={(e) => update("region", e.target.value)}
        className="rounded-lg border border-ink-200 px-3 py-2 text-sm"
      >
        <option value="">All states/regions</option>
        {regions.map((r) => (
          <option key={r} value={r}>
            {r}
          </option>
        ))}
      </select>

      <label className="sr-only" htmlFor="diet">
        Filter by diet
      </label>
      <select
        id="diet"
        defaultValue={searchParams.get("diet") ?? ""}
        onChange={(e) => update("diet", e.target.value)}
        className="rounded-lg border border-ink-200 px-3 py-2 text-sm"
      >
        <option value="">Any diet</option>
        {Object.entries(dietLabels).map(([value, label]) => (
          <option key={value} value={value}>
            {label}
          </option>
        ))}
      </select>

      <label className="sr-only" htmlFor="difficulty">
        Filter by difficulty
      </label>
      <select
        id="difficulty"
        defaultValue={searchParams.get("difficulty") ?? ""}
        onChange={(e) => update("difficulty", e.target.value)}
        className="rounded-lg border border-ink-200 px-3 py-2 text-sm"
      >
        <option value="">Any difficulty</option>
        <option value="easy">Easy</option>
        <option value="medium">Medium</option>
        <option value="hard">Hard</option>
      </select>

      <label className="flex items-center gap-1.5 text-sm text-ink-700">
        <input
          type="checkbox"
          defaultChecked={searchParams.get("street") === "1"}
          onChange={(e) => updateCheckbox("street", e.target.checked)}
          className="rounded border-ink-300"
        />
        Street food only
      </label>

      <label className="sr-only" htmlFor="sort">
        Sort
      </label>
      <select
        id="sort"
        defaultValue={searchParams.get("sort") ?? "newest"}
        onChange={(e) => update("sort", e.target.value)}
        className="rounded-lg border border-ink-200 px-3 py-2 text-sm"
      >
        <option value="newest">Newest</option>
        <option value="top_rated">Top Rated</option>
      </select>
    </form>
  );
}
