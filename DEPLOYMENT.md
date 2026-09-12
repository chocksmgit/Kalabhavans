# Deploying Kalabhavans.com

This is the exact path from this codebase to a live site at **kalabhavans.com**, using the stack
recommended in the project plan: **Vercel** (hosting) + **Supabase** (database, auth, file
storage). Both have free tiers that are enough to launch on.

I can't create these accounts for you — they need your own login, billing details, and identity
verification. Everything below is written so you can follow it yourself, step by step. If you're
at your computer with this session linked to it, I can also walk through it with you live.

Budget about 30–45 minutes for a first-time setup.

---

## 1. Push this code to GitHub

Vercel deploys from a Git repository.

1. Create a new, empty repository on GitHub (e.g. `kalabhavans`) — don't initialize it with a
   README (this project already has one).
2. From this project's folder:
   ```bash
   git init
   git add .
   git commit -m "Initial Kalabhavans.com codebase"
   git branch -M main
   git remote add origin https://github.com/<your-username>/kalabhavans.git
   git push -u origin main
   ```

## 2. Create a Supabase project

1. Go to [supabase.com](https://supabase.com) and sign up (free tier is fine to start).
2. Create a new project. Pick a strong database password and **save it somewhere safe** — you'll
   need it for the connection string.
3. Once the project finishes provisioning, go to **Project Settings → API** and copy:
   - **Project URL** → this is `NEXT_PUBLIC_SUPABASE_URL`
   - **anon public** key → this is `NEXT_PUBLIC_SUPABASE_ANON_KEY`
   - **service_role** key (click "reveal") → this is `SUPABASE_SERVICE_ROLE_KEY`. Treat this like
     a password — never put it in a client-side file or commit it.
4. Go to **Project Settings → Database** and copy:
   - The **Connection pooling** string (port 6543) → this is `DATABASE_URL`. Add
     `?pgbouncer=true` to the end if it isn't already there.
   - The **direct connection** string (port 5432) → this is `DIRECT_URL`.
   Both contain the database password from step 2 — swap in the real password if the copied
   string shows a placeholder.

## 3. Configure email/password sign-up in Supabase

1. Go to **Authentication → Providers** and confirm **Email** is enabled (it is by default).
2. Go to **Authentication → URL Configuration** and set the **Site URL** to
   `https://kalabhavans.com` (you can add `http://localhost:3000` under "Redirect URLs" too, for
   local testing).
3. Decide whether to require email confirmation (**Authentication → Providers → Email → Confirm
   email**). Recommended: leave it **on** — it's a basic protection against fake sign-ups, and the
   sign-up form already handles the "check your email" case.

## 4. Create the recipe-photo storage bucket

1. Go to **Storage** in Supabase and click **New bucket**.
2. Name it `recipe-media` (matches the default in `.env.example` — use a different name only if
   you also change `NEXT_PUBLIC_SUPABASE_STORAGE_BUCKET`).
3. Set it to **Public** (photos need to be viewable on recipe pages without extra tokens).
4. Under the bucket's **Policies**, add a policy allowing `INSERT` for authenticated users (so
   logged-in members can upload a photo when submitting a recipe) — Supabase's bucket creation
   wizard offers a standard "allow authenticated uploads" template you can pick.

## 5. Set environment variables in Vercel

1. Go to [vercel.com](https://vercel.com), sign up, and click **Add New → Project**.
2. Import the GitHub repo you pushed in step 1.
3. Before the first deploy, open **Environment Variables** and add every value from
   `.env.example`, using the real values you copied from Supabase in steps 2–4:
   - `DATABASE_URL`, `DIRECT_URL`
   - `NEXT_PUBLIC_SUPABASE_URL`, `NEXT_PUBLIC_SUPABASE_ANON_KEY`, `SUPABASE_SERVICE_ROLE_KEY`
   - `NEXT_PUBLIC_SUPABASE_STORAGE_BUCKET` = `recipe-media`
   - `NEXT_PUBLIC_SITE_URL` = `https://kalabhavans.com`
4. Click **Deploy**. The first deploy will build the app; the database is still empty at this
   point, so the site will run but show no recipes yet — that's expected, step 6 fixes it.

## 6. Run migrations and load the seed catalog

From your own computer (needs normal internet access to reach both Supabase and Prisma's engine
download — see the Troubleshooting note in README.md if this fails in a restricted network):

```bash
npm install
cp .env.example .env.local   # fill in the same values you put into Vercel
npm run db:deploy            # creates all tables in your Supabase database
npm run db:seed              # loads the ~125 seed dishes across 25 countries (Owner: Internet)
```

Refresh the live site — recipes should now appear on the homepage and Explore page.

## 7. Point kalabhavans.com at Vercel (GoDaddy DNS)

1. In Vercel, open your project → **Settings → Domains** → add `kalabhavans.com` (and
   `www.kalabhavans.com` if you want both).
2. Vercel shows you the exact DNS records to add — usually an **A record** for the bare domain
   pointing at Vercel's IP, and a **CNAME record** for `www` pointing at `cname.vercel-dns.com`.
3. Log into [GoDaddy](https://godaddy.com) → **My Products → DNS** for kalabhavans.com, and add
   those exact records (edit the existing A/CNAME record if GoDaddy's default "parked page" record
   is already there, rather than adding a duplicate).
4. DNS changes can take anywhere from a few minutes to a few hours to propagate. Vercel's Domains
   page will show a green checkmark once it detects the records and issues an HTTPS certificate
   automatically — no separate SSL step needed.

## 8. Grant admin rights to Chokkalingam and Chandrakala

This is already built in: **the moment an account signs up with the email `chocksm@gmail.com` or
`kalachocks@gmail.com`, it automatically becomes an admin** (see `lib/constants.ts` and
`app/api/auth/signup/route.ts`). So once the site is live:

1. Go to `https://kalabhavans.com/signup` and create an account with `chocksm@gmail.com`.
2. Do the same with `kalachocks@gmail.com`.
3. Confirm each email if email confirmation is on (step 3).
4. Log in with either account and visit `/admin` — you should see the moderation dashboard, and
   the header will show an "Admin" link.

**If someone already has a non-admin account and you want to promote them later** (a third person,
or if `lib/constants.ts` needs updating for some reason): edit `ADMIN_EMAILS` in
`lib/constants.ts`, redeploy, or run this SQL once in Supabase's **SQL Editor** for a one-off
promotion without a redeploy:

```sql
update users set role = 'admin' where email = 'someone@example.com';
```

## 9. Final checks before sharing the link

- [ ] Homepage loads with the Top Rated ticker and Recently Added grid
- [ ] Explore page filters by region and search work
- [ ] A few recipe photo links actually load (see the photo-verification caveat in the project's
      `kalabhavans-india-ingredients-dishes.md` doc and `kalabhavans-website-plan.md` section 0 —
      some India seed photos are unverified and a couple may 404, and all ~50 world-dish photos
      are `null`/placeholder pending real sourced photography; swap those in as you find them)
- [ ] Sign up with a test account, confirm the email flow works, log in
- [ ] Submit a test recipe with a photo — confirm it appears with your name as Owner
- [ ] Rate and comment on a recipe
- [ ] Report a piece of content, then confirm it shows up in `/admin` for the two admin accounts
- [ ] `kalabhavans.com` loads over HTTPS with no certificate warning

## Rollback

Vercel keeps every previous deployment. If a deploy breaks something, go to **Deployments** in the
Vercel dashboard and click **Promote to Production** on the last good one — instant rollback, no
code changes needed.

## Ongoing maintenance

- **Backups**: Supabase takes automatic daily backups on paid plans; on the free tier, consider
  periodically exporting your data (Supabase's dashboard has a one-click SQL/CSV export) until
  you're ready to upgrade.
- **Monitoring**: Vercel's dashboard shows build/runtime errors and basic traffic; Supabase's
  dashboard shows database load and API usage. Neither costs anything extra to check.
- **Updating the seed catalog**: edit `prisma/seed-data.ts` and re-run `npm run db:seed` — it's an
  upsert, so it won't duplicate existing rows or overwrite a seed recipe an admin has since edited.
