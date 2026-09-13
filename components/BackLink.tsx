"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";

/**
 * A "← Back" link shown at the top of the recipe detail page. Prefers
 * browser history (router.back()) so a member who arrived via Explore with
 * filters applied (e.g. country=India&region=Tamil+Nadu) lands back on that
 * exact filtered page rather than a fresh, unfiltered /explore — but only
 * once we can confirm there's same-site history to go back to (checked via
 * document.referrer after mount, since server-rendered markup can't see
 * that). Falls back to a plain link to /explore for a member who opened the
 * recipe directly (bookmark, shared link, new tab).
 */
export default function BackLink({ fallbackHref = "/explore", label = "Back to results" }: { fallbackHref?: string; label?: string }) {
  const router = useRouter();
  const [hasHistory, setHasHistory] = useState(false);

  useEffect(() => {
    try {
      const ref = document.referrer;
      setHasHistory(Boolean(ref) && new URL(ref).origin === window.location.origin);
    } catch {
      setHasHistory(false);
    }
  }, []);

  if (hasHistory) {
    return (
      <button
        type="button"
        onClick={() => router.back()}
        className="inline-flex items-center gap-1 text-sm font-semibold text-teal-700 hover:text-teal-600"
      >
        <span aria-hidden="true">←</span> {label}
      </button>
    );
  }

  return (
    <Link href={fallbackHref} className="inline-flex items-center gap-1 text-sm font-semibold text-teal-700 hover:text-teal-600">
      <span aria-hidden="true">←</span> {label}
    </Link>
  );
}
