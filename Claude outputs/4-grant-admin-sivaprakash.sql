-- Kalabhavans.com — grant Sivaprakash Murugan admin rights on his existing
-- account (he already signed up while testing, so adding his email to
-- ADMIN_EMAILS in lib/constants.ts only covers a fresh sign-up, not his
-- current one) and record his phone number. Safe to re-run.
update "users"
set "role" = 'admin', "phone" = '+91 730-506-4038'
where "email" = 'sivaprakashms182@gmail.com';
