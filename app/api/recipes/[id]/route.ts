import { NextResponse } from "next/server";
import { requireUser } from "@/lib/auth";
import { prisma } from "@/lib/prisma";

export async function DELETE(_request: Request, { params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  let user;
  try {
    user = await requireUser();
  } catch {
    return NextResponse.json({ error: "You must be signed in." }, { status: 401 });
  }

  const recipe = await prisma.recipe.findUnique({ where: { id }, select: { ownerId: true } });
  if (!recipe) return NextResponse.json({ error: "Not found" }, { status: 404 });

  // Only the recipe's own owner or an admin may delete it — never trust a
  // client-supplied owner id for this check.
  if (recipe.ownerId !== user.id && user.role !== "admin") {
    return NextResponse.json({ error: "You can't delete this recipe." }, { status: 403 });
  }

  await prisma.recipe.delete({ where: { id } });
  return NextResponse.json({ ok: true });
}
