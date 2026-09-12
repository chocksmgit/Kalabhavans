"use client";

import { useRouter } from "next/navigation";
import { useTransition } from "react";

export default function DeleteRecipeButton({ recipeId }: { recipeId: string }) {
  const router = useRouter();
  const [isPending, startTransition] = useTransition();

  function handleDelete() {
    if (!confirm("Delete this recipe? This can't be undone.")) return;
    startTransition(async () => {
      const res = await fetch(`/api/recipes/${recipeId}`, { method: "DELETE" });
      if (res.ok) router.refresh();
    });
  }

  return (
    <button
      type="button"
      onClick={handleDelete}
      disabled={isPending}
      className="text-xs font-medium text-chili-600 hover:underline disabled:opacity-50"
    >
      Delete
    </button>
  );
}
