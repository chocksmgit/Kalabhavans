import type { Metadata } from "next";
import { redirect } from "next/navigation";
import { getCurrentUser } from "@/lib/auth";
import { prisma } from "@/lib/prisma";
import { formatDate } from "@/lib/format";
import AdminReportRow from "@/components/AdminReportRow";
import AdminUserRow from "@/components/AdminUserRow";

export const metadata: Metadata = { title: "Admin" };

export default async function AdminPage() {
  const user = await getCurrentUser();
  if (!user) redirect("/login?next=/admin");
  if (user.role !== "admin") redirect("/");

  const [openReports, members, recipeCount] = await Promise.all([
    prisma.report.findMany({
      where: { status: "open" },
      orderBy: { createdAt: "asc" },
      include: {
        reporter: { select: { firstName: true, lastName: true } },
        recipe: { select: { slug: true, title: true } },
        comment: { select: { body: true, recipe: { select: { slug: true, title: true } } } },
      },
    }),
    prisma.user.findMany({
      orderBy: { createdAt: "desc" },
      select: {
        id: true,
        firstName: true,
        lastName: true,
        email: true,
        role: true,
        createdAt: true,
        _count: { select: { recipes: true } },
      },
    }),
    prisma.recipe.count(),
  ]);

  return (
    <div className="mx-auto max-w-5xl px-4 py-10 sm:px-6">
      <h1 className="font-display text-3xl font-semibold text-ink-900">Admin</h1>
      <div className="mt-2 flex gap-6 text-sm text-ink-500">
        <span>{members.length} members</span>
        <span>{recipeCount} recipes</span>
        <span>{openReports.length} open reports</span>
      </div>

      <section className="mt-8">
        <h2 className="font-display text-xl font-semibold text-ink-900">Members</h2>
        <p className="mt-1 text-sm text-ink-500">
          Everyone who&rsquo;s signed up, newest first. Promote someone to admin or step them back
          down right from here &mdash; no SQL needed.
        </p>

        <div className="mt-4 overflow-x-auto">
          <table className="w-full text-left">
            <thead>
              <tr className="border-b border-ink-200 text-xs uppercase tracking-wide text-ink-500">
                <th className="pb-2 pr-4">Member</th>
                <th className="pb-2 pr-4">Joined</th>
                <th className="pb-2 pr-4">Recipes</th>
                <th className="pb-2 pr-4">Role</th>
                <th className="pb-2"></th>
              </tr>
            </thead>
            <tbody>
              {members.map((m) => (
                <AdminUserRow
                  key={m.id}
                  userId={m.id}
                  name={`${m.firstName} ${m.lastName}`}
                  email={m.email}
                  joined={formatDate(m.createdAt)}
                  recipeCount={m._count.recipes}
                  role={m.role}
                  isYou={m.id === user.id}
                />
              ))}
            </tbody>
          </table>
        </div>
      </section>

      <section className="mt-8">
        <h2 className="font-display text-xl font-semibold text-ink-900">Reported Content</h2>
        <p className="mt-1 text-sm text-ink-500">
          Since recipes and comments auto-publish, this queue is the safety valve — review and
          remove anything that shouldn&rsquo;t be here.
        </p>

        {openReports.length === 0 ? (
          <p className="mt-4 text-sm text-ink-400">Nothing reported right now.</p>
        ) : (
          <ul className="mt-4 space-y-3">
            {openReports.map((report) => {
              const isComment = !!report.comment;
              const label = isComment
                ? `Comment on "${report.comment?.recipe.title}"`
                : report.recipe?.title ?? "Deleted recipe";
              const href = isComment ? `/recipe/${report.comment?.recipe.slug}` : `/recipe/${report.recipe?.slug}`;

              return (
                <AdminReportRow
                  key={report.id}
                  reportId={report.id}
                  label={label}
                  href={href}
                  reason={report.reason}
                  reporterName={`${report.reporter.firstName} ${report.reporter.lastName}`}
                />
              );
            })}
          </ul>
        )}
      </section>
    </div>
  );
}
