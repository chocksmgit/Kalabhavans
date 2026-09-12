import { describe, expect, it } from "vitest";
import { deriveRatingAggregate } from "@/lib/rating-utils";

describe("deriveRatingAggregate", () => {
  it("returns 0/0 when there are no ratings yet", () => {
    expect(deriveRatingAggregate(null, 0)).toEqual({ avgRating: 0, ratingCount: 0 });
  });

  it("treats a null average defensively as 0 even if count is non-zero", () => {
    // Shouldn't happen from Prisma in practice, but avgRating must never be
    // null/NaN — the Top Rated ticker and star display assume a number.
    expect(deriveRatingAggregate(null, 3)).toEqual({ avgRating: 0, ratingCount: 0 });
  });

  it("passes through a whole-number average unchanged", () => {
    expect(deriveRatingAggregate(4, 10)).toEqual({ avgRating: 4, ratingCount: 10 });
  });

  it("rounds to one decimal place", () => {
    // 13/3 = 4.333...
    expect(deriveRatingAggregate(4.3333333, 3)).toEqual({ avgRating: 4.3, ratingCount: 3 });
  });

  it("rounds .x5 up (round-half-up, matching Math.round)", () => {
    expect(deriveRatingAggregate(4.25, 4)).toEqual({ avgRating: 4.3, ratingCount: 4 });
  });

  it("keeps a single 5-star rating as exactly 5", () => {
    expect(deriveRatingAggregate(5, 1)).toEqual({ avgRating: 5, ratingCount: 1 });
  });

  it("never returns a negative count even if given one (defensive floor)", () => {
    expect(deriveRatingAggregate(3, -1)).toEqual({ avgRating: 0, ratingCount: 0 });
  });
});
