"use client";

import { usePathname } from "next/navigation";

/**
 * Hides the site header/footer on Cook Mode routes (/recipe/[slug]/cook),
 * which are meant to be genuinely distraction-free for stove-side use — see
 * the recommendation in kalabhavans-website-plan.md section 6. Header and
 * Footer are rendered server-side in RootLayout and passed in as elements
 * (rather than duplicating them here), so this stays a small client-only
 * routing check with no data fetching of its own.
 */
export default function ChromeGate({
  header,
  footer,
  children,
}: {
  header: React.ReactNode;
  footer: React.ReactNode;
  children: React.ReactNode;
}) {
  const pathname = usePathname();
  const isCookMode = pathname?.endsWith("/cook") ?? false;

  if (isCookMode) {
    return <>{children}</>;
  }

  return (
    <>
      {header}
      <main className="flex-1">{children}</main>
      {footer}
    </>
  );
}
