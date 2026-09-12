import type { Metadata } from "next";
import { redirect } from "next/navigation";
import { getCurrentUser } from "@/lib/auth";
import RecipeForm from "@/components/RecipeForm";
import { allCountryNames } from "@/lib/geo";

export const metadata: Metadata = { title: "Submit a Recipe" };

export default async function SubmitRecipePage() {
  const user = await getCurrentUser();
  if (!user) redirect("/login?next=/submit");

  return (
    <div className="mx-auto max-w-2xl px-4 py-10 sm:px-6">
      <h1 className="font-display text-3xl font-semibold text-ink-900">Share Your Recipe</h1>
      <p className="mt-2 text-ink-600">
        From any country, any cuisine — a photo is required. Your recipe will be credited to{" "}
        <strong>{user.firstName} {user.lastName}</strong> and published immediately.
      </p>
      <div className="mt-8">
        <RecipeForm countries={allCountryNames()} />
      </div>
    </div>
  );
}
