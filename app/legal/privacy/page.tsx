import type { Metadata } from "next";

export const metadata: Metadata = { title: "Privacy Policy" };

export default function PrivacyPage() {
  return (
    <div className="mx-auto max-w-2xl px-4 py-14 sm:px-6">
      <h1 className="font-display text-3xl font-semibold text-ink-900">Privacy Policy</h1>
      <p className="mt-4 text-sm text-ink-400">
        Draft placeholder — this is a starting point, not legal advice. Have a lawyer review and
        finalize this before public launch, and confirm what it says matches what the site actually
        does before publishing.
      </p>

      <div className="mt-6 space-y-4 leading-relaxed text-ink-700">
        <h2 className="font-display text-lg font-semibold text-ink-900">What we collect</h2>
        <p>
          When you sign up, we collect your first and last name, email address (required), and
          optionally your phone number, gender, age group, and address. We use your email to manage
          your account, verify sign-up, and handle password resets.
        </p>
        <h2 className="font-display text-lg font-semibold text-ink-900">What we don&rsquo;t do</h2>
        <p>
          We don&rsquo;t sell your personal information. We don&rsquo;t share your email or phone
          number publicly &mdash; your public profile only shows your name as the Owner of recipes,
          ratings, and comments you post.
        </p>
        <h2 className="font-display text-lg font-semibold text-ink-900">Cookies</h2>
        <p>
          We use a session cookie to keep you signed in. We don&rsquo;t currently use third-party
          advertising or tracking cookies.
        </p>
        <h2 className="font-display text-lg font-semibold text-ink-900">Your choices</h2>
        <p>
          You can edit or delete your recipes, ratings, and comments from your account dashboard at
          any time. Contact us to request a copy of your data or full account deletion.
        </p>
      </div>
    </div>
  );
}
