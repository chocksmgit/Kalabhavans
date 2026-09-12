/** Read-only star display — used on recipe cards and the recipe detail header. */
export function RatingStarsDisplay({
  avgRating,
  ratingCount,
}: {
  avgRating: number;
  ratingCount: number;
}) {
  const rounded = Math.round(avgRating);

  return (
    <div className="flex items-center gap-1.5 text-sm" aria-label={`Rated ${avgRating.toFixed(1)} out of 5 from ${ratingCount} ratings`}>
      <span aria-hidden="true" className="text-saffron-500">
        {"★".repeat(rounded)}
        {"☆".repeat(5 - rounded)}
      </span>
      <span className="text-ink-500">
        {ratingCount > 0 ? `${avgRating.toFixed(1)} (${ratingCount})` : "No ratings yet"}
      </span>
    </div>
  );
}
