import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { getRecipeBySlug } from "@/lib/queries";

type Props = { params: Promise<{ slug: string }> };

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { slug } = await params;
  const recipe = await getRecipeBySlug(slug);
  return { title: recipe ? `${recipe.title} — Cook Mode` : "Cook Mode" };
}

/**
 * Distraction-free "cook mode": large text, no header/nav/sidebar/comments —
 * just ingredients and steps, meant to be readable at arm's length propped
 * up next to the stove on a phone. See the recommendation in
 * kalabhavans-website-plan.md section 6. The site's Header/Footer are hidden
 * on this route by components/ChromeGate.tsx (checked in RootLayout), so
 * this page only needs to worry about its own content.
 */
export default async function CookModePage({ params }: Props) {
  const { slug } = await params;
  const recipe = await getRecipeBySlug(slug);
  if (!recipe) notFound();

  return (
    <div className="mx-auto max-w-2xl px-4 py-6 sm:px-6">
      <div className="flex items-center justify-between gap-4">
        <Link
          href={`/recipe/${recipe.slug}`}
          className="text-sm font-medium text-saffron-600 hover:underline"
        >
          ← Exit Cook Mode
        </Link>
        {recipe.servings && <span className="text-sm text-ink-500">Serves {recipe.servings}</span>}
      </div>

      <h1 className="mt-4 font-display text-2xl font-semibold text-ink-900 sm:text-3xl">
        {recipe.title}
      </h1>

      <section className="mt-8">
        <h2 className="text-lg font-semibold text-ink-900">Ingredients</h2>
        <ul className="mt-4 space-y-3">
          {recipe.ingredients.map((ing) => (
            <li key={ing.id} className="flex gap-3 text-lg leading-relaxed text-ink-800">
              <span aria-hidden="true">•</span>
              <span>
                {ing.quantity && <strong className="font-semibold">{ing.quantity} </strong>}
                {ing.name}
              </span>
            </li>
          ))}
        </ul>
      </section>

      <section className="mt-10">
        <h2 className="text-lg font-semibold text-ink-900">Steps</h2>
        <ol className="mt-4 space-y-6">
          {recipe.steps.map((step) => (
            <li key={step.id} className="flex gap-4">
              <span className="flex h-9 w-9 shrink-0 items-center justify-center rounded-full bg-saffron-100 text-base font-semibold text-saffron-700">
                {step.stepNumber}
              </span>
              <span className="pt-1 text-xl leading-relaxed text-ink-900">{step.instruction}</span>
            </li>
          ))}
        </ol>
      </section>

      <p className="mt-12 text-center text-sm text-ink-400">
        <Link href={`/recipe/${recipe.slug}`} className="text-saffron-600 hover:underline">
          Back to full recipe
        </Link>
      </p>
    </div>
  );
}
