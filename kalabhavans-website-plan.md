# Kalabhavans.com — Website Plan (v1.4)

A **global** recipe-sharing community: browse everyday dishes and street food by continent, country, state/region, ingredient, or diet, follow cooking instructions, rate and comment on dishes, and sign up to submit and share your own recipes. Purely a recipe community — no restaurant/ordering/reservation functionality.

**v1.4 update:** the site started India-only and has been deliberately opened up to the whole world — "there are no location constraints on the web, so there are none here either." See section 0 below for exactly what changed and why.

Companion content: `kalabhavans-india-ingredients-dishes.md` (the original India seed research — ingredients, cooking instructions, Owner column, Original/Updated timestamps, sign-up field spec, disclaimer, and mission statement; now updated with a v1.4 note and the current global mission statement/disclaimer wording). The ~50-dish, 24-country world expansion added in v1.4 lives directly in code (`prisma/world-dishes-data.ts`) rather than a separate content doc, since it was produced and reviewed as part of the same build pass — see section 0.

---

## 0. v1.4 — Global Expansion (what changed and why)

Prompted directly by the site owner: *"there is no location constraints [on the web]... let us help the whole world collaborate and enjoy all the recipes/cuisines across the culture without any boundaries."* Concretely, this build pass:

- **Added `continent` and `country` columns to Recipe**, alongside the existing `region` (state/province/city, now optional — not every dish in the world has one). `continent` is never client-supplied: it's always derived server-side from `country` via `continentForCountry()` (`lib/geo.ts`), which resolves against the `countries-list` npm package's ~250-country/alias dataset — so a member typing "Turkey", "USA", or "South Korea" all resolve correctly, and a genuine typo fails fast with a clear message rather than silently mis-filing a dish under the wrong continent.
- **Added `diet` (vegetarian / vegan / non_vegetarian / eggetarian) and `isStreetFood` columns.** `diet` is inferred automatically from a dish's ingredient list at seed time (`lib/dish-classify.ts`'s `inferDiet`) rather than hand-set on ~125 entries — it deliberately never *infers* "vegan" (ruling out dairy from a short ingredient list reliably enough to trust is a much easier claim to get wrong than right), only vegetarian/non-vegetarian/eggetarian; a "vegan" classification is only ever a hand-verified override on a specific dish. Members choose their own dish's diet explicitly at submission time.
- **Expanded the seed catalog from ~70 to 127 dishes across 25 countries**: filled Tamil Nadu gaps explicitly requested (Koottu, a Tamil Nadu-style pickle, Chettinad Biryani, Chicken 65), added several more Indian street-food dishes (Pani Puri/Golgappa, Pav Bhaji, Kolkata Kathi Roll, Jhal Muri) for **77 India dishes total**, and added **50 dishes across 24 other countries** spanning every populated continent (China, Japan, Thailand, Vietnam, South Korea, Indonesia, Sri Lanka, Nepal, Lebanon, Turkey, Italy, France, Spain, Greece, UK, Morocco, Ethiopia, Nigeria, Egypt, USA, Mexico, Brazil, Peru, Australia) — researched separately, with the same photo-verification caveat as the original India research (Wikimedia Commons URLs could not be browsed/click-verified in the build sandbox, so all 50 world-dish photos are `null`, falling back to the placeholder image, pending real sourced photography).
- **Implemented every item in section 6** ("Recommended Improvements"), which had been written but not yet built: faceted search (continent + country + region + diet + difficulty + street-food-only, all combined), a distraction-free Cook Mode view, Review structured data alongside AggregateRating, a public cook profile page making the Owner byline clickable, and viewer-local-timezone timestamp display. Full detail on each in the sections below (search "v1.4" for every touch point).
- **Slugs now include country** (e.g. `chicken-65-tamil-nadu-india`) so two same-named states/cities in different countries can never collide.
- **Updated the site's public mission statement and disclaimer** to global wording (homepage, About page, footer, disclaimer page, and the companion content doc) — no more India-only phrasing anywhere the public can see it. See section 6 of `kalabhavans-india-ingredients-dishes.md` for the exact current text of both.

## 1. Executive Summary

Kalabhavans.com is a two-sided platform: visitors browse and cook recipes from anywhere in the world for free, rate dishes and leave comments, and registered members (email required, phone optional) can submit and share their own recipes — from any country, any cuisine — which auto-publish immediately and are attributed to them as the recipe's **Owner**, linked to a public profile of everything they've shared. The seed catalog (127 dishes across India and 24 other countries) is attributed to **Owner: Internet**, marking it as sourced from general public information rather than original member or business content. Every recipe carries system-generated **Original Date/Time** and **Updated Date/Time** stamps (DD/MM/CCYY, 24-hour HH:MM, shown in the *viewer's* local timezone), a **continent/country/region** classification, a **diet** classification, and an **isStreetFood** flag. A running "Top Rated" ticker surfaces the community's highest-rated dishes at the top of the site, mirrored as a sortable, crawlable list on the Explore page. The product shape is a global recipe community (Allrecipes-style, but international from day one): recipe detail pages with ingredients/steps/ratings/comments/Cook Mode, user accounts with public profiles, and user-generated content with lightweight post-hoc moderation (reporting/flagging on both recipes and comments) rather than pre-publish review.

## 2. Sitemap

```text
Home  (incl. "Top Rated" running ticker)
├── Explore Recipes (faceted search: continent, country, region, diet, difficulty, street food, free text)
│   └── Recipe Detail Page  (ingredients, steps, owner/attribution, geo/diet badges, timestamps, rating widget, comments)
│       └── Cook Mode  (distraction-free: large text, ingredients + steps only, no site chrome)
├── Cook Profile (/cook/[id])  (a member's name + everything they've published — name only, no private fields)
├── Browse by Region (landing pages — phase 2, now spans states/provinces worldwide, not just India)
├── Browse by Ingredient (e.g., "Recipes with Coconut") — phase 2
├── Search Results
├── Submit a Recipe (members only — country required, region optional, diet required, street-food checkbox)
├── Sign Up / Log In
├── My Account
│   ├── My Recipes
│   ├── Favorites/Saved (phase 2)
│   ├── My Ratings & Comments
│   └── Profile Settings
├── About / Our Mission
├── Contact / Support
├── Legal
│   ├── Terms of Use
│   ├── Privacy Policy
│   └── Disclaimer (also shown in footer + on every recipe page)
└── Admin (moderation queue for reported recipes/comments — shipped in MVP, not phase 2)
```

## 3. Page Inventory

| Page | Purpose | Main Components | CTA | Priority |
|---|---|---|---|---|
| Home | Orient visitors, surface mission + top-rated & featured recipes | Hero, mission blurb, **Top Rated running ticker (marquee)**, featured recipe cards | "Explore Recipes" | P0 |
| Explore/Cuisine Explorer | Browse & filter all recipes worldwide | **Faceted filter bar** (continent, country, region, diet, difficulty, street-food-only — all combine with AND), recipe grid (rating + diet + street-food badges per card), search bar, Top Rated sort | "View Recipe" | P0 |
| Recipe Detail | Let a visitor cook the dish, rate it, and read/leave comments | Title/photo, continent/country/region + diet + street-food badges, **owner/attribution byline (linked to cook profile)**, Original/Updated Date/Time (viewer's local timezone), ingredients list, numbered steps, prep/cook time, servings, **star rating widget**, **Cook Mode button**, **comments list + comment form**, disclaimer, report button | "Rate & Comment" (members) | P0 |
| Cook Mode | Distraction-free cooking companion | Large-text ingredients + numbered steps only, no header/footer/comments/sidebar | "Exit Cook Mode" | P0 |
| Cook Profile | Turn attribution into discovery | Member name, grid of their published recipes (name only — never email/phone/address) | "View Recipe" | P1 |
| Search Results | Find recipes by keyword | Search bar, result cards, empty state | "View Recipe" | P0 |
| Sign Up | Create an account | Form: first/last name, gender, age group, address, email (required), phone (optional), password | "Create Account" | P0 |
| Log In | Return access | Email + password, "forgot password" | "Log In" | P0 |
| Submit a Recipe | Let members share recipes from anywhere in the world | Form: title, **country (required, validated against a ~250-country list)**, **state/region (optional)**, **diet (required)**, **street-food checkbox**, ingredients, steps, **required photo upload**, optional video — Owner, continent, and Original Date/Time are set automatically (not editable) | "Publish Recipe" | P0 |
| My Account / Dashboard | Manage own content | My recipes list, favorites, my ratings/comments, edit profile | "Edit"/"Delete" | P1 |
| Region landing pages | SEO + browsing by geography | Recipe grid filtered by region, short regional blurb | "View Recipe" | P1 |
| Ingredient landing pages | SEO + browsing by ingredient | Recipe grid filtered by ingredient | "View Recipe" | P2 |
| About/Mission | Build trust, state intent plainly (now explicitly global) | Mission statement, disclaimer link | — | P0 |
| Admin/Moderation | Keep quality despite auto-publish | Reported-recipe/comment queue, dismiss/remove actions | "Remove"/"Dismiss" | **P0 (shipped in MVP)** |

## 4. Component Inventory

Header/nav, mobile menu (with a `ChromeGate` that hides header/footer specifically on Cook Mode routes), hero, **Top Rated ticker/marquee** (pausable, `prefers-reduced-motion`-aware), recipe card (rating + diet + street-food badges), **faceted filter bar** (continent/country/region/diet/difficulty/street-food/search, continent narrows the country dropdown), recipe detail layout, **owner/attribution byline (linked to `/cook/[id]`)**, **timestamp display (viewer-local-timezone, client-side)**, **Cook Mode view**, **star rating widget (submit + display)**, **comment list + comment form**, geo/diet/street-food badges, recipe submission form (country/region/diet/street-food fields, required image upload, owner + continent + original timestamp auto-set server-side), pagination, footer (with disclaimer), auth forms, profile/dashboard cards, **public cook profile page**, report/flag button (for recipes and comments), toast notifications, confirm-action modal.

## 5. Feature Inventory & User Journeys

Core features: browse/search/filter recipes from any country by **continent, country, state/region, diet, difficulty, and street-food status (faceted — all combine)**; recipe detail with cooking instructions + **Cook Mode**; **owner/attribution on every recipe** ("Internet" for the seed catalog, the submitting member — linked to their public profile — for user content); **Original Date/Time and Updated Date/Time on every recipe** (system-generated, DD/MM/CCYY + 24-hour HH:MM, shown in the viewer's own timezone); **1–5 star rating per recipe (one per user, editable)**; **comments per recipe (multiple per user, a running discussion)**; **"Top Rated" running ticker on the homepage** (mirrored as a sortable list on the Explore page) built from a cached average that's recomputed only when a rating is written, never on page read; sign-up/login (email required, phone optional, demographic fields); recipe submission (auto-publish, required photo, required country + diet, optional region); favorites/save (phase 2); report/flag content or comments (recipes **and** comments, both shipped in MVP) with an admin moderation queue; "my recipes" dashboard; responsive design; recipe-page SEO (schema.org `Recipe` + `AggregateRating` + **`Review`** — a Review is only emitted for a comment whose author also left a matching star rating, so it's a truthful reviewRating rather than an invented one); sitewide disclaimer + mission content, now explicitly worldwide rather than India-only.

**Anonymous visitor:** Home (sees Top Rated ticker) → Explore/Search (facets: e.g. "vegetarian Italian street food") → Recipe Detail (sees Owner linked to their profile, geo/diet badges, timestamps in their own timezone, photo) → Cook Mode at the stove → sign up to rate/comment.
**New member:** Sign Up (email required) → verify email → Dashboard → Submit first recipe from any country (auto-attributed to them as Owner, continent derived from their country, Original Date/Time stamped, photo required), or rate/comment on one they tried.
**Returning member:** Log In → Recipe Detail → rate + leave a comment → Dashboard → submit or edit a recipe (editing refreshes its Updated Date/Time automatically).
**Recipe seeker:** Home ticker or faceted filter (continent/country/region/diet/street-food) → Recipe Detail → see who shared it and when (their own timezone) → read comments → Cook Mode → rate/comment.

## 6. Recommended Improvements Over the Baseline Concept — status as of v1.4

Every item below is now **implemented**; kept here as the original recommendation record with a pointer to what shipped.

- Never gate browsing/cooking behind login — only submitting, saving, rating, and commenting require an account. **Implemented**: home, Explore, Recipe Detail, Cook Mode, and Cook Profile pages never call an auth guard; only `/submit`, `/dashboard`, and `/admin` redirect to login.
- Faceted search (region + ingredient + diet + difficulty combined). **Implemented and expanded**: continent + country + region + diet + difficulty + street-food-only + free text, all AND-combined (`lib/queries.ts`'s `searchRecipes`, `components/FilterBar.tsx`).
- A distraction-free "cook mode" view (large text, no sidebar). **Implemented**: `/recipe/[slug]/cook`, with the site header/footer hidden via `ChromeGate`.
- Minimum-rating threshold before a dish qualifies for Top Rated; recompute periodically rather than on every page load. **Implemented**: `MIN_RATINGS_FOR_TOP_RATED = 5`; `avgRating`/`ratingCount` are cached columns recomputed only inside the rating-write transaction (`lib/rating-utils.ts`), never on a page read.
- Ticker must be pausable, honor `prefers-reduced-motion`, and never be the only way to reach top-rated dishes. **Implemented**: pause button + hover/focus pause, a CSS `prefers-reduced-motion` rule, and a "Top Rated" sort on the Explore page.
- Structured data (`Recipe` + `AggregateRating` + `Review`). **Implemented**: `Review` entries are only emitted for comments whose author also left a matching star rating.
- Ship reporting/flagging + an admin queue from day one, covering comments too. **Implemented**: `ReportButton` appears on both recipes and comments; `/admin` queue handles both with dismiss/remove.
- Make the Owner byline a clickable link to a public profile. **Implemented**: `/cook/[id]`, exposing only name + published recipes, never email/phone/address/gender/age group.
- Store timestamps as UTC, display at the viewer's local timezone. **Implemented**: Postgres stores `timestamptz`; `components/TimestampDisplay.tsx` renders UTC on first paint (matching SSR, no hydration mismatch) and swaps to `Intl.DateTimeFormat().resolvedOptions().timeZone` right after mount.
- Image optimization/lazy loading. **Already satisfied**: every image in the app already used `next/image` (lazy by default) with `priority` reserved for the one above-the-fold recipe hero image — audited in v1.4, no changes needed.

## 7. Technology Stack

### Options considered

| Layer | Option A | Option B | Tradeoff |
|---|---|---|---|
| Frontend/Backend | **Next.js (React + TypeScript)** | Remix / SvelteKit | Next.js has the best SEO tooling (SSR/SSG/ISR), image optimization, largest ecosystem and hiring pool. Remix/SvelteKit are fine alternatives but smaller ecosystems for this use case. |
| Database + Auth + Storage | **Supabase (Postgres + Auth + Storage)** | Roll-your-own: Neon/RDS Postgres + Auth.js + Cloudflare R2/S3 | Supabase bundles Postgres, authentication (email verification, password reset, later OTP/social login), and file storage behind one dashboard — much less to wire up and operate for a small team. Roll-your-own gives more control and can be cheaper at large scale, but means integrating and operating three separate services from day one. |
| Live ticker data | **Cached columns on Recipe, recomputed on write** | Real-time recompute on every request | `avgRating`/`ratingCount` are recomputed inside the same transaction as a rating write (`lib/rating-utils.ts`) rather than a separate scheduled job — simpler than a materialized view, and a page read never triggers an aggregate query. |
| Country → continent resolution | **`countries-list` npm package (MIT, ~250 countries + aliases)** | Hand-maintained country list | A hand-rolled list would need dozens of entries and inevitably miss aliases/spellings a global membership will actually type; a well-maintained package covers the whole world and common aliases (Turkey/Türkiye, USA/United States, etc.) out of the box. |
| Diet classification | **Ingredient-keyword inference at seed/write time** (`lib/dish-classify.ts`), member-selected at submission | Hand-tag every seed dish | Inference avoids hand-tagging ~125 seed dishes individually and is unit-tested against edge cases (plurals, "eggplant" vs. "egg"); it deliberately never infers "vegan" (too easy to get wrong from a short ingredient list) — vegan is always either a member's own selection or a hand-verified override. |
| ORM | **Prisma** | Supabase JS client only | Prisma gives a type-safe schema, migrations, and autocompletion across the Next.js codebase; use `supabase-js` alongside it just for Storage/Auth calls. |
| Hosting | **Vercel** (app) + **Supabase** (data/auth/storage) | AWS (ECS/RDS/S3/Cognito/CloudFront) | Vercel+Supabase ships fastest with minimal DevOps (built-in CDN, preview deployments, managed backups) — right-sized for an MVP/community site. AWS gives full infrastructure control and can be cheaper at very large scale, but requires materially more setup and an ops function to run it. |
| Search | **Postgres full-text search** (to start) | Dedicated search (Algolia/Meilisearch) | Postgres FTS (`tsvector`/`pg_trgm`) is free and good enough for a launch-scale catalog; upgrade to Meilisearch/Algolia only if recipe volume and query complexity justify it later. |

### Recommendation — confirmed and fully implemented

**Next.js 16 (TypeScript, App Router) + Tailwind CSS, Prisma ORM over Supabase Postgres, Supabase Auth (email required at sign-up, phone optional, expandable to social login/OTP later), Supabase Storage for recipe photos/video, deployed on Vercel, with `countries-list` for country/continent resolution.** This combination minimizes infrastructure work (no servers to manage), has first-class SEO support for recipe pages, and every piece scales from a hobby-tier free plan up through real production traffic — and worldwide content — without a re-platform.

**Status: the site owner has explicitly re-confirmed this stack, and every piece of it is fully built** — Prisma schema/migrations/seed scripts, Supabase Auth wired into sign-up/login/sessions, Supabase Storage wired into the recipe-photo upload flow, `countries-list`-backed geo resolution (`lib/geo.ts`), and a complete, copy-paste Vercel+Supabase deployment path (`DEPLOYMENT.md`). There is no remaining stack-level work; what's left before a public launch is content/ops follow-up (real photography to replace placeholder/`null` images, server-side upload file-type/size validation, sign-up/login rate limiting — all tracked in SECURITY.md and section 10 below as Phase 2, not stack gaps). Continue with this stack unless a specific requirement (e.g., a data-residency rule, or scale that outgrows Supabase) forces a change.

## 8. Architecture

```text
Browser (visitor / member, anywhere in the world)
        ↓
Next.js frontend (React Server + Client Components, Tailwind)
        ↓
Next.js API routes / Server Actions  (business logic: recipes, ratings, comments, reports)
        ↓                         ↘
Prisma ORM → Supabase Postgres      Supabase Auth (sign-up/login/session)
        ↓          ↓                     ↘
        |   avgRating/ratingCount      Email provider (verification, password reset)
        |   recomputed on rating write
        |   continent derived from country (lib/geo.ts, never client-supplied)
        ↓
Supabase Storage (recipe photos/video)
```

### Proposed project structure

```text
kalabhavans/
├── app/
│   ├── (public)/            # home, explore, recipe/[slug], recipe/[slug]/cook, cook/[id], about
│   ├── (auth)/               # sign-up, login
│   ├── (member)/dashboard/   # my recipes, favorites, my ratings/comments, submit/edit recipe
│   ├── (admin)/moderation/   # shipped in MVP, not phase 2
│   └── api/                  # route handlers (recipes, ratings, comments, reports, uploads)
├── components/                # RecipeCard, FilterBar, CookModeView (page), ChromeGate, RatingStars,
│                               # CommentList, CommentForm, TopRatedTicker, OwnerByline,
│                               # TimestampDisplay, etc.
├── lib/                       # prisma client, supabase client, validation schemas, geo.ts
│                               # (continent resolution), dish-classify.ts (diet inference),
│                               # rating-utils.ts, date formatting util
├── prisma/
│   ├── schema.prisma
│   ├── seed-data.ts           # India dishes (country defaults to "India")
│   ├── world-dishes-data.ts   # ~50 dishes across 24 other countries
│   └── migrations/
├── public/
├── styles/
├── tests/
├── docs/
├── .env.example
└── package.json
```

## 9. Database Design

```text
users
 |-- id, first_name, last_name, email (unique, required), phone (nullable),
 |   gender, age_group, address, password_hash / auth_provider_id, role, created_at
 |
 +---- recipes (owner_id → users.id, NULLABLE)
 |        id, title, slug, description,
 |        continent (enum: africa/asia/europe/north_america/south_america/oceania —
 |          ALWAYS derived server-side from country, never client-supplied),
 |        country (free text, validated against a ~250-country list at submission time),
 |        region (nullable — state/province/city; not every dish in the world has one),
 |        diet (enum: vegetarian/vegan/non_vegetarian/eggetarian — inferred from ingredients
 |          for seed dishes, member-selected for submissions),
 |        is_street_food (boolean, default false),
 |        cook_time, prep_time, servings, difficulty, image_url, video_url, status,
 |        owner_id (nullable — null for seed content), owner_label ("Internet" for seed rows,
 |        computed as the member's display name when owner_id is set),
 |        original_at (datetime, set once at creation — displayed as DD/MM/CCYY + HH:MM in the
 |          viewer's local timezone), updated_at (datetime, refreshed on every edit, same display
 |          treatment), avg_rating (cached), rating_count (cached)
 |        |
 |        +---- recipe_ingredients (recipe_id)
 |        +---- recipe_steps (recipe_id)
 |        +---- recipe_tags (recipe_id, tag_id) → tags (kind: region | state | country)
 |        +---- ratings (recipe_id, user_id) — unique per user+recipe; 1–5 star score
 |        +---- comments (recipe_id, user_id) — free-text comment, multiple per user allowed, created_at
 |
 +---- favorites (user_id, recipe_id) — unique per user+recipe
 +---- reports (reporter_id, recipe_id nullable, comment_id nullable) — reason, status, created_at
```

Why: `recipes.owner_id` is nullable specifically to represent the seed catalog, which has no real submitting member — those rows keep `owner_id` null and `owner_label` set to the literal string `"Internet"`. Every recipe a member submits has `owner_id` set server-side to the authenticated user's id (never client-editable), and `continent` is likewise always derived server-side from `country` (`continentForCountry()` in `lib/geo.ts`) — the same non-spoofable pattern, so a submission can never claim a country lives on the wrong continent, and can never be trusted to self-report its continent directly. `region` became nullable in v1.4 because plenty of the world's dishes (and even some Indian ones going forward) aren't tied to one specific state/province. `diet` and `is_street_food` are new first-class columns (not just tags) specifically so they can be fast, combinable facets in Explore's filter bar. `original_at`/`updated_at` are unchanged in mechanism from v1.3 (system-generated, never user-editable, stored as UTC `timestamptz`) — what changed is only the *display*: v1.3 rendered them in one fixed timezone, v1.4 renders them in the viewer's own browser timezone, computed client-side after an SSR-safe UTC-first paint. `ratings` and `comments` remain split as in v1.3. `reports` covers both recipes and comments. `tags` gained a `country` kind alongside `region`/`state` in v1.4, though the primary facet-search path now queries the `continent`/`country`/`region`/`diet` columns directly rather than through tags, for speed.

## 10. MVP Scope vs Later Phases

**MVP (P0/P1) — now includes everything in section 6, all shipped in v1.4:**
Browse/search/filter recipes worldwide via faceted search (continent/country/region/diet/difficulty/street-food/text); recipe detail pages with cooking instructions + **Cook Mode** + **owner/attribution byline (linked to a public cook profile)** + **Original/Updated Date & Time (viewer-local-timezone)** + geo/diet/street-food badges + disclaimer; **1–5 star ratings**; **comments per recipe**; **"Top Rated" running ticker on the homepage** (pausable, reduced-motion-aware, minimum-rating-count threshold, mirrored as a sortable list on the Explore page); sign-up/login (email required, phone optional, demographic fields captured); submit-a-recipe (auto-publish, **required photo**, **required country + diet**, optional region, owner + continent + original timestamp auto-attributed); "my recipes" dashboard; responsive design; recipe-page SEO (schema.org `Recipe`/`AggregateRating`/`Review` incl. `datePublished`/`dateModified`, sitemap.xml, robots.txt); report/flag button (recipes + comments) + admin queue.

**Phase 2:** favorites/saved recipes, fuller admin moderation dashboard enhancements, social login, phone OTP verification, region/ingredient landing pages, image moderation, comment replies/threading, server-side file-type/size validation on photo uploads (flagged as a pre-launch gap in SECURITY.md), rate limiting on sign-up/login/recipe submission (flagged in SECURITY.md), real sourced photography to replace the ~50 world-dish `null` photos (and remaining India-dish `null` photos).

**Future:** personalized recommendations, meal planning, following other cooks, multi-language support (content is currently English-only regardless of the dish's origin country).

## 11. Development Roadmap

Phases 1–9 (project init through ratings/comments/moderation) shipped as described in v1.3. **v1.4 roadmap** (this build pass):

1. Schema: add `Continent`/`Diet` enums, `continent`/`country`/`diet`/`isStreetFood` columns, make `region` nullable (`prisma/schema.prisma`)
2. `lib/geo.ts` (country → continent resolution via `countries-list`, unit-tested) and `lib/dish-classify.ts` (ingredient-keyword diet inference, unit-tested)
3. Expand seed catalog: fill explicitly-requested Tamil Nadu gaps + more Indian street food (`prisma/seed-data.ts`); research and add ~50 dishes across 24 countries (`prisma/world-dishes-data.ts`, via a bounded research pass with an honest photo-verification caveat)
4. Update `prisma/seed.ts` to derive continent, infer diet, and tag country, per dish
5. Faceted search: `lib/queries.ts`'s `searchRecipes`/`getAllContinents`/`getAllCountries`/`getAllRegions`, `components/FilterBar.tsx`, Explore page
6. Cook Mode route + `ChromeGate` to hide site chrome on it
7. Public cook profile page (`/cook/[id]`) + clickable Owner byline
8. Viewer-local-timezone `TimestampDisplay`
9. `Review` structured data on recipe pages (comment + matching rating pairs only)
10. Recipe submission form + validation + API route: country/region/diet/street-food fields, server-derived continent
11. Tests (`tests/geo.test.ts`, `tests/dish-classify.test.ts`, expanded `tests/validations.test.ts`), typecheck, audit
12. Docs: README/SECURITY/this plan doc updated for the pivot
13. Global mission statement + disclaimer copy, replacing India-only wording everywhere it appears (homepage, About, footer, disclaimer page, companion content doc) — done per the site owner's explicit request, alongside re-confirming section 7's tech stack as final.

## 12. Assumptions (flagged — override anytime)

- English-only at launch, worldwide dish coverage notwithstanding; no multi-language requirement stated.
- No payment/e-commerce functionality (purely free content).
- Auto-publish is acceptable **provided** report/flag + admin removal ships in the MVP for both recipes and comments — shipped.
- Top Rated ticker shows dishes ranked by average star rating with a minimum rating-count threshold of 5 (tunable later).
- **Confirmed:** photo is required for recipe submission; video remains optional.
- **Confirmed:** every recipe has an Owner — "Internet" for the seed catalog, the submitting member for user-generated recipes, set automatically and not user-editable; the Owner byline links to a public profile.
- **Confirmed:** every recipe has system-generated Original Date/Time and Updated Date/Time, displayed as DD/MM/CCYY and 24-hour HH:MM in the *viewer's* own timezone; all seed dishes share the same Original/Updated stamp (12/09/2026, 00:47 America/Chicago), since that's when the catalog was compiled and none have been edited since.
- **New in v1.4, confirmed:** every recipe has a `country` (required, validated against a ~250-country list) and a server-derived `continent`; `region` (state/province/city) is optional. Every recipe has a `diet` classification and an `isStreetFood` flag.
- **New in v1.4, confirmed:** the technology stack in section 7 (Next.js/Tailwind/Prisma/Supabase/Vercel/`countries-list`) is the final decision, explicitly re-affirmed by the site owner — not tentative. No further stack changes are planned.
- **New in v1.4, flagged for a future decision:** the ~50 world-dish seed entries all have `photo: null` (falling back to the placeholder image) — the research pass could not verify real Wikimedia Commons URLs without browsing them, and judged a wrong/broken link worse than the existing placeholder. Sourcing real, licensed photography for these (and the remaining `null` India entries) is a pre-launch follow-up, not done in this pass.
- No stated budget/timeline — the recommended stack assumes a small team wanting to launch quickly and cheaply (both Vercel and Supabase have free tiers sufficient for an MVP launch, worldwide audience notwithstanding — neither service is geographically restricted).
