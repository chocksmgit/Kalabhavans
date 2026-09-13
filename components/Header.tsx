import Link from "next/link";
import { getCurrentUser } from "@/lib/auth";
import HeaderAuthLinks from "./HeaderAuthLinks";

export default async function Header() {
  const user = await getCurrentUser();

  return (
    <header className="relative border-b border-ink-100 bg-white">
      <div className="mx-auto flex max-w-6xl items-center justify-between gap-4 px-4 py-4 sm:px-6">
        <Link href="/" className="flex items-center gap-2 font-display text-xl font-semibold text-ink-900">
          <span
            aria-hidden="true"
            className="flex h-9 w-9 items-center justify-center rounded-full bg-gradient-to-br from-saffron-400 via-chili-500 to-berry-600 text-lg shadow-sm"
          >
            🍛
          </span>
          Kalabhavans
        </Link>

        <nav aria-label="Primary" className="hidden items-center gap-6 text-sm font-semibold sm:flex">
          <Link href="/explore" className="text-teal-700 hover:text-teal-600">
            Explore Recipes
          </Link>
          <Link href="/submit" className="text-berry-600 hover:text-berry-500">
            Submit a Recipe
          </Link>
          <Link href="/about" className="text-violet-600 hover:text-violet-500">
            Our Mission
          </Link>
        </nav>

        <HeaderAuthLinks
          isLoggedIn={!!user}
          displayName={user ? `${user.firstName}` : null}
          isAdmin={user?.role === "admin"}
        />
      </div>
      <div
        aria-hidden="true"
        className="h-1 w-full bg-[linear-gradient(to_right,theme(colors.saffron.400),theme(colors.chili.500),theme(colors.berry.500),theme(colors.violet.500),theme(colors.sky.400),theme(colors.leaf.400))]"
      />
    </header>
  );
}
