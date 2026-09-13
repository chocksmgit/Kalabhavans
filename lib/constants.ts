/**
 * Emails that get the `admin` role automatically the moment they sign up.
 * This is how Chokkalingam Muthumari, Chandrakala Chokkalingam, and
 * Sivaprakash Murugan get admin rights on kalabhavans.com without any manual
 * database step — see app/api/auth/signup/route.ts. Anyone else who signs up
 * gets the default `member` role.
 *
 * To add or remove an admin later, edit this list (or use the SQL fallback
 * in DEPLOYMENT.md for someone who already has an account).
 */
export const ADMIN_EMAILS = ["chocksm@gmail.com", "kalachocks@gmail.com", "sivaprakashms182@gmail.com"];
