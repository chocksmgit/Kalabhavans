-- Kalabhavans.com — fixes "Photo upload failed: new row violates row-level
-- security policy" when a logged-in member submits a recipe.
--
-- Supabase Storage keeps every uploaded file as a row in storage.objects,
-- which has Row Level Security turned on by default. DEPLOYMENT.md step 4
-- asked for an "allow authenticated uploads" policy on the recipe-media
-- bucket via the dashboard wizard — this either wasn't added yet, or the
-- wizard's version didn't match how this app actually uploads (a flat
-- <uuid>-<filename> path, not a per-user folder), so INSERTs into that
-- bucket are being rejected. This script creates the exact policy this
-- app needs directly, replacing any mismatched one of the same name.
--
-- Safe to re-run.

drop policy if exists "recipe-media authenticated upload" on storage.objects;

create policy "recipe-media authenticated upload"
on storage.objects
for insert
to authenticated
with check ( bucket_id = 'recipe-media' );

-- Recipe photos are never edited/replaced in place today (a resubmission
-- uploads a fresh <uuid>-<filename>), but this covers it if that changes.
drop policy if exists "recipe-media authenticated update" on storage.objects;

create policy "recipe-media authenticated update"
on storage.objects
for update
to authenticated
using ( bucket_id = 'recipe-media' )
with check ( bucket_id = 'recipe-media' );

-- Public read so recipe photos load for signed-out visitors too (matches
-- the bucket already being marked "Public" per DEPLOYMENT.md step 4.3 —
-- this just makes sure the read policy exists as a matching RLS rule
-- rather than relying only on the bucket-level public flag).
drop policy if exists "recipe-media public read" on storage.objects;

create policy "recipe-media public read"
on storage.objects
for select
to public
using ( bucket_id = 'recipe-media' );
