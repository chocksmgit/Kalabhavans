import { NextResponse } from "next/server";
import { requireAdmin } from "@/lib/auth";
import { prisma } from "@/lib/prisma";

export async function PATCH(request: Request, { params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  try {
    await requireAdmin();
  } catch {
    return NextResponse.json({ error: "Admin access required." }, { status: 403 });
  }

  const body = await request.json().catch(() => null);
  const action = body?.action;
  if (action !== "dismiss" && action !== "remove") {
    return NextResponse.json({ error: "action must be 'dismiss' or 'remove'" }, { status: 400 });
  }

  const report = await prisma.report.findUnique({ where: { id } });
  if (!report) return NextResponse.json({ error: "Report not found" }, { status: 404 });

  if (action === "remove") {
    if (report.recipeId) await prisma.recipe.delete({ where: { id: report.recipeId } }).catch(() => null);
    if (report.commentId) await prisma.comment.delete({ where: { id: report.commentId } }).catch(() => null);
  }

  await prisma.report.update({
    where: { id },
    data: { status: action === "remove" ? "actioned" : "dismissed" },
  });

  return NextResponse.json({ ok: true });
}
