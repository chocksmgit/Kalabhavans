import type { Metadata } from "next";

export const metadata: Metadata = { title: "Terms of Use" };

export default function TermsPage() {
  return (
    <div className="mx-auto max-w-2xl px-4 py-14 sm:px-6">
      <h1 className="font-display text-3xl font-semibold text-ink-900">Terms of Use</h1>
      <p className="mt-2 text-sm text-ink-400">Effective date: September 13, 2026</p>
      <p className="mt-4 text-sm text-ink-400">
        This is a founder-drafted starting point, not formal legal advice &mdash; have a lawyer
        review it before you rely on it in a dispute.
      </p>

      <div className="mt-6 space-y-6 leading-relaxed text-ink-700">
        <p>
          Welcome to Kalabhavans (&ldquo;Kalabhavans,&rdquo; &ldquo;we,&rdquo; &ldquo;us,&rdquo; or
          &ldquo;our&rdquo;), the global recipe-sharing community at kalabhavans.com (the
          &ldquo;Service&rdquo;). These Terms of Use (&ldquo;Terms&rdquo;) govern your access to and
          use of the Service. By visiting, browsing, creating an account on, or otherwise using
          Kalabhavans, you agree to be bound by these Terms. If you don&rsquo;t agree, please
          don&rsquo;t use the Service.
        </p>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">1. Eligibility</h2>
          <p className="mt-2">
            You must be at least 18 years old to create an account or submit content on
            Kalabhavans. By registering, you confirm that you meet this requirement. Kalabhavans is
            not intended for use by anyone under 18, and we may remove any account we believe
            belongs to someone younger.
          </p>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">2. Your account</h2>
          <p className="mt-2">
            Provide accurate information when you sign up (email is required; the other fields are
            optional) and keep it up to date. You&rsquo;re responsible for keeping your password
            secure and for all activity under your account. Create only one account for yourself
            &mdash; don&rsquo;t create an account for someone else without permission, and
            don&rsquo;t impersonate another person or organization. Tell us right away at{" "}
            <a href="mailto:hello@kalabhavans.com" className="text-saffron-600 hover:underline">
              hello@kalabhavans.com
            </a>{" "}
            if you think your account has been compromised.
          </p>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">
            3. Content you submit
          </h2>
          <p className="mt-2">
            When you submit a recipe, photo, video, comment, or rating (&ldquo;Your
            Content&rdquo;), you confirm that you own it or have the right to share it, and that it
            doesn&rsquo;t infringe anyone else&rsquo;s copyright, trademark, privacy, or other
            rights.
          </p>
          <p className="mt-2">
            You keep ownership of Your Content. By posting it, you grant Kalabhavans a worldwide,
            non-exclusive, royalty-free license to host, display, reproduce, and distribute it on
            the Service (and in promotional material for the Service), for as long as it stays
            posted. Your Content is publicly attributed to you by name and linked to your cook
            profile.
          </p>
          <p className="mt-2">
            You can edit or remove Your Content at any time from your account dashboard, which ends
            this license for future use &mdash; though copies already viewed, cached, or shared by
            other users before removal may persist for a while longer.
          </p>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">
            4. Community conduct
          </h2>
          <p className="mt-2">Recipes and comments publish immediately, without pre-review. When you post, don&rsquo;t:</p>
          <ul className="mt-2 list-disc space-y-1 pl-5">
            <li>share anything false, misleading, defamatory, or infringing;</li>
            <li>
              post content that&rsquo;s abusive, hateful, harassing, sexually explicit, or
              otherwise unlawful;
            </li>
            <li>describe or promote food-handling practices you know to be unsafe;</li>
            <li>spam, scrape, or use the Service to advertise unrelated products or services;</li>
            <li>
              try to interfere with, disrupt, or gain unauthorized access to the Service or other
              users&rsquo; accounts.
            </li>
          </ul>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">
            5. Reporting &amp; removal
          </h2>
          <p className="mt-2">
            If you see a recipe or comment that shouldn&rsquo;t be here, use the Report link to
            flag it. Our team reviews reports and may remove content, or suspend or terminate
            accounts, that violate these Terms &mdash; at our discretion and without prior notice.
          </p>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">
            6. Ownership of content on the site
          </h2>
          <p className="mt-2">
            Recipes in our original seed catalog (marked <strong>Owner: Internet</strong>) were
            compiled from publicly available information; we don&rsquo;t claim authorship of the
            dishes, traditional recipes, or culinary heritage they describe. Recipes submitted by
            members belong to and are attributed to the member who shared them. See our{" "}
            <a href="/legal/disclaimer" className="text-saffron-600 hover:underline">
              Disclaimer
            </a>{" "}
            for more.
          </p>
          <p className="mt-2">
            The Kalabhavans name, logo, and site design are ours &mdash; please don&rsquo;t use them
            without our permission.
          </p>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">
            7. No warranty &mdash; use at your own risk
          </h2>
          <p className="mt-2">
            Kalabhavans is provided &ldquo;as is.&rdquo; Recipes are shared for inspiration and home
            cooking. We don&rsquo;t guarantee the accuracy, completeness, or safety of any recipe,
            ingredient list, or instruction &mdash; always use your own judgment about food safety,
            allergies, and dietary needs. See our{" "}
            <a href="/legal/disclaimer" className="text-saffron-600 hover:underline">
              Disclaimer
            </a>{" "}
            for details. To the fullest extent the law allows, we disclaim all warranties, express
            or implied, including fitness for a particular purpose and non-infringement.
          </p>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">
            8. Limitation of liability
          </h2>
          <p className="mt-2">
            To the fullest extent the law allows, Kalabhavans and its owners won&rsquo;t be liable
            for any indirect, incidental, special, or consequential damages, or any loss of data,
            arising from your use of the Service &mdash; including any illness, injury, or allergic
            reaction from preparing or consuming food based on a recipe found here. Because
            Kalabhavans is free to use, our total liability for any claim relating to the Service is
            limited to the amount, if any, you&rsquo;ve paid us in the past 12 months.
          </p>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">9. Indemnification</h2>
          <p className="mt-2">
            You agree to defend and hold Kalabhavans harmless from any claim arising from Your
            Content, your violation of these Terms, or your misuse of the Service.
          </p>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">10. Termination</h2>
          <p className="mt-2">
            We may suspend or terminate your account at any time, for any reason, including a
            violation of these Terms. You may stop using the Service and delete your account at any
            time from your account settings, or by contacting us.
          </p>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">
            11. Changes to these terms
          </h2>
          <p className="mt-2">
            We may update these Terms from time to time. If we make material changes, we&rsquo;ll
            update the effective date above. Continuing to use Kalabhavans after changes take
            effect means you accept the updated Terms.
          </p>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">12. Governing law</h2>
          <p className="mt-2">
            These Terms are governed by the laws of the United States, without regard to
            conflict-of-law principles, to the extent applicable to a service accessible worldwide.
          </p>
        </section>

        <section>
          <h2 className="font-display text-lg font-semibold text-ink-900">13. Contact us</h2>
          <p className="mt-2">
            Questions about these Terms? Reach us at{" "}
            <a href="mailto:hello@kalabhavans.com" className="text-saffron-600 hover:underline">
              hello@kalabhavans.com
            </a>
            .
          </p>
        </section>
      </div>
    </div>
  );
}
