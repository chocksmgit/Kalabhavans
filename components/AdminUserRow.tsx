"use client";

import { useRouter } from "next/navigation";
import { useTransition } from "react";

export default function AdminUserRow({
  userId,
  name,
  email,
  joined,
  recipeCount,
  role,
  isYou,
}: {
  userId: string;
  name: string;
  email: string;
  joined: string;
  recipeCount: number;
  role: "admin" | "member";
  isYou: boolean;
}) {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();

  function setRole(nextRole: "admin" | "member") {
    const verb = nextRole === "admin" ? "Make" : "Remove";
    if (!confirm(`${verb} ${name} ${nextRole === "admin" ? "an admin" : "as admin"}?`)) return;
    startTransition(async () => {
      const res = await fetch(`/api/admin/users/${userId}`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ role: nextRole }),
      });
      if (res.ok) router.refresh();
      else {
        const body = await res.json().catch(() => null);
        alert(body?.error ?? "Something went wrong.");
      }
    });
  }

  return (
    <tr className="border-b border-ink-100 last:border-0">
      <td className="py-3 pr-4">
        <div className="font-medium text-ink-900">
          {name}
          {isYou && <span className="ml-1.5 text-xs font-normal text-ink-400">(you)</span>}
        </div>
        <div className="text-xs text-ink-500">{email}</div>
      </td>
      <td className="py-3 pr-4 text-sm text-ink-600">{joined}</td>
      <td className="py-3 pr-4 text-sm text-ink-600">{recipeCount}</td>
      <td className="py-3 pr-4">
        <span
          className={`rounded-full px-2 py-0.5 text-[10px] font-semibold uppercase tracking-wide ${
            role === "admin" ? "bg-chili-100 text-chili-700" : "bg-ink-100 text-ink-600"
          }`}
        >
          {role === "admin" ? "Admin" : "Member"}
        </span>
      </td>
      <td className="py-3 text-right">
        {!isYou &&
          (role === "admin" ? (
            <button
              type="button"
              disabled={isPending}
              onClick={() => setRole("member")}
              className="rounded-full border border-ink-200 px-3 py-1 text-sm text-ink-600 hover:bg-ink-50"
            >
              Remove admin
            </button>
          ) : (
            <button
              type="button"
              disabled={isPending}
              onClick={() => setRole("admin")}
              className="rounded-full bg-gradient-to-r from-saffron-500 via-chili-500 to-berry-600 px-3 py-1 text-sm font-semibold text-white hover:brightness-110"
            >
              Make admin
            </button>
          ))}
      </td>
    </tr>
  );
}
