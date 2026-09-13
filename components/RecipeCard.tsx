import Image from "next/image";
import Link from "next/link";
import { RatingStarsDisplay } from "./RatingStars";
import { dietLabels, dietBadgeClasses } from "@/lib/dish-labels";

export type RecipeCardData = {
  slug: string;
  title: string;
  country: string;
  region: string | null;
  diet: string;
  isStreetFood: boolean;
  imageUrl: string;
  avgRating: number;
  ratingCount: number;
  ownerLabel: string | null;
  owner: { firstName: string; lastName: string } | null;
};

export default function RecipeCard({ recipe }: { recipe: RecipeCardData }) {
  const ownerName = recipe.owner ? `${recipe.owner.firstName} ${recipe.owner.lastName}` : recipe.ownerLabel ?? "Internet";
  const place = recipe.region ? `${recipe.country} · ${recipe.region}` : recipe.country;

  return (
    <Link
      href={`/recipe/${recipe.slug}`}
      className="group block overflow-hidden rounded-2xl border border-ink-100 bg-white shadow-sm transition hover:-translate-y-0.5 hover:shadow-lg hover:ring-2 hover:ring-saffron-300"
    >
      <div className="relative aspect-[4/3] w-full overflow-hidden bg-ink-100">
        <Image
          src={recipe.imageUrl}
          alt={recipe.title}
          fill
          sizes="(min-width: 1024px) 25vw, (min-width: 640px) 33vw, 100vw"
          className="object-cover transition group-hover:scale-105"
        />
        {recipe.isStreetFood && (
          <span className="absolute left-2 top-2 rounded-full bg-gradient-to-r from-berry-500 to-violet-600 px-2 py-0.5 text-[10px] font-semibold uppercase tracking-wide text-white shadow-sm">
            Street Food
          </span>
        )}
      </div>
      <div className="p-4">
        <p className="text-xs font-semibold uppercase tracking-wide text-saffron-600">{place}</p>
        <h3 className="mt-1 font-display text-lg font-semibold text-ink-900">{recipe.title}</h3>
        <div className="mt-2">
          <RatingStarsDisplay avgRating={recipe.avgRating} ratingCount={recipe.ratingCount} />
        </div>
        <div className="mt-2 flex items-center justify-between text-xs text-ink-400">
          <span>Owner: {ownerName}</span>
          <span
            className={`rounded-full px-2 py-0.5 font-semibold ${
              dietBadgeClasses[recipe.diet as keyof typeof dietBadgeClasses] ??
              "bg-leaf-100 text-leaf-700"
            }`}
          >
            {dietLabels[recipe.diet as keyof typeof dietLabels] ?? recipe.diet}
          </span>
        </div>
      </div>
    </Link>
  );
}
