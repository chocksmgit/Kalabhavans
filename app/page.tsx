import Link from "next/link";
import TopRatedTicker from "@/components/TopRatedTicker";
import RecipeCard from "@/components/RecipeCard";
import { getFeatured, getTopRated } from "@/lib/queries";

export default async function HomePage() {
  const [topRated, featured] = await Promise.all([getTopRated(), getFeatured()]);

  return (
    <>
      <TopRatedTicker items={topRated} />

      <section className="relative overflow-hidden bg-gradient-to-br from-saffron-50 via-berry-50 to-violet-50">
        <div
          aria-hidden="true"
          className="pointer-events-none absolute -left-16 -top-16 h-64 w-64 rounded-full bg-sunny-300/40 blur-3xl"
        />
        <div
          aria-hidden="true"
          className="pointer-events-none absolute -bottom-20 -right-10 h-72 w-72 rounded-full bg-teal-300/40 blur-3xl"
        />
        <div className="relative mx-auto max-w-6xl px-4 py-14 text-center sm:px-6">
          <h1 className="font-display text-4xl font-semibold text-ink-900 sm:text-5xl">
            Discover, cook, and share recipes from{" "}
            <span className="bg-gradient-to-r from-saffron-600 via-chili-600 to-berry-600 bg-clip-text text-transparent">
              every corner of the world
            </span>
          </h1>
          <p className="mx-auto mt-4 max-w-2xl text-ink-600">
            Kalabhavans started as one family&rsquo;s effort to bring together India&rsquo;s regional
            dishes &mdash; and it&rsquo;s now open to every state and country. There are no borders on
            the web, so there are none here either: this is our attempt to help people everywhere
            collaborate on and enjoy each other&rsquo;s home cooking, everyday food, and street food,
            one dish, one ingredient, one story at a time. We&rsquo;re not claiming to be the definitive
            word on any cuisine; this is simply our effort to celebrate the world&rsquo;s culinary
            diversity and make it easy for anyone, anywhere, to discover and try these dishes at home,
            entirely at their own will and pace.
          </p>
          <div className="mt-8 flex flex-wrap justify-center gap-4">
            <Link
              href="/explore"
              className="rounded-full bg-gradient-to-r from-saffron-500 via-chili-500 to-berry-600 px-6 py-3 font-semibold text-white shadow-md transition hover:brightness-110"
            >
              Explore Recipes
            </Link>
            <Link
              href="/submit"
              className="rounded-full border-2 border-violet-400 bg-white px-6 py-3 font-semibold text-violet-700 shadow-sm hover:bg-violet-50"
            >
              Share Your Recipe
            </Link>
          </div>
        </div>
      </section>

      <section className="mx-auto max-w-6xl px-4 py-16 sm:px-6">
        <div className="mb-6 flex items-center justify-between">
          <h2 className="font-display text-2xl font-semibold text-ink-900">
            <span className="mr-2" aria-hidden="true">
              🌟
            </span>
            Recently Added
          </h2>
          <Link href="/explore" className="text-sm font-semibold text-teal-700 hover:underline">
            View all →
          </Link>
        </div>
        <div className="grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-4">
          {featured.map((recipe) => (
            <RecipeCard key={recipe.slug} recipe={recipe} />
          ))}
        </div>
      </section>
    </>
  );
}
