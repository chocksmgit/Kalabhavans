import type { Metadata } from "next";
import { notFound } from "next/navigation";
import RecipeCard from "@/components/RecipeCard";
import { getPublicCookProfile } from "@/lib/queries";

type Props = { params: Promise<{ id: string }> };

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { id } = await params;
  const profile = await getPublicCookProfile(id);
  if (!profile) return {};
  return { title: `${profile.user.firstName} ${profile.user.lastName}` };
}

/**
 * Public cook profile — what the Owner byline links to (see
 * components/OwnerByline.tsx). Deliberately shows only a name and a list of
 * the member's own published recipes; never email, phone, address, gender,
 * or age group, matching the same "public profile shows only name" line
 * already in the Privacy Policy (app/legal/privacy/page.tsx).
 */
export default async function CookProfilePage({ params }: Props) {
  const { id } = await params;
  const profile = await getPublicCookProfile(id);
  if (!profile) notFound();

  const { user, recipes } = profile;

  return (
    <div className="mx-auto max-w-6xl px-4 py-10 sm:px-6">
      <h1 className="font-display text-3xl font-semibold text-ink-900">
        {user.firstName} {user.lastName}
      </h1>
      <p className="mt-1 text-ink-500">
        {recipes.length} recipe{recipes.length === 1 ? "" : "s"} shared on Kalabhavans
      </p>

      {recipes.length === 0 ? (
        <p className="mt-10 text-ink-500">No recipes published yet.</p>
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
