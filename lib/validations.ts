import { z } from "zod";
import { isRecognizedCountry } from "./geo";

// Mirrors the Prisma enums in prisma/schema.prisma — keep in sync.
export const genderValues = ["female", "male", "non_binary", "prefer_not_to_say"] as const;
export const ageGroupValues = [
  "under_18",
  "age_18_24",
  "age_25_34",
  "age_35_44",
  "age_45_54",
  "age_55_64",
  "age_65_plus",
] as const;
export const difficultyValues = ["easy", "medium", "hard"] as const;
export const dietValues = ["vegetarian", "vegan", "non_vegetarian", "eggetarian"] as const;

/**
 * Sign-up form. Email is the required login/verification identifier; phone
 * is optional. First/last name, gender, age group, and address are all
 * collected as agreed, but only name + email are hard-required — gender, age
 * group, address, and phone are optional so the form doesn't force a choice
 * (e.g. "prefer not to say") gender/age-group already covers, but address in
 * particular can be legitimately skipped by a member who never plans to
 * receive anything by mail.
 */
export const signUpSchema = z.object({
  firstName: z.string().trim().min(1, "First name is required").max(100),
  lastName: z.string().trim().min(1, "Last name is required").max(100),
  email: z.string().trim().email("Enter a valid email address"),
  phone: z.string().trim().max(30).optional().or(z.literal("")),
  gender: z.enum(genderValues).optional(),
  ageGroup: z.enum(ageGroupValues).optional(),
  address: z.string().trim().max(500).optional().or(z.literal("")),
  password: z.string().min(8, "Password must be at least 8 characters"),
});
export type SignUpInput = z.infer<typeof signUpSchema>;

export const loginSchema = z.object({
  email: z.string().trim().email(),
  password: z.string().min(1, "Password is required"),
});
export type LoginInput = z.infer<typeof loginSchema>;

/**
 * Submit/edit a recipe. `imageUrl` is required — enforced here AND at the
 * database level (Recipe.imageUrl is NOT NULL) — matching the confirmed
 * "photo required on submission" decision. `ownerId`/`originalAt`/`updatedAt`
 * are deliberately NOT part of this schema: they are set server-side from
 * the authenticated session and the clock, never trusted from client input.
 *
 * `continent` is likewise deliberately absent — it's always derived
 * server-side from `country` via continentForCountry() (lib/geo.ts), the
 * same non-spoofable pattern, so a submission can never claim a country
 * lives on the wrong continent. `country` must be a name continentForCountry
 * recognizes (validated here so a bad country name fails fast with a clear
 * message rather than a 500 deeper in the request). `region` (state/
 * province/city) is optional — plenty of the world's dishes aren't tied to
 * one.
 */
export const recipeSubmitSchema = z.object({
  title: z.string().trim().min(3, "Title is too short").max(150),
  description: z.string().trim().max(1000).optional().or(z.literal("")),
  country: z
    .string()
    .trim()
    .min(1, "Country is required")
    .max(100)
    .refine(isRecognizedCountry, {
      message: "Enter a country's common English name (e.g. \"India\", \"Italy\", \"Japan\")",
    }),
  region: z.string().trim().max(100).optional().or(z.literal("")),
  diet: z.enum(dietValues, { errorMap: () => ({ message: "Choose a diet category" }) }),
  isStreetFood: z.coerce.boolean().optional().default(false),
  cookTimeMin: z.coerce.number().int().positive().max(1440).optional(),
  prepTimeMin: z.coerce.number().int().positive().max(1440).optional(),
  servings: z.coerce.number().int().positive().max(100).optional(),
  difficulty: z.enum(difficultyValues).default("medium"),
  imageUrl: z.string().url("A photo is required"),
  videoUrl: z.string().url().optional().or(z.literal("")),
  ingredients: z
    .array(
      z.object({
        name: z.string().trim().min(1).max(200),
        quantity: z.string().trim().max(50).optional().or(z.literal("")),
      })
    )
    .min(1, "Add at least one ingredient"),
  steps: z
    .array(z.string().trim().min(1).max(1000))
    .min(1, "Add at least one step"),
  tags: z.array(z.string().trim().min(1).max(50)).max(20).optional(),
});
export type RecipeSubmitInput = z.infer<typeof recipeSubmitSchema>;

export const ratingSchema = z.object({
  recipeId: z.string().uuid(),
  score: z.coerce.number().int().min(1).max(5),
});
export type RatingInput = z.infer<typeof ratingSchema>;

export const commentSchema = z.object({
  recipeId: z.string().uuid(),
  body: z.string().trim().min(1, "Comment can't be empty").max(2000),
});
export type CommentInput = z.infer<typeof commentSchema>;

export const reportSchema = z
  .object({
    recipeId: z.string().uuid().optional(),
    commentId: z.string().uuid().optional(),
    reason: z.string().trim().min(1, "Please describe the issue").max(500),
  })
  .refine((data) => !!data.recipeId !== !!data.commentId, {
    message: "A report must target exactly one recipe or one comment",
  });
export type ReportInput = z.infer<typeof reportSchema>;
