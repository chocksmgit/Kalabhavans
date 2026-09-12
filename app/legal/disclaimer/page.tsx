import type { Metadata } from "next";

export const metadata: Metadata = { title: "Disclaimer" };

export default function DisclaimerPage() {
  return (
    <div className="mx-auto max-w-2xl px-4 py-14 sm:px-6">
      <h1 className="font-display text-3xl font-semibold text-ink-900">Disclaimer</h1>
      <p className="mt-6 leading-relaxed text-ink-700">
        The dishes, ingredients, and images referenced on this site for the initial seed catalog
        (all tagged <strong>Owner: Internet</strong> in our catalog) were found on the internet.
        Kalabhavans does not claim ownership or authorship of these dishes, their traditional
        recipes, or their regional culinary heritage &mdash; they belong to the diverse communities
        and cultures of every state and country they come from, across the world.
      </p>
      <p className="mt-4 leading-relaxed text-ink-700">
        Recipes submitted by members are owned and attributed to the member who shared them.
      </p>
      <p className="mt-4 leading-relaxed text-ink-700">
        Recipes on this site are shared for inspiration and home cooking. Try them at your own risk
        &mdash; Kalabhavans is not responsible for any errors, omissions, allergic reactions, or
        outcomes from preparing or consuming any dish made using recipes found here. Always use your
        own judgment regarding ingredients, food safety, and dietary or allergy needs.
      </p>
    </div>
  );
}
