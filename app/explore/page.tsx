import type { Metadata } from "next";
import { Suspense } from "react";
import RecipeCard from "@/components/RecipeCard";
import FilterBar from "@/components/FilterBar";
import { getAllContinents, getAllCountries, getAllRegions, searchRecipes } from "@/lib/queries";
import type { ContinentValue } from "@/lib/geo";
import type { DietValue } from "@/lib/dish-classify";
import { continentValues } from "@/lib/geo";
import { dietValues } from "@/lib/validations";

export const metadata: Metadata = {
  title: "Explore Recipes",
  description: "Browse recipes from every state and country by region, ingredient, or diet, or search for a specific dish.",
};

type SearchParams = Promise<{
  q?: string;
  continent?: string;
  country?: string;
  region?: string;
  diet?: string;
  difficulty?: string;
  street?: string;
  sort?: string;
}>;

function asContinent(value: string | undefined): ContinentValue | undefined {
  return continentValues.includes(value as ContinentValue) ? (value as ContinentValue) : undefined;
}

function asDiet(value: string | undefined): DietValue | undefined {
  return dietValues.includes(value as DietValue) ? (value as DietValue) : undefined;
}

function asDifficulty(value: string | undefined): "easy" | "medium" | "hard" | undefined {
  return value === "easy" || value === "medium" || value === "hard" ? value : undefined;
}

export default async function ExplorePage({ searchParams }: { searchParams: SearchParams }) {
  const params = await searchParams;
  const continent = asContinent(params.continent);
  const country = params.country || undefined;

  const [recipes, continents, countries, regions] = await Promise.all([
    searchRecipes({
      q: params.q,
      continent,
      country,
      region: params.region || undefined,
      diet: asDiet(params.diet),
      difficulty: asDifficulty(params.difficulty),
      streetFoodOnly: params.street === "1",
      sort: params.sort === "top_rated" ? "top_rated" : "newest",
    }),
    getAllContinents(),
    getAllCountries(continent),
    getAllRegions(country),
  ]);

  return (
    <div className="mx-auto max-w-6xl px-4 py-10 sm:px-6">
      <h1 className="font-display bg-gradient-to-r from-saffron-600 via-chili-600 to-berry-600 bg-clip-text text-3xl font-semibold text-transparent">
        Explore Recipes
      </h1>
      <p className="mt-2 max-w-2xl text-ink-600">
        Filter by continent, country, state/region, diet, or difficulty — combine as many as you
        like — or search for something specific.
      </p>

      <div className="mt-6">
        <Suspense>
          {/* Keyed by the current query string so every field (including the
              ones this render didn't touch) remounts with fresh defaultValues
              whenever the URL changes — otherwise the dropdowns/checkbox are
              uncontrolled and can visually keep a stale selection after
              "Clear filters" or after picking a new continent clears country
              and region under the hood. */}
          <FilterBar key={JSON.stringify(params)} continents={continents} countries={countries} regions={regions} />
        </Suspense>
      </div>

      {recipes.length === 0 ? (
        <p className="mt-10 text-ink-500">No recipes matched — try a different search or filter.</p>
      ) : (
        <div className="mt-8 grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-4">
          {recipes.map((recipe) => (
            <RecipeCard key={recipe.slug} recipe={recipe} />
          ))}
        </div>
      )}
    </div>
  );
}
