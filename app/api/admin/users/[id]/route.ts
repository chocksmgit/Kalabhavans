import { NextResponse } from "next/server";
import { requireAdmin } from "@/lib/auth";
import { prisma } from "@/lib/prisma";
import { createSupabaseAdminClient } from "@/lib/supabase/server";

/**
 * Promotes/demotes a member's role from the admin dashboard's Members
 * section — the UI equivalent of the `update users set role = ...` SQL
 * fallback documented in DEPLOYMENT.md, so an admin no longer needs the
 * Supabase SQL Editor for a routine role change.
 */
export async function PATCH(request: Request, { params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  let currentAdmin;
  try {
    currentAdmin = await requireAdmin();
  } catch {
    return NextResponse.json({ error: "Admin access required." }, { status: 403 });
  }

  const body = await request.json().catch(() => null);
  const role = body?.role;
  if (role !== "admin" && role !== "member") {
    return NextResponse.json({ error: "role must be 'admin' or 'member'" }, { status: 400 });
  }

  const target = await prisma.user.findUnique({ where: { id } });
  if (!target) return NextResponse.json({ error: "Member not found" }, { status: 404 });

  // An admin demoting themselves is almost always a misclick, and it's an
  // easy way to accidentally strand the site with no one who can reach
  // /admin — block it here rather than relying on the UI alone (which also
  // hides the button on your own row).
  if (target.id === currentAdmin.id && role !== "admin") {
    return NextResponse.json({ error: "You can't remove your own admin access." }, { status: 400 });
  }

  const updated = await prisma.user.update({ where: { id }, data: { role } });
  return NextResponse.json({ ok: true, role: updated.role });
}

/**
 * Removes a member entirely — for junk/bot sign-ups, not real members with
 * content to moderate. Ratings, comments, favorites and reports cascade-
 * delete with the user (see the `onDelete: Cascade` relations in
 * schema.prisma); any recipes they submitted survive (`onDelete: SetNull`
 * on Recipe.ownerId) but would otherwise show a blank owner, so we label
 * them first. We also delete the underlying Supabase Auth account —
 * without that, the login itself would still exist even though the site
 * treats them as signed out.
 */
export async function DELETE(request: Request, { params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  let currentAdmin;
  try {
    currentAdmin = await requireAdmin();
  } catch {
    return NextResponse.json({ error: "Admin access required." }, { status: 403 });
  }

  if (id === currentAdmin.id) {
    return NextResponse.json({ error: "You can't remove your own account." }, { status: 400 });
  }

  const target = await prisma.user.findUnique({ where: { id } });
  if (!target) return NextResponse.json({ error: "Member not found" }, { status: 404 });

  await prisma.recipe.updateMany({
    where: { ownerId: target.id },
    data: { ownerLabel: "Former member" },
  });

  await prisma.user.delete({ where: { id } });

  try {
    const admin = createSupabaseAdminClient();
    await admin.auth.admin.deleteUser(target.authUserId);
  } catch (err) {
    // The site's own data is already cleaned up either way — surface a
    // warning so an admin knows to double check Supabase Auth rather than
    // assuming the login was removed too.
    console.error("Failed to delete Supabase auth user", target.authUserId, err);
    return NextResponse.json({
      ok: true,
      warning:
        "Removed from the site, but their login account may still exist — check Supabase Auth.",
    });
  }

  return NextResponse.json({ ok: true });
}
