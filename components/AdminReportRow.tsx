"use client";

import { useRouter } from "next/navigation";
import { useTransition } from "react";

export default function AdminReportRow({
  reportId,
  label,
  href,
  reason,
  reporterName,
}: {
  reportId: string;
  label: string;
  href: string;
  reason: string;
  reporterName: string;
}) {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();

  function act(action: "dismiss" | "remove") {
    if (action === "remove" && !confirm("Remove this content? This can't be undone.")) return;
    startTransition(async () => {
      const res = await fetch(`/api/admin/reports/${reportId}`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ action }),
      });
      if (res.ok) router.refresh();
    });
  }

  return (
    <li className="flex flex-wrap items-center justify-between gap-3 rounded-xl border border-ink-100 bg-white p-4">
      <div>
        <a href={href} className="font-medium text-ink-900 hover:underline">
          {label}
        </a>
        <p className="text-sm text-ink-500">Reported by {reporterName}: &ldquo;{reason}&rdquo;</p>
      </div>
      <div className="flex gap-2">
        <button
          type="button"
          disabled={isPending}
          onClick={() => act("dismiss")}
          className="rounded-full border border-ink-200 px-3 py-1 text-sm text-ink-600 hover:bg-ink-50"
        >
          Dismiss
        </button>
        <button
          type="button"
          disabled={isPending}
          onClick={() => act("remove")}
          className="rounded-full bg-chili-600 px-3 py-1 text-sm text-white hover:bg-chili-500"
        >
          Remove
        </button>
      </div>
    </li>
  );
}
