"use client";

import { useState } from "react";
import Link from "next/link";

export type TickerItem = {
  slug: string;
  title: string;
  avgRating: number;
};

/**
 * Auto-scrolling "Top Rated" marquee for the homepage. Per the accessibility
 * decision in kalabhavans-website-plan.md section 6:
 *  - pausable (button + hover/focus pause) so it isn't perpetual motion the
 *    viewer can't stop (WCAG 2.2 SC 2.2.2),
 *  - honors prefers-reduced-motion via the .ticker-track CSS rule,
 *  - is NOT the only way to reach top-rated dishes — the Explore page also
 *    offers a normal sortable "Top Rated" view of the same data.
 * The item list is duplicated once so the CSS scroll-and-loop is seamless.
 */
export default function TopRatedTicker({ items }: { items: TickerItem[] }) {
  const [paused, setPaused] = useState(false);

  if (items.length === 0) return null;

  const track = [...items, ...items];

  return (
    <div
      className="relative overflow-hidden border-y border-saffron-100 bg-saffron-50 py-2"
      onMouseEnter={() => setPaused(true)}
      onMouseLeave={() => setPaused(false)}
      onFocus={() => setPaused(true)}
      onBlur={() => setPaused(false)}
    >
      <div className="mx-auto flex max-w-6xl items-center gap-3 px-4 sm:px-6">
        <span className="shrink-0 text-xs font-semibold uppercase tracking-wide text-saffron-700">
          🔥 Top Rated
        </span>
        <div className="flex-1 overflow-hidden">
          <div className="ticker-track flex w-max gap-8" data-paused={paused}>
            {track.map((item, i) => (
              <Link
                key={`${item.slug}-${i}`}
                href={`/recipe/${item.slug}`}
                className="whitespace-nowrap text-sm font-medium text-ink-700 hover:text-saffron-700 hover:underline"
              >
                {item.title} &middot; {item.avgRating.toFixed(1)}★
              </Link>
            ))}
          </div>
        </div>
        <button
          type="button"
          onClick={() => setPaused((p) => !p)}
          aria-pressed={paused}
          className="shrink-0 rounded-full border border-saffron-200 px-2 py-1 text-xs font-medium text-saffron-700 hover:bg-saffron-100"
        >
          {paused ? "▶ Play" : "⏸ Pause"}
        </button>
      </div>
    </div>
  );
}
