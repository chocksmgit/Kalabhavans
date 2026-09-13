import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Our Mission",
  description: "Why Kalabhavans exists and what it is trying to do.",
};

export default function AboutPage() {
  return (
    <div className="mx-auto max-w-2xl px-4 py-14 sm:px-6">
      <h1 className="font-display bg-gradient-to-r from-violet-600 via-berry-600 to-chili-600 bg-clip-text text-3xl font-semibold text-transparent">
        Our Mission
      </h1>
      <p className="mt-6 leading-relaxed text-ink-700">
        Kalabhavans started as one family&rsquo;s effort to bring together and share the best dishes
        from across India &mdash; one state, one ingredient, one story at a time. We&rsquo;ve since
        opened it up to the whole world: there are no location constraints on the web, so there are
        none here. Anyone, from any state or country, is welcome to browse, cook, and share the
        everyday food and street food their own culture eats. We&rsquo;re not claiming to be the
        definitive word on any cuisine; this is simply our effort to celebrate the world&rsquo;s
        culinary diversity and make it easy for anyone, anywhere, to discover and try these dishes at
        home, entirely at their own will and pace.
      </p>
      <p className="mt-4 leading-relaxed text-ink-700">
        The catalog started with a set of dishes compiled from general information found on the
        internet (tagged <strong>Owner: Internet</strong> throughout the site) &mdash; a starting
        point, not a claim of authorship, now spanning dozens of countries across every populated
        continent. From here, it grows through the community: anyone can sign up and share their own
        family recipe, tagged with their name as its Owner and linked to a public profile of everything
        they&rsquo;ve shared, for others to discover, cook, rate, and discuss.
      </p>
      <p className="mt-4 leading-relaxed text-ink-700">
        See our <a href="/legal/disclaimer" className="text-saffron-600 hover:underline">full disclaimer</a>{" "}
        for important notes on trying recipes at your own risk.
      </p>
    </div>
  );
}
