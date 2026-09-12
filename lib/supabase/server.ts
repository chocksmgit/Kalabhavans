import { createServerClient, type CookieOptions } from "@supabase/ssr";
import { cookies } from "next/headers";

// @supabase/ssr's `createServerClient` has both a deprecated (`get`/`set`/
// `remove`) and current (`getAll`/`setAll`) overload; TypeScript's overload
// resolution contextually types object-literal `cookies` arguments against
// the *first* overload it declares, which doesn't define `setAll` — so the
// callback below loses inference and needs an explicit annotation to avoid
// implicit-`any` parameters. This is purely a typing quirk (tracked upstream
// in @supabase/ssr); the runtime behavior is unaffected either way.
type CookieToSet = { name: string; value: string; options: CookieOptions };

/**
 * Supabase client for use in Server Components, Route Handlers, and Server
 * Actions. `cookies()` is async as of Next.js 15+, so this helper is async
 * too — always `await createSupabaseServerClient()`.
 *
 * Server Components can't write cookies, so `setAll` is wrapped in a
 * try/catch: it's a no-op there and only actually runs from a Server Action
 * or Route Handler, which is fine as long as session refresh also happens in
 * middleware (see middleware.ts).
 */
export async function createSupabaseServerClient() {
  const cookieStore = await cookies();

  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    {
      cookies: {
        getAll() {
          return cookieStore.getAll();
        },
        setAll(cookiesToSet: CookieToSet[]) {
          try {
            cookiesToSet.forEach(({ name, value, options }) =>
              cookieStore.set(name, value, options)
            );
          } catch {
            // Called from a Server Component — safe to ignore; middleware
            // refreshes the session cookie on navigations.
          }
        },
      },
    }
  );
}

/**
 * Admin client using the service-role key. NEVER import this into a Client
 * Component or expose it to the browser — server-only (route handlers,
 * scripts). Used for privileged operations like the admin-role grant script.
 */
export function createSupabaseAdminClient() {
  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!,
    {
      cookies: {
        getAll: () => [],
        setAll: () => {},
      },
    }
  );
}
