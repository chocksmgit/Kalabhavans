import type { MetadataRoute } from "next";
import { prisma } from "@/lib/prisma";

const siteUrl = process.env.NEXT_PUBLIC_SITE_URL ?? "https://kalabhavans.com";

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const recipes = await prisma.recipe.findMany({
    select: { slug: true, updatedAt: true },
  });

  const staticRoutes: MetadataRoute.Sitemap = [
    { url: `${siteUrl}/`, changeFrequency: "daily", priority: 1 },
    { url: `${siteUrl}/explore`, changeFrequency: "daily", priority: 0.9 },
    { url: `${siteUrl}/about`, changeFrequency: "monthly", priority: 0.5 },
    { url: `${siteUrl}/contact`, changeFrequency: "yearly", priority: 0.3 },
    { url: `${siteUrl}/legal/terms`, changeFrequency: "yearly", priority: 0.2 },
    { url: `${siteUrl}/legal/privacy`, changeFrequency: "yearly", priority: 0.2 },
    { url: `${siteUrl}/legal/disclaimer`, changeFrequency: "yearly", priority: 0.2 },
  ];

  const recipeRoutes: MetadataRoute.Sitemap = recipes.map((r) => ({
    url: `${siteUrl}/recipe/${r.slug}`,
    lastModified: r.updatedAt,
    changeFrequency: "weekly",
    priority: 0.7,
  }));

  return [...staticRoutes, ...recipeRoutes];
}
