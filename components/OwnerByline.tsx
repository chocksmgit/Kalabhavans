import Link from "next/link";

type OwnerInfo = {
  ownerLabel: string | null;
  owner: { id: string; firstName: string; lastName: string } | null;
};

/**
 * Every recipe shows who it came from: "Internet" for the seed catalog, or
 * the submitting member's name — linked to that member's public profile
 * (see app/cook/[id]/page.tsx), turning attribution into discovery ("see
 * more recipes from this cook"), per the recommendation in
 * kalabhavans-website-plan.md section 6. The label is always derived
 * server-side from the `owner` relation / `ownerLabel` column — never
 * something a client can override — so authorship can't be spoofed.
 */
export default function OwnerByline({ ownerLabel, owner }: OwnerInfo) {
  if (owner) {
    return (
      <p className="text-sm text-ink-500">
        Owner:{" "}
        <Link href={`/cook/${owner.id}`} className="font-medium text-ink-700 hover:text-saffron-700 hover:underline">
          {owner.firstName} {owner.lastName}
        </Link>
      </p>
    );
  }

  return (
    <p className="text-sm text-ink-500">
      Owner: <span className="font-medium text-ink-700">{ownerLabel ?? "Internet"}</span>
    </p>
  );
}
