import type { Metadata } from "next";
import Link from "next/link";
import { redirect } from "next/navigation";
import { getCurrentUser } from "@/lib/auth";
import { prisma } from "@/lib/prisma";
import { formatDateTime } from "@/lib/format";
import DeleteRecipeButton from "@/components/DeleteRecipeButton";

export const metadata: Metadata = { title: "My Account" };

export default async function DashboardPage() {
  const user = await getCurrentUser();
  if (!user) redirect("/login?next=/dashboard");

  const [myRecipes, myRatings, myComments] = await Promise.all([
    prisma.recipe.findMany({
      where: { ownerId: user.id },
      orderBy: { originalAt: "desc" },
      select: { id: true, slug: true, title: true, country: true, region: true, avgRating: true, ratingCount: true },
    }),
    prisma.rating.findMany({
      where: { userId: user.id },
      orderBy: { updatedAt: "desc" },
      include: { recipe: { select: { slug: true, title: true } } },
    }),
    prisma.comment.findMany({
      where: { userId: user.id },
      orderBy: { createdAt: "desc" },
      include: { recipe: { select: { slug: true, title: true } } },
    }),
  ]);

  return (
    <div className="mx-auto max-w-4xl px-4 py-10 sm:px-6">
      <h1 className="font-display text-3xl font-semibold text-ink-900">My Account</h1>
      <p className="mt-1 text-ink-600">
        {user.firstName} {user.lastName} &middot; {user.email}
        {user.role === "admin" && <span className="ml-2 rounded-full bg-chili-100 px-2 py-0.5 text-xs font-medium text-chili-700">Admin</span>}
      </p>

      <section className="mt-10">
        <div className="flex items-center justify-between">
          <h2 className="font-display text-xl font-semibold text-ink-900">My Recipes</h2>
          <Link href="/submit" className="text-sm font-medium text-saffron-600 hover:underline">
            + Submit a recipe
          </Link>
        </div>
        {myRecipes.length === 0 ? (
          <p className="mt-3 text-sm text-ink-500">You haven&rsquo;t submitted any recipes yet.</p>
        ) : (
          <ul className="mt-4 divide-y divide-ink-100 rounded-xl border border-ink-100 bg-white">
            {myRecipes.map((r) => (
              <li key={r.id} className="flex items-center justify-between gap-3 p-4">
                <div>
                  <Link href={`/recipe/${r.slug}`} className="font-medium text-ink-900 hover:underline">
                    {r.title}
                  </Link>
                  <p className="text-xs text-ink-400">
                    {r.region ? `${r.country} · ${r.region}` : r.country} &middot;{" "}
                    {r.ratingCount > 0 ? `${r.avgRating.toFixed(1)}★ (${r.ratingCount})` : "No ratings yet"}
                  </p>
                </div>
                <DeleteRecipeButton recipeId={r.id} />
              </li>
            ))}
          </ul>
        )}
      </section>

      <section className="mt-10">
        <h2 className="font-display text-xl font-semibold text-ink-900">My Ratings</h2>
        {myRatings.length === 0 ? (
          <p className="mt-3 text-sm text-ink-500">You haven&rsquo;t rated any recipes yet.</p>
        ) : (
          <ul className="mt-3 space-y-1 text-sm">
            {myRatings.map((r) => (
              <li key={r.id}>
                <Link href={`/recipe/${r.recipe.slug}`} className="text-ink-700 hover:underline">
                  {r.recipe.title}
                </Link>
                <span className="text-ink-400"> — {r.score}★</span>
              </li>
            ))}
          </ul>
        )}
      </section>

      <section className="mt-10">
        <h2 className="font-display text-xl font-semibold text-ink-900">My Comments</h2>
        {myComments.length === 0 ? (
          <p className="mt-3 text-sm text-ink-500">You haven&rsquo;t commented on any recipes yet.</p>
        ) : (
          <ul className="mt-3 space-y-3 text-sm">
            {myComments.map((c) => {
              const posted = formatDateTime(c.createdAt);
              return (
                <li key={c.id} className="rounded-lg border border-ink-100 bg-white p-3">
                  <Link href={`/recipe/${c.recipe.slug}`} className="font-medium text-ink-800 hover:underline">
                    {c.recipe.title}
                  </Link>
                  <p className="mt-1 text-ink-600">{c.body}</p>
                  <p className="mt-1 text-xs text-ink-400">
                    {posted.date} at {posted.time}
                  </p>
                </li>
              );
            })}
          </ul>
        )}
      </section>

      <p className="mt-10 text-xs text-ink-400">
        Favorites/saved recipes are planned for a later phase — see the project roadmap.
      </p>
    </div>
  );
}
