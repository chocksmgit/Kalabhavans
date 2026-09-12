import { prisma } from "./prisma";
import type { ContinentValue } from "./geo";
import type { DietValue } from "./dish-classify";

// Minimum number of ratings before a dish can appear in the Top Rated
// ticker/list — prevents one early 5-star vote from dominating (see
// kalabhavans-website-plan.md section 6). Note this is a *read-time* filter
// over the already-cached avgRating/ratingCount columns (see
// lib/rating-utils.ts) — those are only ever recomputed when a rating is
// written, never on a page read, so browsing the ticker or this list never
// triggers an aggregate query of its own.
export const MIN_RATINGS_FOR_TOP_RATED = 5;

const ownerSelect = {
  ownerLabel: true,
  owner: { select: { firstName: true, lastName: true } },
} as const;

const cardSelect = {
  slug: true,
  title: true,
  continent: true,
  country: true,
  region: true,
  diet: true,
  isStreetFood: true,
  imageUrl: true,
  avgRating: true,
  ratingCount: true,
  ...ownerSelect,
} as const;

export async function getTopRated(limit = 10) {
  return prisma.recipe.findMany({
    where: { ratingCount: { gte: MIN_RATINGS_FOR_TOP_RATED } },
    orderBy: { avgRating: "desc" },
    take: limit,
    select: { slug: true, title: true, avgRating: true },
  });
}

export async function getFeatured(limit = 8) {
  return prisma.recipe.findMany({
    orderBy: { originalAt: "desc" },
    take: limit,
    select: cardSelect,
  });
}

export type RecipeSearchFacets = {
  q?: string;
  continent?: ContinentValue;
  country?: string;
  region?: string;
  diet?: DietValue;
  difficulty?: "easy" | "medium" | "hard";
  streetFoodOnly?: boolean;
  sort?: "newest" | "top_rated";
};

/**
 * Faceted search: every facet below is combined with AND, so a visitor can
 * narrow by continent + country + region + diet + difficulty + street food +
 * free text all at once, rather than one filter replacing another (see the
 * "faceted search" recommendation in kalabhavans-website-plan.md section 6).
 * Also drives the Explore page's "Top Rated" sort, which is the crawlable,
 * always-reachable counterpart to the homepage ticker.
 */
export async function searchRecipes({
  q,
  continent,
  country,
  region,
  diet,
  difficulty,
  streetFoodOnly,
  sort = "newest",
}: RecipeSearchFacets) {
  return prisma.recipe.findMany({
    where: {
      AND: [
        continent ? { continent } : {},
        country ? { country } : {},
        region ? { region } : {},
        diet ? { diet } : {},
        difficulty ? { difficulty } : {},
        streetFoodOnly ? { isStreetFood: true } : {},
        q
          ? {
              OR: [
                { title: { contains: q, mode: "insensitive" } },
                { description: { contains: q, mode: "insensitive" } },
                { ingredients: { some: { name: { contains: q, mode: "insensitive" } } } },
              ],
            }
          : {},
      ],
    },
    orderBy: sort === "top_rated" ? { avgRating: "desc" } : { originalAt: "desc" },
    take: 60,
    select: cardSelect,
  });
}

export async function getAllContinents(): Promise<ContinentValue[]> {
  const rows = await prisma.recipe.findMany({
    distinct: ["continent"],
    select: { continent: true },
    orderBy: { continent: "asc" },
  });
  return rows.map((r) => r.continent as ContinentValue);
}

export async function getAllCountries(continent?: ContinentValue): Promise<string[]> {
  const rows = await prisma.recipe.findMany({
    where: continent ? { continent } : {},
    distinct: ["country"],
    select: { country: true },
    orderBy: { country: "asc" },
  });
  return rows.map((r) => r.country);
}

export async function getAllRegions(country?: string): Promise<string[]> {
  const rows = await prisma.recipe.findMany({
    where: { region: { not: null }, ...(country ? { country } : {}) },
    distinct: ["region"],
    select: { region: true },
    orderBy: { region: "asc" },
  });
  return rows.map((r) => r.region).filter((r): r is string => r !== null);
}

export async function getUserRating(userId: string, recipeId: string) {
  const rating = await prisma.rating.findUnique({
    where: { recipeId_userId: { recipeId, userId } },
    select: { score: true },
  });
  return rating?.score ?? null;
}

/**
 * Public cook profile: only ever exposes a member's name and their own
 * published recipes — never email, phone, address, gender, or age group,
 * none of which are anyone else's business. Powers the Owner byline link
 * (components/OwnerByline.tsx) turning attribution into discovery, per the
 * recommendation in kalabhavans-website-plan.md section 6.
 */
export async function getPublicCookProfile(userId: string) {
  const user = await prisma.user.findUnique({
    where: { id: userId },
    select: { id: true, firstName: true, lastName: true },
  });
  if (!user) return null;

  const recipes = await prisma.recipe.findMany({
    where: { ownerId: userId },
    orderBy: { originalAt: "desc" },
    select: cardSelect,
  });

  return { user, recipes };
}

export async function getRecipeBySlug(slug: string) {
  return prisma.recipe.findUnique({
    where: { slug },
    include: {
      ingredients: { orderBy: { sortOrder: "asc" } },
      steps: { orderBy: { stepNumber: "asc" } },
      owner: { select: { id: true, firstName: true, lastName: true } },
      comments: {
        orderBy: { createdAt: "desc" },
        include: { user: { select: { id: true, firstName: true, lastName: true } } },
      },
      // Only fetched to pair a comment with its author's rating for the
      // schema.org Review structured data (see app/recipe/[slug]/page.tsx) —
      // not rendered directly.
      ratings: { select: { userId: true, score: true } },
    },
  });
}
