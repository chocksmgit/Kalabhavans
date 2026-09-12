"use client";

import { useState, useTransition } from "react";

/**
 * The report/flag safety valve required alongside auto-publish (see
 * kalabhavans-website-plan.md section 6). Shown on both recipes and
 * comments. A logged-in member can report; an admin reviews it in /admin.
 */
export default function ReportButton({
  recipeId,
  commentId,
}: {
  recipeId?: string;
  commentId?: string;
}) {
  const [open, setOpen] = useState(false);
  const [reason, setReason] = useState("");
  const [done, setDone] = useState(false);
  const [isPending, startTransition] = useTransition();

  if (done) {
    return <span className="text-xs text-ink-400">Reported — thank you.</span>;
  }

  if (!open) {
    return (
      <button
        type="button"
        onClick={() => setOpen(true)}
        className="text-xs text-ink-400 underline hover:text-chili-600"
      >
        Report
      </button>
    );
  }

  function submit(e: React.FormEvent) {
    e.preventDefault();
    startTransition(async () => {
      const res = await fetch("/api/reports", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ recipeId, commentId, reason }),
      });
      if (res.ok) setDone(true);
    });
  }

  return (
    <form onSubmit={submit} className="flex items-center gap-2">
      <input
        type="text"
        value={reason}
        onChange={(e) => setReason(e.target.value)}
        placeholder="What's wrong?"
        required
        className="w-40 rounded border border-ink-200 px-2 py-0.5 text-xs"
      />
      <button type="submit" disabled={isPending} className="text-xs font-medium text-chili-600">
        Submit
      </button>
      <button type="button" onClick={() => setOpen(false)} className="text-xs text-ink-400">
        Cancel
      </button>
    </form>
  );
}
