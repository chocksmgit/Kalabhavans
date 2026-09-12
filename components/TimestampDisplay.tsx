"use client";

import { useEffect, useState } from "react";
import { formatDateTime } from "@/lib/format";

/**
 * Renders Original and Updated Date/Time as DD/MM/CCYY + 24-hour HH:MM, per
 * the confirmed display format. Both values come from server-generated
 * `originalAt`/`updatedAt` columns (stored as UTC) — never user-entered.
 *
 * Now that the site is global rather than India-only, the displayed instant
 * is converted to the *viewer's* local timezone rather than fixed to one
 * timezone — see kalabhavans-website-plan.md section 6 ("store UTC, format
 * at display time per the viewer's locale/timezone"). The server can't know
 * the viewer's timezone during SSR, so this renders a UTC-labeled version on
 * first paint (matching what the server sent — no hydration mismatch) and
 * swaps to the browser's local timezone in an effect right after mount.
 */
export default function TimestampDisplay({
  originalAt,
  updatedAt,
}: {
  originalAt: Date;
  updatedAt: Date;
}) {
  const [timeZone, setTimeZone] = useState<string>("UTC");

  useEffect(() => {
    try {
      setTimeZone(Intl.DateTimeFormat().resolvedOptions().timeZone || "UTC");
    } catch {
      // Intl.DateTimeFormat() itself is extremely unlikely to throw, but if
      // it does, staying on "UTC" is a safe, always-correct fallback.
    }
  }, []);

  const original = formatDateTime(originalAt, timeZone);
  const updated = formatDateTime(updatedAt, timeZone);
  const wasEdited = updatedAt.getTime() !== originalAt.getTime();
  const zoneLabel = timeZone === "UTC" ? "UTC" : "your local time";

  return (
    <dl className="flex flex-wrap gap-x-6 gap-y-1 text-xs text-ink-400">
      <div className="flex gap-1">
        <dt className="font-medium">Original:</dt>
        <dd>
          {original.date} at {original.time} ({zoneLabel})
        </dd>
      </div>
      {wasEdited && (
        <div className="flex gap-1">
          <dt className="font-medium">Updated:</dt>
          <dd>
            {updated.date} at {updated.time} ({zoneLabel})
          </dd>
        </div>
      )}
    </dl>
  );
}
