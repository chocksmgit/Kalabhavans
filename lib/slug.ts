import slugify from "slugify";
import { prisma } from "./prisma";

/** Generates a unique slug for a recipe title, appending -2, -3, ... on collision. */
export async function generateUniqueSlug(title: string): Promise<string> {
  const base = slugify(title, { lower: true, strict: true }) || "recipe";
  let candidate = base;
  let suffix = 1;

  while (await prisma.recipe.findUnique({ where: { slug: candidate }, select: { id: true } })) {
    suffix += 1;
    candidate = `${base}-${suffix}`;
  }

  return candidate;
}
