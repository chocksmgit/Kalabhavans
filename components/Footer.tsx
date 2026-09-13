import Link from "next/link";

export default function Footer() {
  return (
    <footer className="relative mt-16 border-t border-ink-100 bg-white">
      <div
        aria-hidden="true"
        className="h-1 w-full bg-[linear-gradient(to_right,theme(colors.leaf.400),theme(colors.sky.400),theme(colors.violet.500),theme(colors.berry.500),theme(colors.chili.500),theme(colors.saffron.400))]"
      />
      <div className="mx-auto max-w-6xl px-4 py-10 sm:px-6">
        <div className="grid gap-8 sm:grid-cols-3">
          <div>
            <p className="font-display bg-gradient-to-r from-saffron-600 via-chili-600 to-berry-600 bg-clip-text text-lg font-semibold text-transparent">
              Kalabhavans
            </p>
            <p className="mt-2 text-sm text-ink-600">
              A global community hub for discovering and sharing everyday recipes and street food
              from every state and country.
            </p>
          </div>
          <nav aria-label="Footer" className="text-sm text-ink-600">
            <ul className="space-y-2">
              <li>
                <Link href="/explore" className="hover:text-teal-700">
                  Explore Recipes
                </Link>
              </li>
              <li>
                <Link href="/submit" className="hover:text-berry-600">
                  Submit a Recipe
                </Link>
              </li>
              <li>
                <Link href="/about" className="hover:text-violet-600">
                  Our Mission
                </Link>
              </li>
              <li>
                <Link href="/contact" className="hover:text-sky-600">
                  Contact
                </Link>
              </li>
            </ul>
          </nav>
          <nav aria-label="Legal" className="text-sm text-ink-600">
            <ul className="space-y-2">
              <li>
                <Link href="/legal/terms" className="hover:text-ink-900">
                  Terms of Use
                </Link>
              </li>
              <li>
                <Link href="/legal/privacy" className="hover:text-ink-900">
                  Privacy Policy
                </Link>
              </li>
              <li>
                <Link href="/legal/disclaimer" className="hover:text-ink-900">
                  Disclaimer
                </Link>
              </li>
            </ul>
          </nav>
        </div>

        <p className="mt-8 max-w-4xl text-xs leading-relaxed text-ink-400">
          <strong className="text-ink-600">Disclaimer:</strong> The dishes, ingredients, and images
          referenced on this site (for the initial seed dishes, all tagged Owner: Internet in our
          catalog) were found on the internet &mdash; Kalabhavans does not claim ownership or
          authorship of these dishes, their traditional recipes, or their regional culinary
          heritage; they belong to the diverse communities and cultures of every state and country
          represented here. Recipes submitted by members are owned and attributed to the member who
          shared them. Recipes on this site are shared for inspiration and home cooking. Try them at
          your own risk &mdash; Kalabhavans is not responsible for any errors, omissions, allergic
          reactions, or outcomes from preparing or consuming any dish made using recipes found here.
          Always use your own judgment regarding ingredients, food safety, and dietary or allergy
          needs.
        </p>

        <p className="mt-6 text-xs text-ink-400">
          &copy; {new Date().getFullYear()} Kalabhavans.
        </p>
      </div>
    </footer>
  );
}
