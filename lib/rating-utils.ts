/**
 * Pure helper for turning a Prisma `aggregate()` result on Rating into the
 * cached `avgRating`/`ratingCount` fields stored on Recipe. Pulled out as a
 * standalone function (rather than left inline in the API route) so the
 * rounding/zero-rating edge cases are unit-testable without a database.
 *
 * - No ratings yet (`count === 0`) → avgRating is 0, not null/NaN, so the
 *   UI never has to special-case a missing average.
 * - Otherwise, round to one decimal place (e.g. 4.3 stars) — Prisma's raw
 *   average can come back with long floating-point tails.
 */
export function deriveRatingAggregate(
  avgScore: number | null,
  count: number
): { avgRating: number; ratingCount: number } {
  if (count <= 0 || avgScore === null) {
    return { avgRating: 0, ratingCount: 0 };
  }
  return {
    avgRating: Math.round(avgScore * 10) / 10,
    ratingCount: count,
  };
}
