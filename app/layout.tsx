import type { Metadata } from "next";
import "./globals.css";
import Header from "@/components/Header";
import Footer from "@/components/Footer";
import ChromeGate from "@/components/ChromeGate";

const siteUrl = process.env.NEXT_PUBLIC_SITE_URL ?? "https://kalabhavans.com";

export const metadata: Metadata = {
  metadataBase: new URL(siteUrl),
  title: {
    default: "Kalabhavans — Discover & Share Recipes From Every Country",
    template: "%s | Kalabhavans",
  },
  description:
    "Browse everyday dishes and street food from every state and country, follow cooking instructions, rate and comment, and share your own recipes with a growing global community of home cooks.",
  openGraph: {
    type: "website",
    siteName: "Kalabhavans",
    title: "Kalabhavans — Discover & Share Recipes From Every Country",
    description:
      "Browse everyday dishes and street food from every state and country, follow cooking instructions, rate and comment, and share your own recipes.",
  },
  twitter: {
    card: "summary_large_image",
  },
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body className="flex min-h-screen flex-col font-sans antialiased">
        <ChromeGate header={<Header />} footer={<Footer />}>
          {children}
        </ChromeGate>
      </body>
    </html>
  );
}
