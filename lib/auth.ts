import { createSupabaseServerClient } from "./supabase/server";
import { prisma } from "./prisma";
import type { User } from "@prisma/client";

/**
 * Resolves the current request's Supabase session (if any) to our own
 * `User` row. This is the single source of truth for "who is logged in" on
 * the server — Server Actions and Route Handlers should call this rather
 * than trusting any user id passed in from the client.
 */
export async function getCurrentUser(): Promise<User | null> {
  const supabase = await createSupabaseServerClient();
  const {
    data: { user: authUser },
  } = await supabase.auth.getUser();

  if (!authUser) return null;

  return prisma.user.findUnique({ where: { authUserId: authUser.id } });
}

/** Throws if there's no logged-in user. Use at the top of any mutating action. */
export async function requireUser(): Promise<User> {
  const user = await getCurrentUser();
  if (!user) throw new Error("You must be signed in to do that.");
  return user;
}

/** Throws unless the current user is an admin. Use at the top of admin-only actions. */
export async function requireAdmin(): Promise<User> {
  const user = await requireUser();
  if (user.role !== "admin") throw new Error("Admin access required.");
  return user;
}
