"use client";

import { useState, useTransition } from "react";

/**
 * Interactive 1-5 star submit widget for logged-in members. Posts to
 * /api/ratings, which resolves the current user from the session (never from
 * client input) and upserts one rating per user per recipe.
 */
export default function RatingForm({
  recipeId,
  initialScore,
  isLoggedIn,
}: {
  recipeId: string;
  initialScore: number | null;
  isLoggedIn: boolean;
}) {
  const [score, setScore] = useState(initialScore ?? 0);
  const [hovered, setHovered] = useState<number | null>(null);
  const [isPending, startTransition] = useTransition();
  const [message, setMessage] = useState<string | null>(null);

  if (!isLoggedIn) {
    return (
      <p className="text-sm text-ink-500">
        <a href="/login" className="font-medium text-saffron-600 hover:underline">
          Log in
        </a>{" "}
        to rate this recipe.
      </p>
    );
  }

  function submitScore(value: number) {
    setScore(value);
    setMessage(null);
    startTransition(async () => {
      const res = await fetch("/api/ratings", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ recipeId, score: value }),
      });
      if (!res.ok) {
        const body = await res.json().catch(() => null);
        setMessage(body?.error ?? "Couldn't save your rating. Please try again.");
      } else {
        setMessage("Thanks for rating!");
      }
    });
  }

  return (
    <div>
      <div role="radiogroup" aria-label="Rate this recipe" className="flex gap-1">
        {[1, 2, 3, 4, 5].map((value) => (
          <button
            key={value}
            type="button"
            role="radio"
            aria-checked={score === value}
            aria-label={`${value} star${value > 1 ? "s" : ""}`}
            disabled={isPending}
            onMouseEnter={() => setHovered(value)}
            onMouseLeave={() => setHovered(null)}
            onClick={() => submitScore(value)}
            className="text-2xl text-saffron-500 disabled:opacity-50"
          >
            {(hovered ?? score) >= value ? "★" : "☆"}
          </button>
        ))}
      </div>
      {message && <p className="mt-1 text-xs text-ink-500">{message}</p>}
    </div>
  );
}
