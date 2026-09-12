import { defineConfig } from "vitest/config";
import path from "node:path";

// Minimal config: just enough to resolve the "@/*" path alias used
// throughout the app (mirrors tsconfig.json's "paths") so unit tests can
// import lib/ modules the same way the app does.
export default defineConfig({
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "."),
    },
  },
  test: {
    environment: "node",
    include: ["tests/**/*.test.ts"],
  },
});
