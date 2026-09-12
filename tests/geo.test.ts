import { describe, expect, it } from "vitest";
import { continentForCountry, isRecognizedCountry, allCountryNames } from "@/lib/geo";

describe("continentForCountry", () => {
  it("resolves well-known countries to the right continent", () => {
    expect(continentForCountry("India")).toBe("asia");
    expect(continentForCountry("Italy")).toBe("europe");
    expect(continentForCountry("Nigeria")).toBe("africa");
    expect(continentForCountry("Brazil")).toBe("south_america");
    expect(continentForCountry("United States")).toBe("north_america");
    expect(continentForCountry("Australia")).toBe("oceania");
  });

  it("is case-insensitive and trims whitespace", () => {
    expect(continentForCountry("  india  ")).toBe("asia");
    expect(continentForCountry("ITALY")).toBe("europe");
  });

  it("resolves common short forms/aliases", () => {
    expect(continentForCountry("USA")).toBe("north_america");
    expect(continentForCountry("UK")).toBe("europe");
    expect(continentForCountry("South Korea")).toBe("asia");
    // "Turkey" is an alias for the country-list library's canonical "Türkiye".
    expect(continentForCountry("Turkey")).toBe("asia");
  });

  it("throws a descriptive error for an unrecognized country rather than guessing", () => {
    expect(() => continentForCountry("Freedonia")).toThrow(/couldn't recognize/i);
  });
});

describe("isRecognizedCountry", () => {
  it("agrees with continentForCountry's success/failure", () => {
    expect(isRecognizedCountry("India")).toBe(true);
    expect(isRecognizedCountry("Japan")).toBe(true);
    expect(isRecognizedCountry("Not A Real Country")).toBe(false);
  });
});

describe("allCountryNames", () => {
  it("returns a large, sorted, deduplicated-by-construction list", () => {
    const names = allCountryNames();
    expect(names.length).toBeGreaterThan(190); // ~250 in countries-list
    expect(names).toContain("India");
    expect(names).toContain("Italy");
    const sorted = [...names].sort((a, b) => a.localeCompare(b));
    expect(names).toEqual(sorted);
  });
});
