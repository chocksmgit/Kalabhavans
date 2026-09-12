import { NextResponse } from "next/server";
import { requireUser } from "@/lib/auth";
import { prisma } from "@/lib/prisma";
import { ratingSchema } from "@/lib/validations";
import { deriveRatingAggregate } from "@/lib/rating-utils";

export async function POST(request: Request) {
  let user;
  try {
    user = await requireUser();
  } catch {
    return NextResponse.json({ error: "You must be signed in to rate a recipe." }, { status: 401 });
  }

  const body = await request.json().catch(() => null);
  const parsed = ratingSchema.safeParse(body);
  if (!parsed.success) {
    return NextResponse.json({ error: parsed.error.issues[0]?.message ?? "Invalid input" }, { status: 400 });
  }
  const { recipeId, score } = parsed.data;

  const recipe = await prisma.recipe.findUnique({ where: { id: recipeId }, select: { id: true } });
  if (!recipe) return NextResponse.json({ error: "Recipe not found" }, { status: 404 });

  // One editable rating per user per recipe (upsert), then recompute the
  // cached avgRating/ratingCount on the recipe so the Top Rated ticker and
  // recipe cards stay cheap to query.
  await prisma.$transaction(async (tx) => {
    await tx.rating.upsert({
      where: { recipeId_userId: { recipeId, userId: user.id } },
      update: { score },
      create: { recipeId, userId: user.id, score },
    });

    const agg = await tx.rating.aggregate({
      where: { recipeId },
      _avg: { score: true },
      _count: { score: true },
    });

    await tx.recipe.update({
      where: { id: recipeId },
      data: deriveRatingAggregate(agg._avg.score, agg._count.score),
    });
  });

  return NextResponse.json({ ok: true });
}
