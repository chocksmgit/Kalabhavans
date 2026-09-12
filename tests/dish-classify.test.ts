import { describe, expect, it } from "vitest";
import { inferDiet } from "@/lib/dish-classify";

describe("inferDiet", () => {
  it("classifies a dish with an obvious meat ingredient as non_vegetarian", () => {
    expect(inferDiet(["Chicken", "Yogurt", "Garam masala"])).toBe("non_vegetarian");
    expect(inferDiet(["Mutton", "Onion"])).toBe("non_vegetarian");
    expect(inferDiet(["Fresh reef fish", "Minimal seasoning"])).toBe("non_vegetarian");
  });

  it("matches plural/irregular forms (prawns, anchovies, eggs)", () => {
    expect(inferDiet(["Prawns", "Garlic"])).toBe("non_vegetarian");
    expect(inferDiet(["Anchovies", "Olive oil"])).toBe("non_vegetarian");
  });

  it("classifies an egg-only dish (no meat/fish) as eggetarian", () => {
    expect(inferDiet(["Eggs", "Tomatoes", "Onion"])).toBe("eggetarian");
    expect(inferDiet(["Egg", "Flour", "Milk"])).toBe("eggetarian");
  });

  it("does not mistake 'eggplant' for the egg keyword", () => {
    expect(inferDiet(["Eggplant", "Ground lamb", "Tomatoes"])).toBe("non_vegetarian"); // lamb wins
    expect(inferDiet(["Eggplant", "Onion", "Tomato"])).toBe("vegetarian"); // no real egg or meat
  });

  it("classifies a dish with no meat/fish/egg keywords as vegetarian", () => {
    expect(inferDiet(["Chickpeas", "Yogurt", "Whole spices", "Ghee"])).toBe("vegetarian");
    expect(inferDiet(["Rice flour", "Coconut milk", "Sugar"])).toBe("vegetarian");
  });

  it("meat takes priority over an incidental egg mention", () => {
    expect(inferDiet(["Chicken", "Egg", "Breadcrumbs"])).toBe("non_vegetarian");
  });

  it("an explicit override always wins over inference", () => {
    // Chickpeas alone would infer "vegetarian" — an override still applies.
    expect(inferDiet(["Chickpeas", "Tahini", "Garlic"], "vegan")).toBe("vegan");
    expect(inferDiet(["Chicken"], "vegan")).toBe("vegan");
  });
});
