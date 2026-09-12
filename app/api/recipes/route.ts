import { NextResponse } from "next/server";
import { requireUser } from "@/lib/auth";
import { prisma } from "@/lib/prisma";
import { recipeSubmitSchema } from "@/lib/validations";
import { generateUniqueSlug } from "@/lib/slug";
import { continentForCountry } from "@/lib/geo";

export async function POST(request: Request) {
  let user;
  try {
    user = await requireUser();
  } catch {
    return NextResponse.json({ error: "You must be signed in to submit a recipe." }, { status: 401 });
  }

  const body = await request.json().catch(() => null);
  const parsed = recipeSubmitSchema.safeParse(body);
  if (!parsed.success) {
    return NextResponse.json({ error: parsed.error.issues[0]?.message ?? "Invalid input" }, { status: 400 });
  }
  const data = parsed.data;
  const slug = await generateUniqueSlug(data.title);
  const now = new Date();

  // The submission form (and recipeSubmitSchema) only carries `country` —
  // `continent` is always derived here, server-side, so it can never drift
  // out of sync with (or be spoofed independently of) the country. The
  // schema's own `isRecognizedCountry` check means this should never throw
  // in practice, but guard anyway rather than trust that invariant blindly.
  let continent;
  try {
    continent = continentForCountry(data.country);
  } catch {
    return NextResponse.json({ error: "Unrecognized country." }, { status: 400 });
  }

  const recipe = await prisma.recipe.create({
    data: {
      slug,
      title: data.title,
      description: data.description || null,
      continent,
      country: data.country,
      region: data.region || null,
      diet: data.diet,
      isStreetFood: data.isStreetFood,
      cookTimeMin: data.cookTimeMin,
      prepTimeMin: data.prepTimeMin,
      servings: data.servings,
      difficulty: data.difficulty,
      imageUrl: data.imageUrl,
      videoUrl: data.videoUrl || null,
      // Owner and timestamps are set here, from the session and the clock —
      // never from client input, so authorship/dates can't be spoofed.
      ownerId: user.id,
      ownerLabel: null,
      originalAt: now,
      updatedAt: now,
      ingredients: {
        create: data.ingredients.map((ing, i) => ({
          name: ing.name,
          quantity: ing.quantity || null,
          sortOrder: i,
        })),
      },
      steps: {
        create: data.steps.map((instruction, i) => ({ stepNumber: i + 1, instruction })),
      },
    },
    select: { slug: true },
  });

  return NextResponse.json({ ok: true, slug: recipe.slug });
}
