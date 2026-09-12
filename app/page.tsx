import Link from "next/link";
import TopRatedTicker from "@/components/TopRatedTicker";
import RecipeCard from "@/components/RecipeCard";
import { getFeatured, getTopRated } from "@/lib/queries";

export default async function HomePage() {
  const [topRated, featured] = await Promise.all([getTopRated(), getFeatured()]);

  return (
    <>
      <TopRatedTicker items={topRated} />

      <section className="mx-auto max-w-6xl px-4 py-14 text-center sm:px-6">
        <h1 className="font-display text-4xl font-semibold text-ink-900 sm:text-5xl">
          Discover, cook, and share recipes from every corner of the world
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
            className="rounded-full bg-saffron-500 px-6 py-3 font-medium text-white shadow-sm hover:bg-saffron-600"
          >
            Explore Recipes
          </Link>
          <Link
            href="/submit"
            className="rounded-full border border-saffron-300 px-6 py-3 font-medium text-saffron-700 hover:bg-saffron-50"
          >
            Share Your Recipe
          </Link>
        </div>
      </section>

      <section className="mx-auto max-w-6xl px-4 pb-16 sm:px-6">
        <div className="mb-6 flex items-center justify-between">
          <h2 className="font-display text-2xl font-semibold text-ink-900">Recently Added</h2>
          <Link href="/explore" className="text-sm font-medium text-saffron-600 hover:underline">
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
