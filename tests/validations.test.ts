import { describe, expect, it } from "vitest";
import {
  signUpSchema,
  loginSchema,
  recipeSubmitSchema,
  ratingSchema,
  commentSchema,
  reportSchema,
} from "@/lib/validations";

describe("signUpSchema", () => {
  const base = {
    firstName: "Chandrakala",
    lastName: "Chokkalingam",
    email: "kalachocks@gmail.com",
    password: "correct-horse",
    ageConfirmed: true,
  };

  it("accepts the minimum required fields (email required, everything else optional)", () => {
    const result = signUpSchema.safeParse(base);
    expect(result.success).toBe(true);
  });

  it("accepts a fully filled-out sign-up including optional phone/gender/age/address", () => {
    const result = signUpSchema.safeParse({
      ...base,
      phone: "+1 555 123 4567",
      gender: "female",
      ageGroup: "age_35_44",
      address: "123 Main St",
    });
    expect(result.success).toBe(true);
  });

  it("rejects a missing email — email is mandatory", () => {
    const { email, ...withoutEmail } = base;
    const result = signUpSchema.safeParse(withoutEmail);
    expect(result.success).toBe(false);
  });

  it("rejects an invalid email format", () => {
    const result = signUpSchema.safeParse({ ...base, email: "not-an-email" });
    expect(result.success).toBe(false);
  });

  it("rejects a password shorter than 8 characters", () => {
    const result = signUpSchema.safeParse({ ...base, password: "short" });
    expect(result.success).toBe(false);
  });

  it("rejects an unrecognized gender or age group value", () => {
    expect(signUpSchema.safeParse({ ...base, gender: "other" }).success).toBe(false);
    expect(signUpSchema.safeParse({ ...base, ageGroup: "teen" }).success).toBe(false);
  });

  it("rejects 'under_18' as an age group — the Terms of Use require sign-ups to be 18+", () => {
    expect(signUpSchema.safeParse({ ...base, ageGroup: "under_18" }).success).toBe(false);
  });

  it("rejects a sign-up that hasn't confirmed the 18+ age requirement", () => {
    const { ageConfirmed, ...withoutAgeConfirmed } = base;
    expect(signUpSchema.safeParse(withoutAgeConfirmed).success).toBe(false);
    expect(signUpSchema.safeParse({ ...base, ageConfirmed: false }).success).toBe(false);
  });

  it("allows phone to be omitted entirely or passed as an empty string", () => {
    expect(signUpSchema.safeParse(base).success).toBe(true);
    expect(signUpSchema.safeParse({ ...base, phone: "" }).success).toBe(true);
  });

  it("allows gender and age group to be passed as an empty string, not just omitted", () => {
    // Regression test: the sign-up form's <select> for each field defaults
    // to an empty-string value when a visitor leaves it untouched (exactly
    // what the "(optional)" label invites), not `undefined`. An earlier
    // version of this schema only special-cased `undefined` via `.optional()`
    // and rejected "" with a confusing "Invalid enum value ... received ''"
    // error — even though both fields are meant to be skippable.
    expect(signUpSchema.safeParse({ ...base, gender: "" }).success).toBe(true);
    expect(signUpSchema.safeParse({ ...base, ageGroup: "" }).success).toBe(true);
  });
});

describe("loginSchema", () => {
  it("requires a valid email and a non-empty password", () => {
    expect(
      loginSchema.safeParse({ email: "chocksm@gmail.com", password: "x" }).success
    ).toBe(true);
    expect(loginSchema.safeParse({ email: "chocksm@gmail.com", password: "" }).success).toBe(
      false
    );
    expect(loginSchema.safeParse({ email: "bad", password: "x" }).success).toBe(false);
  });
});

describe("recipeSubmitSchema", () => {
  const base = {
    title: "Masala Dosa",
    country: "India",
    region: "Karnataka",
    diet: "vegetarian",
    imageUrl: "https://example.com/dosa.jpg",
    ingredients: [{ name: "Rice", quantity: "2 cups" }],
    steps: ["Soak the rice and lentils overnight.", "Grind into a batter and ferment."],
  };

  it("accepts a well-formed submission and defaults difficulty to medium", () => {
    const result = recipeSubmitSchema.safeParse(base);
    expect(result.success).toBe(true);
    if (result.success) {
      expect(result.data.difficulty).toBe("medium");
    }
  });

  it("requires a photo (imageUrl) — recipe submission without one is rejected", () => {
    const { imageUrl, ...withoutImage } = base;
    expect(recipeSubmitSchema.safeParse(withoutImage).success).toBe(false);
  });

  it("rejects an imageUrl that isn't a valid URL", () => {
    expect(recipeSubmitSchema.safeParse({ ...base, imageUrl: "not-a-url" }).success).toBe(false);
  });

  it("requires at least one ingredient and one step", () => {
    expect(recipeSubmitSchema.safeParse({ ...base, ingredients: [] }).success).toBe(false);
    expect(recipeSubmitSchema.safeParse({ ...base, steps: [] }).success).toBe(false);
  });

  it("requires a recognized country — the site welcomes every country, but a typo shouldn't silently mis-file a dish", () => {
    const { country, ...withoutCountry } = base;
    expect(recipeSubmitSchema.safeParse(withoutCountry).success).toBe(false);
    expect(recipeSubmitSchema.safeParse({ ...base, country: "Freedonia" }).success).toBe(false);
  });

  it("accepts common alternate country spellings (e.g. USA, UK, South Korea)", () => {
    expect(recipeSubmitSchema.safeParse({ ...base, country: "USA" }).success).toBe(true);
    expect(recipeSubmitSchema.safeParse({ ...base, country: "UK" }).success).toBe(true);
    expect(recipeSubmitSchema.safeParse({ ...base, country: "South Korea" }).success).toBe(true);
    expect(recipeSubmitSchema.safeParse({ ...base, country: "Turkey" }).success).toBe(true);
  });

  it("makes region (state/province) optional — not every country's dish has one", () => {
    const { region, ...withoutRegion } = base;
    expect(recipeSubmitSchema.safeParse(withoutRegion).success).toBe(true);
    expect(recipeSubmitSchema.safeParse({ ...base, region: "" }).success).toBe(true);
  });

  it("requires a diet category from the fixed enum", () => {
    const { diet, ...withoutDiet } = base;
    expect(recipeSubmitSchema.safeParse(withoutDiet).success).toBe(false);
    expect(recipeSubmitSchema.safeParse({ ...base, diet: "carnivore" }).success).toBe(false);
    for (const d of ["vegetarian", "vegan", "non_vegetarian", "eggetarian"]) {
      expect(recipeSubmitSchema.safeParse({ ...base, diet: d }).success).toBe(true);
    }
  });

  it("defaults isStreetFood to false when omitted, and accepts an explicit true", () => {
    const result = recipeSubmitSchema.safeParse(base);
    expect(result.success && result.data.isStreetFood).toBe(false);
    const withStreetFood = recipeSubmitSchema.safeParse({ ...base, isStreetFood: true });
    expect(withStreetFood.success && withStreetFood.data.isStreetFood).toBe(true);
  });

  it("never accepts a client-supplied continent — it's always derived server-side from country", () => {
    const result = recipeSubmitSchema.safeParse({ ...base, continent: "africa" });
    expect(result.success).toBe(true);
    if (result.success) {
      expect((result.data as Record<string, unknown>).continent).toBeUndefined();
    }
  });

  it("never accepts client-supplied ownerId/originalAt/updatedAt fields as part of the schema", () => {
    // These fields simply aren't in the schema shape — Zod strips unknown
    // keys by default, so even if a malicious client sends them they never
    // reach the parsed output the API route trusts.
    const result = recipeSubmitSchema.safeParse({
      ...base,
      ownerId: "someone-elses-id",
      originalAt: "2000-01-01T00:00:00Z",
    });
    expect(result.success).toBe(true);
    if (result.success) {
      expect((result.data as Record<string, unknown>).ownerId).toBeUndefined();
      expect((result.data as Record<string, unknown>).originalAt).toBeUndefined();
    }
  });

  it("rejects a title that's too short", () => {
    expect(recipeSubmitSchema.safeParse({ ...base, title: "Hi" }).success).toBe(false);
  });
});

describe("ratingSchema", () => {
  const recipeId = "11111111-1111-1111-1111-111111111111";

  it("accepts an integer score from 1 to 5", () => {
    for (const score of [1, 2, 3, 4, 5]) {
      expect(ratingSchema.safeParse({ recipeId, score }).success).toBe(true);
    }
  });

  it("rejects a score of 0 or 6", () => {
    expect(ratingSchema.safeParse({ recipeId, score: 0 }).success).toBe(false);
    expect(ratingSchema.safeParse({ recipeId, score: 6 }).success).toBe(false);
  });

  it("rejects a non-UUID recipeId", () => {
    expect(ratingSchema.safeParse({ recipeId: "not-a-uuid", score: 5 }).success).toBe(false);
  });
});

describe("commentSchema", () => {
  const recipeId = "11111111-1111-1111-1111-111111111111";

  it("rejects an empty comment body", () => {
    expect(commentSchema.safeParse({ recipeId, body: "" }).success).toBe(false);
    expect(commentSchema.safeParse({ recipeId, body: "   " }).success).toBe(false);
  });

  it("accepts a normal comment", () => {
    expect(commentSchema.safeParse({ recipeId, body: "Delicious, thank you!" }).success).toBe(
      true
    );
  });
});

describe("reportSchema", () => {
  const recipeId = "11111111-1111-1111-1111-111111111111";
  const commentId = "22222222-2222-2222-2222-222222222222";

  it("accepts a report targeting exactly one recipe", () => {
    expect(reportSchema.safeParse({ recipeId, reason: "Looks unsafe" }).success).toBe(true);
  });

  it("accepts a report targeting exactly one comment", () => {
    expect(reportSchema.safeParse({ commentId, reason: "Spam" }).success).toBe(true);
  });

  it("rejects a report with both recipeId and commentId set", () => {
    expect(
      reportSchema.safeParse({ recipeId, commentId, reason: "Ambiguous target" }).success
    ).toBe(false);
  });

  it("rejects a report with neither recipeId nor commentId set", () => {
    expect(reportSchema.safeParse({ reason: "Missing target" }).success).toBe(false);
  });
});
