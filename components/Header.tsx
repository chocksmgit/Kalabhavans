import Link from "next/link";
import { getCurrentUser } from "@/lib/auth";
import HeaderAuthLinks from "./HeaderAuthLinks";

export default async function Header() {
  const user = await getCurrentUser();

  return (
    <header className="border-b border-ink-100 bg-white">
      <div className="mx-auto flex max-w-6xl items-center justify-between gap-4 px-4 py-4 sm:px-6">
        <Link href="/" className="flex items-center gap-2 font-display text-xl font-semibold text-ink-900">
          <span aria-hidden="true">🍛</span>
          Kalabhavans
        </Link>

        <nav aria-label="Primary" className="hidden items-center gap-6 text-sm font-medium text-ink-600 sm:flex">
          <Link href="/explore" className="hover:text-ink-900">
            Explore Recipes
          </Link>
          <Link href="/submit" className="hover:text-ink-900">
            Submit a Recipe
          </Link>
          <Link href="/about" className="hover:text-ink-900">
            Our Mission
          </Link>
        </nav>

        <HeaderAuthLinks
          isLoggedIn={!!user}
          displayName={user ? `${user.firstName}` : null}
          isAdmin={user?.role === "admin"}
        />
      </div>
    </header>
  );
}
