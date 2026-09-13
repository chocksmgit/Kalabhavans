import type { Metadata } from "next";
import Image from "next/image";
import Link from "next/link";
import { notFound } from "next/navigation";
import { getCurrentUser } from "@/lib/auth";
import { getRecipeBySlug, getUserRating } from "@/lib/queries";
import { RatingStarsDisplay } from "@/components/RatingStars";
import RatingForm from "@/components/RatingForm";
import OwnerByline from "@/components/OwnerByline";
import TimestampDisplay from "@/components/TimestampDisplay";
import CommentList from "@/components/CommentList";
import CommentForm from "@/components/CommentForm";
import ReportButton from "@/components/ReportButton";
import { dietLabels, dietBadgeClasses } from "@/lib/dish-labels";

type Props = { params: Promise<{ slug: string }> };

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { slug } = await params;
  const recipe = await getRecipeBySlug(slug);
  if (!recipe) return {};

  const place = recipe.region ? `${recipe.region}, ${recipe.country}` : recipe.country;
  return {
    title: recipe.title,
    description: recipe.description ?? `${recipe.title} — a ${place} recipe from Kalabhavans.`,
    openGraph: {
      title: recipe.title,
      description: recipe.description ?? undefined,
      images: [{ url: recipe.imageUrl }],
    },
  };
}

export default async function RecipeDetailPage({ params }: Props) {
  const { slug } = await params;
  const [recipe, user] = await Promise.all([getRecipeBySlug(slug), getCurrentUser()]);

  if (!recipe) notFound();

  const userRating = user ? await getUserRating(user.id, recipe.id) : null;
  const place = recipe.region ? `${recipe.country} — ${recipe.region}` : recipe.country;

  // Reviews for structured data: a comment only becomes a schema.org Review
  // when the SAME user also left a star rating on this recipe (we use their
  // real rating as reviewRating rather than inventing one) — see the
  // "Review structured data" recommendation in kalabhavans-website-plan.md
  // section 6. Comments without a matching rating still render normally in
  // CommentList below; they're just not claimed as a Review to search
  // engines, since a schema.org Review without a rating is a weaker signal
  // for recipe rich results anyway.
  const ratingByUserId = new Map(recipe.ratings.map((r) => [r.userId, r.score]));
  const reviews = recipe.comments
    .filter((c) => ratingByUserId.has(c.user.id))
    .slice(0, 20)
    .map((c) => ({
      "@type": "Review",
      author: { "@type": "Person", name: `${c.user.firstName} ${c.user.lastName}` },
      datePublished: c.createdAt.toISOString(),
      reviewBody: c.body,
      reviewRating: {
        "@type": "Rating",
        ratingValue: ratingByUserId.get(c.user.id),
        bestRating: 5,
        worstRating: 1,
      },
    }));

  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "Recipe",
    name: recipe.title,
    image: [recipe.imageUrl],
    description: recipe.description ?? undefined,
    recipeYield: recipe.servings ? `${recipe.servings} servings` : undefined,
    recipeCategory: recipe.region ?? recipe.country,
    recipeCuisine: recipe.country,
    keywords: recipe.isStreetFood ? "street food" : undefined,
    suitableForDiet:
      recipe.diet === "vegetarian"
        ? "https://schema.org/VegetarianDiet"
        : recipe.diet === "vegan"
          ? "https://schema.org/VeganDiet"
          : undefined,
    datePublished: recipe.originalAt.toISOString(),
    dateModified: recipe.updatedAt.toISOString(),
    recipeIngredient: recipe.ingredients.map((i) => (i.quantity ? `${i.quantity} ${i.name}` : i.name)),
    recipeInstructions: recipe.steps.map((s) => ({
      "@type": "HowToStep",
      text: s.instruction,
    })),
    author: {
      "@type": recipe.owner ? "Person" : "Organization",
      name: recipe.owner ? `${recipe.owner.firstName} ${recipe.owner.lastName}` : "Internet",
    },
    ...(recipe.ratingCount > 0
      ? {
          aggregateRating: {
            "@type": "AggregateRating",
            ratingValue: recipe.avgRating.toFixed(1),
            ratingCount: recipe.ratingCount,
          },
        }
      : {}),
    ...(reviews.length > 0 ? { review: reviews } : {}),
  };

  return (
    <div className="mx-auto max-w-4xl px-4 py-10 sm:px-6">
      {/* eslint-disable-next-line react/no-danger */}
      <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }} />

      <div className="flex flex-wrap items-center gap-2">
        <p className="text-xs font-semibold uppercase tracking-wide text-saffron-600">{place}</p>
        {recipe.isStreetFood && (
          <span className="rounded-full bg-gradient-to-r from-berry-500 to-violet-600 px-2 py-0.5 text-[10px] font-semibold uppercase tracking-wide text-white">
            Street Food
          </span>
        )}
        <span
          className={`rounded-full px-2 py-0.5 text-[10px] font-semibold uppercase tracking-wide ${
            dietBadgeClasses[recipe.diet as keyof typeof dietBadgeClasses] ??
            "bg-leaf-100 text-leaf-700"
          }`}
        >
          {dietLabels[recipe.diet as keyof typeof dietLabels] ?? recipe.diet}
        </span>
      </div>
      <h1 className="mt-1 font-display text-3xl font-semibold text-ink-900 sm:text-4xl">{recipe.title}</h1>

      <div className="mt-3 flex flex-wrap items-center gap-4">
        <OwnerByline ownerLabel={recipe.ownerLabel} owner={recipe.owner} />
        <TimestampDisplay originalAt={recipe.originalAt} updatedAt={recipe.updatedAt} />
      </div>

      <div className="relative mt-6 aspect-video w-full overflow-hidden rounded-2xl bg-ink-100">
        <Image src={recipe.imageUrl} alt={recipe.title} fill className="object-cover" priority />
      </div>

      <div className="mt-6 flex flex-wrap items-center justify-between gap-4 rounded-xl border border-ink-100 bg-white p-4">
        <div>
          <RatingStarsDisplay avgRating={recipe.avgRating} ratingCount={recipe.ratingCount} />
          <div className="mt-2 flex gap-4 text-sm text-ink-500">
            {recipe.prepTimeMin && <span>Prep: {recipe.prepTimeMin} min</span>}
            {recipe.cookTimeMin && <span>Cook: {recipe.cookTimeMin} min</span>}
            {recipe.servings && <span>Serves: {recipe.servings}</span>}
            <span className="capitalize">Difficulty: {recipe.difficulty}</span>
          </div>
        </div>
        <div className="flex items-center gap-3">
          <RatingForm recipeId={recipe.id} initialScore={userRating} isLoggedIn={!!user} />
          {user && <ReportButton recipeId={recipe.id} />}
        </div>
      </div>

      {recipe.description && <p className="mt-6 text-ink-700">{recipe.description}</p>}

      <div className="mt-10 flex items-center justify-between">
        <h2 className="sr-only">Ingredients and Steps</h2>
        <Link
          href={`/recipe/${recipe.slug}/cook`}
          className="inline-flex items-center gap-2 rounded-full bg-gradient-to-r from-violet-600 to-berry-600 px-5 py-2.5 text-sm font-semibold text-white shadow-sm hover:brightness-110"
        >
          👨‍🍳 Cook Mode
        </Link>
        <span className="text-xs text-ink-400">Big text, no distractions — for the stove</span>
      </div>

      <div className="mt-6 grid gap-10 sm:grid-cols-3">
        <section className="sm:col-span-1">
          <h2 className="font-display text-xl font-semibold text-ink-900">Ingredients</h2>
          <ul className="mt-3 space-y-2 text-sm text-ink-700">
            {recipe.ingredients.map((ing) => (
              <li key={ing.id} className="flex gap-2">
                <span aria-hidden="true">•</span>
                <span>
                  {ing.quantity && <strong className="font-medium">{ing.quantity} </strong>}
                  {ing.name}
                </span>
              </li>
            ))}
          </ul>
        </section>

        <section className="sm:col-span-2">
          <h2 className="font-display text-xl font-semibold text-ink-900">Steps</h2>
          <ol className="mt-3 space-y-4 text-sm text-ink-700">
            {recipe.steps.map((step) => (
              <li key={step.id} className="flex gap-3">
                <span className="flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-saffron-100 text-xs font-semibold text-saffron-700">
                  {step.stepNumber}
                </span>
                <span>{step.instruction}</span>
              </li>
            ))}
          </ol>
        </section>
      </div>

      <p className="mt-10 rounded-xl bg-ink-50 p-4 text-xs leading-relaxed text-ink-500">
        <strong>Disclaimer:</strong> This recipe is shared for inspiration and home cooking. Try it
        at your own risk &mdash; Kalabhavans is not responsible for any errors, omissions, allergic
        reactions, or outcomes from preparing or consuming this dish. Always use your own judgment
        regarding ingredients, food safety, and dietary or allergy needs.
      </p>

      <section className="mt-10">
        <h2 className="font-display text-xl font-semibold text-ink-900">Comments</h2>
        <div className="mt-4">
          <CommentForm recipeId={recipe.id} isLoggedIn={!!user} />
        </div>
        <div className="mt-6">
          <CommentList comments={recipe.comments} isLoggedIn={!!user} />
        </div>
      </section>
    </div>
  );
}
