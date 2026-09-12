import { NextResponse } from "next/server";
import { requireUser } from "@/lib/auth";
import { prisma } from "@/lib/prisma";
import { commentSchema } from "@/lib/validations";

const RATE_LIMIT_WINDOW_MS = 60_000;
const RATE_LIMIT_MAX = 5;

export async function POST(request: Request) {
  let user;
  try {
    user = await requireUser();
  } catch {
    return NextResponse.json({ error: "You must be signed in to comment." }, { status: 401 });
  }

  const body = await request.json().catch(() => null);
  const parsed = commentSchema.safeParse(body);
  if (!parsed.success) {
    return NextResponse.json({ error: parsed.error.issues[0]?.message ?? "Invalid input" }, { status: 400 });
  }
  const { recipeId, body: text } = parsed.data;

  const recipe = await prisma.recipe.findUnique({ where: { id: recipeId }, select: { id: true } });
  if (!recipe) return NextResponse.json({ error: "Recipe not found" }, { status: 404 });

  // Basic spam guard: cap how many comments one user can post per minute.
  // A DB-backed check (rather than in-memory) so it holds across serverless
  // instances.
  const recentCount = await prisma.comment.count({
    where: { userId: user.id, createdAt: { gte: new Date(Date.now() - RATE_LIMIT_WINDOW_MS) } },
  });
  if (recentCount >= RATE_LIMIT_MAX) {
    return NextResponse.json(
      { error: "You're commenting too quickly — please wait a moment and try again." },
      { status: 429 }
    );
  }

  await prisma.comment.create({ data: { recipeId, userId: user.id, body: text } });

  return NextResponse.json({ ok: true });
}
