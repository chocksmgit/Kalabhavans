/** Human-friendly labels for the Diet enum, used anywhere a diet value is displayed. */
export const dietLabels = {
  vegetarian: "Vegetarian",
  vegan: "Vegan",
  non_vegetarian: "Non-Vegetarian",
  eggetarian: "Eggetarian",
} as const;

/**
 * A distinct bright color per diet category, so badges are recognizable at a
 * glance while browsing (rather than every diet using the same green).
 * Tailwind classes only — pair the bg/text/ring values together wherever a
 * diet badge is rendered (RecipeCard, the recipe detail page, etc.).
 */
export const dietBadgeClasses = {
  vegetarian: "bg-leaf-100 text-leaf-700",
  vegan: "bg-teal-100 text-teal-700",
  non_vegetarian: "bg-chili-100 text-chili-700",
  eggetarian: "bg-sunny-100 text-sunny-800",
} as const;
