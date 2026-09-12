import type { Metadata } from "next";

export const metadata: Metadata = { title: "Terms of Use" };

export default function TermsPage() {
  return (
    <div className="mx-auto max-w-2xl px-4 py-14 sm:px-6">
      <h1 className="font-display text-3xl font-semibold text-ink-900">Terms of Use</h1>
      <p className="mt-4 text-sm text-ink-400">
        Draft placeholder — this is a starting point, not legal advice. Have a lawyer review and
        finalize this before public launch.
      </p>

      <div className="mt-6 space-y-4 leading-relaxed text-ink-700">
        <p>
          By creating an account or using Kalabhavans, you agree to these terms. If you don&rsquo;t
          agree, please don&rsquo;t use the site.
        </p>
        <h2 className="font-display text-lg font-semibold text-ink-900">Content you submit</h2>
        <p>
          When you submit a recipe, photo, comment, or rating, you confirm you have the right to
          share it, and you grant Kalabhavans a license to display it on the site. You remain the
          owner of what you submit, and it will be attributed to you.
        </p>
        <h2 className="font-display text-lg font-semibold text-ink-900">Community conduct</h2>
        <p>
          Recipes and comments publish immediately without pre-review. Don&rsquo;t post anything
          false, infringing, abusive, or unsafe. Use the Report link on any recipe or comment to flag
          content that shouldn&rsquo;t be here &mdash; our team reviews reports and removes content
          that violates these terms.
        </p>
        <h2 className="font-display text-lg font-semibold text-ink-900">No warranty</h2>
        <p>
          Recipes are shared for inspiration and home cooking, at your own risk. See our{" "}
          <a href="/legal/disclaimer" className="text-saffron-600 hover:underline">
            Disclaimer
          </a>{" "}
          for details.
        </p>
        <h2 className="font-display text-lg font-semibold text-ink-900">Changes</h2>
        <p>We may update these terms from time to time; continued use means you accept the changes.</p>
      </div>
    </div>
  );
}
