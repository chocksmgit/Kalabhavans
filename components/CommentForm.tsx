"use client";

import { useRouter } from "next/navigation";
import { useState, useTransition } from "react";

export default function CommentForm({
  recipeId,
  isLoggedIn,
}: {
  recipeId: string;
  isLoggedIn: boolean;
}) {
  const [body, setBody] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [isPending, startTransition] = useTransition();
  const router = useRouter();

  if (!isLoggedIn) {
    return (
      <p className="text-sm text-ink-500">
        <a href="/login" className="font-medium text-saffron-600 hover:underline">
          Log in
        </a>{" "}
        to leave a comment.
      </p>
    );
  }

  function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    startTransition(async () => {
      const res = await fetch("/api/comments", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ recipeId, body }),
      });
      if (!res.ok) {
        const data = await res.json().catch(() => null);
        setError(data?.error ?? "Couldn't post your comment. Please try again.");
        return;
      }
      setBody("");
      router.refresh();
    });
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-2">
      <label htmlFor="comment-body" className="sr-only">
        Add a comment
      </label>
      <textarea
        id="comment-body"
        value={body}
        onChange={(e) => setBody(e.target.value)}
        required
        maxLength={2000}
        rows={3}
        placeholder="Tried this recipe? Share how it went..."
        className="w-full rounded-lg border border-ink-100 p-3 text-sm focus:border-saffron-500 focus:outline-none"
      />
      {error && <p className="text-sm text-chili-600">{error}</p>}
      <button
        type="submit"
        disabled={isPending || body.trim().length === 0}
        className="rounded-full bg-gradient-to-r from-saffron-500 via-chili-500 to-berry-600 px-4 py-2 text-sm font-medium text-white hover:brightness-110 disabled:opacity-50"
      >
        {isPending ? "Posting..." : "Post Comment"}
      </button>
    </form>
  );
}
