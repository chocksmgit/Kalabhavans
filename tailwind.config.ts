import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./app/**/*.{ts,tsx}",
    "./components/**/*.{ts,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        // Original palette for Kalabhavans — warm, spice-inspired, not copied
        // from any reference site or brand.
        saffron: {
          50: "#fff8ed",
          100: "#ffefd1",
          400: "#f5a524",
          500: "#e6890f",
          600: "#c76c0a",
          700: "#9c520c",
        },
        chili: {
          500: "#c2410c",
          600: "#9a3412",
        },
        leaf: {
          50: "#f2f8f1",
          500: "#4d7c4a",
          600: "#3c6139",
        },
        ink: {
          50: "#f7f6f4",
          100: "#eeece8",
          400: "#8a8378",
          600: "#524c43",
          800: "#2c2822",
          900: "#1b1815",
        },
      },
      fontFamily: {
        sans: ["ui-sans-serif", "system-ui", "sans-serif"],
        display: ["ui-serif", "Georgia", "serif"],
      },
    },
  },
  plugins: [],
};

export default config;
