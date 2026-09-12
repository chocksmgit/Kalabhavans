import type { Metadata } from "next";

export const metadata: Metadata = { title: "Contact" };

export default function ContactPage() {
  return (
    <div className="mx-auto max-w-xl px-4 py-14 sm:px-6">
      <h1 className="font-display text-3xl font-semibold text-ink-900">Contact</h1>
      <p className="mt-4 text-ink-700">
        Questions, a recipe correction, or a content report you&rsquo;d rather send directly? Reach
        the site owners at{" "}
        <a href="mailto:hello@kalabhavans.com" className="text-saffron-600 hover:underline">
          hello@kalabhavans.com
        </a>
        .
      </p>
      <p className="mt-2 text-sm text-ink-400">
        (Update this address once your production mailbox is set up — see DEPLOYMENT.md.)
      </p>
    </div>
  );
}
