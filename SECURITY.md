# Security

A plain-language account of what's covered, what's deliberately deferred, and how to report a
problem. Written for the two site admins (Chokkalingam and Chandrakala), not as a compliance
document.

## Authentication & sessions

- Sign-up and login are handled entirely by **Supabase Auth** — passwords are never stored or
  hashed by this codebase; Supabase does that.
- Sessions are managed via `@supabase/ssr`, which stores the session in an HTTP-only cookie.
  The app never reads or writes that cookie's contents directly.
- Email confirmation on sign-up is recommended (DEPLOYMENT.md, step 3) as a basic check against
  throwaway/fake accounts.

## Authorization

Every mutation checks who's making the request, server-side, before touching the database:

- **Creating a recipe**: `Owner`, `Original Date/Time`, and `Updated Date/Time` are always set
  from the authenticated session and the server clock (`app/api/recipes/route.ts`) — never from
  client-submitted fields. A request can't claim to be someone else, or backdate a recipe.
- **Deleting a recipe**: only the recipe's own `ownerId` or a user with `role: admin` can delete
  it (`app/api/recipes/[id]/route.ts`).
- **Admin routes** (`/admin`, `app/api/admin/**`): gated by `requireAdmin()` (`lib/auth.ts`),
  which re-checks the caller's role from the database on every request — a client can't fake
  admin status by editing local state.
- **Ratings/comments**: tied to the authenticated user's ID, one rating per user per recipe
  (`@@unique([recipeId, userId])` in the schema prevents duplicate/ballot-stuffing ratings from
  the same account).
- **Recipe geography**: a submission only ever sends `country`; `continent` is always derived
  server-side from it via `continentForCountry()` (`lib/geo.ts`) using a query against the
  authoritative country list, never accepted directly from the client — the same non-spoofable
  pattern as Owner and the timestamps.
- **Public cook profiles** (`/cook/[id]`): `getPublicCookProfile()` (`lib/queries.ts`) selects only
  `id`, `firstName`, and `lastName` from the User table — email, phone, address, gender, and age
  group are never queried for this page, so there's no field to accidentally leak even if the
  template changes later. Anyone (logged in or not) can view a profile, matching "never gate
  browsing behind login."

## Input validation

All API routes validate incoming JSON with **Zod** schemas (`lib/validations.ts`) that mirror the
Prisma enums exactly, before anything reaches the database — malformed enums, missing required
fields, or wrong types are rejected with a 400 rather than reaching Prisma.

## Injection & XSS

- **SQL injection**: not applicable in the traditional sense — Prisma parameterizes every query;
  there is no raw/string-concatenated SQL anywhere in the codebase.
- **XSS**: React escapes all rendered text by default. The only `dangerouslySetInnerHTML` in the
  app is the JSON-LD `<script type="application/ld+json">` block on recipe pages
  (`app/recipe/[slug]/page.tsx`), and that block is built from a server-side `JSON.stringify()` of
  structured data we constructed — not from raw user input echoed back — so it isn't an injection
  vector the way rendering arbitrary user HTML would be.

## Rate limiting

- Comment posting is rate-limited to 5 per rolling 60-second window per user
  (`app/api/comments/route.ts`), checked against a database timestamp rather than in-memory state,
  so it holds up correctly even if the app runs as multiple serverless instances.
- **Not yet implemented**: rate limiting on sign-up, login, or recipe submission. Supabase Auth
  has its own baseline abuse protection on auth endpoints, but if spam sign-ups or recipe-spam
  become a problem in practice, add rate limiting there next (e.g. Vercel's built-in rate limiting
  or Upstash Redis).

## File uploads (recipe photos)

- A photo is required to submit a recipe; the upload goes to a Supabase Storage bucket
  (`recipe-media`) restricted to authenticated users for writes.
- **Gap to close before a fully public launch**: there's currently no server-side check on file
  type or size before upload — only the browser's `accept="image/*"` hint, which a user can
  bypass. Before launch (or soon after), add a server-side check (content-type sniffing and a
  size cap, e.g. 5–10MB) in the upload route, and consider Supabase Storage's own file-size-limit
  and allowed-mime-types bucket settings, which can enforce this without any app code.

## Secrets management

- All secrets (database URL, Supabase service-role key) live in environment variables, never in
  source. `.env.example` documents every variable with no real values; `.env.local` is gitignored.
- The **service-role key** (`SUPABASE_SERVICE_ROLE_KEY`) is used only in server-only files and is
  never sent to the browser — double-check this stays true if you add new server code that uses
  it (grep for `SUPABASE_SERVICE_ROLE_KEY` and confirm every usage is in an `app/api/**` route or
  a `lib/` file that only runs server-side).
- Production errors are returned to the client as generic messages; stack traces and internal
  error detail are logged server-side only (Vercel's function logs), not exposed in API responses.

## Dependency vulnerabilities

`npm audit` reports **0 vulnerabilities** as of this build (Next.js was upgraded to `16.3.5` and
`@types/node`/`vitest` bumped to resolve both a disclosed Next.js RCE-class advisory and a peer
dependency conflict — see the project's build history for details). Re-run `npm audit` periodically
and after adding any new dependency; Vercel and GitHub both offer automated dependency alerts
(Dependabot) if you want ongoing monitoring without having to remember to check.

## What's out of scope for this MVP (documented, not silently skipped)

- CSRF: mitigated structurally rather than with an explicit token — API routes require a valid
  Supabase session cookie (`SameSite`-protected by Supabase's client) and this isn't a
  cookie-authenticated form-post site with state-changing GET requests. Worth a dedicated review
  before handling anything higher-stakes than recipes/comments (e.g. payments).
- Formal penetration testing / third-party security audit.
- Automated dependency scanning in CI (recommended: enable GitHub Dependabot on the repo once
  pushed).
- Content moderation beyond user reports + admin review (no automated image or text moderation).

## Reporting a vulnerability

If you (or anyone) find a security issue in Kalabhavans, please email **chocksm@gmail.com**
directly rather than filing a public GitHub issue, so it can be fixed before it's publicly
disclosed. Include what you found, how to reproduce it, and its potential impact if known.
