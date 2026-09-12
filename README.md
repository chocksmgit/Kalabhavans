# Kalabhavans.com

A global community recipe hub: browse everyday dishes and street food from every state and
country, follow cooking instructions, rate and comment, and sign up to submit and share your own
recipes — no location constraints, the way the site started as an India-only catalog and then
opened up to the whole world.

This repository is the full application. **DEPLOYMENT.md** has the exact, copy-paste steps to get
it live at kalabhavans.com — start there once you've read this file.

## What's built

- Home page with a "Top Rated" running ticker (pausable, `prefers-reduced-motion`-aware) and a
  Recently Added grid
- Cuisine Explorer with **faceted search** — continent, country, state/region, diet, difficulty,
  and street-food-only all combine with free text, and a "Top Rated" sort makes the same ranking
  the ticker shows crawlable and reachable without it
- A distraction-free **Cook Mode** (`/recipe/[slug]/cook`) — large text, ingredients and steps
  only, no header/footer/comments, meant to be read at arm's length at the stove
- Recipe detail pages: ingredients, numbered steps, photo, continent/country/region + diet +
  street-food badges, Owner attribution (linked to a public cook profile), Original/Updated
  timestamps (displayed in the *viewer's* local timezone), 1–5 star ratings, comments, a
  report/flag button, and SEO structured data (schema.org `Recipe` + `AggregateRating` + `Review`)
- Public cook profiles (`/cook/[id]`): a member's name and everything they've published — never
  their email, phone, or other private fields
- Sign-up (email required, phone/gender/age group/address optional) and login, via Supabase Auth
- Submit-a-Recipe form (photo required; country/diet/street-food required, region optional) — the
  submitting member is automatically set as the recipe's **Owner**, and `continent` is always
  derived server-side from `country` (see `lib/geo.ts`) — neither can be spoofed from the client
- A ~125-dish seed catalog (all tagged **Owner: Internet**) covering every major Indian
  region/state plus ~50 dishes across 24 other countries on every populated continent, each with
  cooking instructions, a diet classification, and (mostly) a placeholder photo
- Member dashboard: my recipes (with delete), my ratings, my comments
- Admin dashboard: a moderation queue for reported recipes/comments, with dismiss/remove actions
- **chocksm@gmail.com and kalachocks@gmail.com automatically become admins** the moment they sign
  up (see `lib/constants.ts` and DEPLOYMENT.md)
- Sitemap, robots.txt, footer/recipe-page disclaimer, About/Mission page, Terms/Privacy/Disclaimer
  pages

## What's intentionally NOT built yet (see the project's roadmap doc, "Phase 2")

Favorites/saved recipes, social login, phone OTP verification, region/ingredient landing pages,
comment threading, image moderation, a "vegan" auto-detector (vegan is only ever hand-verified per
dish, never inferred — see `lib/dish-classify.ts`). None of these block launch — they're documented
next steps.

## Tech stack

Next.js 16 (App Router, TypeScript) + Tailwind CSS · Prisma ORM · Supabase (Postgres, Auth,
Storage) · deployed on Vercel. See the project's `kalabhavans-website-plan.md` doc for the full
tradeoff discussion behind this choice.

## Local development

```bash
npm install
cp .env.example .env.local   # then fill in your Supabase project's values
npm run db:migrate           # creates the tables from prisma/schema.prisma
npm run db:seed              # loads the ~125-dish starter catalog (India + 24 other countries)
npm run dev                  # http://localhost:3000
```

You'll need a Supabase project first — DEPLOYMENT.md walks through creating one, including the
Storage bucket recipe photos are uploaded to.

## Environment variables

See `.env.example` for the full list with comments on where to find each value in your Supabase
project settings. Never commit `.env.local` — it's already gitignored.

## Commands

| Command | What it does |
|---|---|
| `npm run dev` | Start the local dev server |
| `npm run build` | Production build |
| `npm run start` | Run the production build locally |
| `npm run lint` | Lint the codebase |
| `npm run typecheck` | Type-check without emitting files |
| `npm run db:migrate` | Create/update tables from the Prisma schema (dev) |
| `npm run db:deploy` | Apply migrations in production (used by the deploy step) |
| `npm run db:seed` | Load the seed dish catalog |
| `npm run test` | Run unit tests |

## Testing

`npm run test` runs 49 unit tests covering:

- every Zod schema's accept/reject cases (`tests/validations.test.ts`) — email mandatory/phone
  optional, photo required, a recipe submission needs a *recognized* country but region is
  optional, diet is required from a fixed enum, and client-supplied `ownerId`/`originalAt`/
  `continent` fields are silently stripped rather than trusted
- the rating aggregation math that feeds the Top Rated ticker (`tests/rating-utils.test.ts`)
- country → continent resolution, including aliases like "USA"/"UK"/"Turkey" and a descriptive
  error for an unrecognized country rather than a silent guess (`tests/geo.test.ts`)
- ingredient-based diet classification, including the "eggplant isn't egg" edge case and that an
  explicit vegan override always wins over inference (`tests/dish-classify.test.ts`)

See SECURITY.md for what's *not* covered yet (integration/E2E tests are a documented next step,
not done here).

## Verification status of this codebase

- `npm run test` — 49/49 passing.
- `npm audit` — 0 vulnerabilities.
- `npm run typecheck` — clean **except** for errors that trace directly back to
  `@prisma/client`'s generated types not existing yet (see Troubleshooting below). Run
  `npm run db:generate` first on a machine with normal internet access and these disappear —
  they aren't bugs in the code, they're `tsc` correctly noticing the Prisma Client stub package
  has no generated models until `prisma generate` has run once.
- `npm run build` — not runnable in this environment for the same reason (the Next.js build also
  needs the generated Prisma Client); it will work normally the first time you run
  `npm install && npm run db:generate && npm run build` anywhere with normal internet access,
  including Vercel's build servers.

## Troubleshooting

- **"Failed to fetch sha256 checksum" / Prisma engine download errors** — Prisma downloads a
  native binary on `prisma generate`/`migrate`. This needs normal internet access; it will not
  work behind a restrictive corporate proxy or a fully offline network. It works fine on a normal
  laptop, in GitHub Actions, and on Vercel's build servers.
- **"Invalid API key" from Supabase** — double check `NEXT_PUBLIC_SUPABASE_ANON_KEY` and
  `NEXT_PUBLIC_SUPABASE_URL` in `.env.local` against Project Settings → API in Supabase.
- **Photo upload fails** — confirm the Storage bucket named in
  `NEXT_PUBLIC_SUPABASE_STORAGE_BUCKET` exists and is set to public (DEPLOYMENT.md, step 4).

## Docs

- `DEPLOYMENT.md` — the exact steps to go from this codebase to a live site at kalabhavans.com,
  including granting admin rights
- `SECURITY.md` — what's covered, what to review before a public launch, and how to report a
  vulnerability
- The "Website Development" Claude project also has `kalabhavans-website-plan.md` (full
  architecture/roadmap) and `kalabhavans-india-ingredients-dishes.md` (the source content this
  seed catalog was built from, plus photo-license caveats)
