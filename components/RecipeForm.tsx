"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { createSupabaseBrowserClient } from "@/lib/supabase/client";

type IngredientRow = { name: string; quantity: string };

const BUCKET = process.env.NEXT_PUBLIC_SUPABASE_STORAGE_BUCKET || "recipe-media";

export default function RecipeForm({ countries }: { countries: string[] }) {
  const router = useRouter();
  const [title, setTitle] = useState("");
  const [country, setCountry] = useState("");
  const [region, setRegion] = useState("");
  const [diet, setDiet] = useState("vegetarian");
  const [isStreetFood, setIsStreetFood] = useState(false);
  const [description, setDescription] = useState("");
  const [prepTimeMin, setPrepTimeMin] = useState("");
  const [cookTimeMin, setCookTimeMin] = useState("");
  const [servings, setServings] = useState("");
  const [difficulty, setDifficulty] = useState("medium");
  const [ingredients, setIngredients] = useState<IngredientRow[]>([{ name: "", quantity: "" }]);
  const [steps, setSteps] = useState<string[]>([""]);
  const [photoFile, setPhotoFile] = useState<File | null>(null);
  const [videoUrl, setVideoUrl] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [submitting, setSubmitting] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);

    if (!photoFile) {
      setError("A photo is required to submit a recipe.");
      return;
    }

    setSubmitting(true);
    try {
      // 1. Upload the required photo to Supabase Storage and get its public URL.
      const supabase = createSupabaseBrowserClient();
      const path = `${crypto.randomUUID()}-${photoFile.name}`;
      const { error: uploadError } = await supabase.storage.from(BUCKET).upload(path, photoFile);
      if (uploadError) {
        setError(`Photo upload failed: ${uploadError.message}`);
        return;
      }
      const { data: publicUrlData } = supabase.storage.from(BUCKET).getPublicUrl(path);

      // 2. Submit the recipe. The server sets Owner + Original/Updated
      // timestamps from the session and the clock — never from this payload.
      const res = await fetch("/api/recipes", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          title,
          country,
          region: region || undefined,
          diet,
          isStreetFood,
          description,
          prepTimeMin: prepTimeMin || undefined,
          cookTimeMin: cookTimeMin || undefined,
          servings: servings || undefined,
          difficulty,
          imageUrl: publicUrlData.publicUrl,
          videoUrl: videoUrl || undefined,
          ingredients: ingredients.filter((i) => i.name.trim()),
          steps: steps.map((s) => s.trim()).filter(Boolean),
        }),
      });

      const data = await res.json();
      if (!res.ok) {
        setError(data.error ?? "Couldn't publish your recipe.");
        return;
      }

      router.push(`/recipe/${data.slug}`);
    } finally {
      setSubmitting(false);
    }
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-6">
      <Field label="Title" required>
        <input required value={title} onChange={(e) => setTitle(e.target.value)} className={inputClass} />
      </Field>

      <div className="grid grid-cols-2 gap-3">
        <Field label="Country" required>
          <input
            required
            list="country-options"
            value={country}
            onChange={(e) => setCountry(e.target.value)}
            placeholder="e.g. India, Italy, Japan..."
            className={inputClass}
          />
          <datalist id="country-options">
            {countries.map((c) => (
              <option key={c} value={c} />
            ))}
          </datalist>
        </Field>
        <Field label="State / Region (optional)">
          <input
            value={region}
            onChange={(e) => setRegion(e.target.value)}
            placeholder="e.g. Punjab, Sichuan, Tuscany..."
            className={inputClass}
          />
        </Field>
      </div>

      <Field label="Description (optional)">
        <textarea value={description} onChange={(e) => setDescription(e.target.value)} rows={3} className={inputClass} />
      </Field>

      <div className="grid grid-cols-3 gap-3">
        <Field label="Prep time (min)">
          <input type="number" min={1} value={prepTimeMin} onChange={(e) => setPrepTimeMin(e.target.value)} className={inputClass} />
        </Field>
        <Field label="Cook time (min)">
          <input type="number" min={1} value={cookTimeMin} onChange={(e) => setCookTimeMin(e.target.value)} className={inputClass} />
        </Field>
        <Field label="Servings">
          <input type="number" min={1} value={servings} onChange={(e) => setServings(e.target.value)} className={inputClass} />
        </Field>
      </div>

      <div className="grid grid-cols-2 gap-3">
        <Field label="Difficulty">
          <select value={difficulty} onChange={(e) => setDifficulty(e.target.value)} className={inputClass}>
            <option value="easy">Easy</option>
            <option value="medium">Medium</option>
            <option value="hard">Hard</option>
          </select>
        </Field>
        <Field label="Diet" required>
          <select value={diet} onChange={(e) => setDiet(e.target.value)} className={inputClass}>
            <option value="vegetarian">Vegetarian</option>
            <option value="vegan">Vegan</option>
            <option value="non_vegetarian">Non-Vegetarian</option>
            <option value="eggetarian">Eggetarian</option>
          </select>
        </Field>
      </div>

      <label className="flex items-center gap-2 text-sm text-ink-700">
        <input
          type="checkbox"
          checked={isStreetFood}
          onChange={(e) => setIsStreetFood(e.target.checked)}
          className="rounded border-ink-300"
        />
        This is a street food dish
      </label>

      <fieldset>
        <legend className="mb-2 text-sm font-medium text-ink-700">Ingredients</legend>
        <div className="space-y-2">
          {ingredients.map((row, i) => (
            <div key={i} className="flex gap-2">
              <input
                placeholder="Quantity (e.g. 2 cups)"
                value={row.quantity}
                onChange={(e) =>
                  setIngredients((rows) => rows.map((r, idx) => (idx === i ? { ...r, quantity: e.target.value } : r)))
                }
                className={`${inputClass} w-40`}
              />
              <input
                placeholder="Ingredient"
                value={row.name}
                onChange={(e) =>
                  setIngredients((rows) => rows.map((r, idx) => (idx === i ? { ...r, name: e.target.value } : r)))
                }
                className={inputClass}
              />
              <button type="button" onClick={() => setIngredients((rows) => rows.filter((_, idx) => idx !== i))} className="text-ink-400 hover:text-chili-600">
                ✕
              </button>
            </div>
          ))}
        </div>
        <button
          type="button"
          onClick={() => setIngredients((rows) => [...rows, { name: "", quantity: "" }])}
          className="mt-2 text-sm font-medium text-saffron-600 hover:underline"
        >
          + Add ingredient
        </button>
      </fieldset>

      <fieldset>
        <legend className="mb-2 text-sm font-medium text-ink-700">Steps</legend>
        <div className="space-y-2">
          {steps.map((step, i) => (
            <div key={i} className="flex gap-2">
              <span className="mt-2 text-sm text-ink-400">{i + 1}.</span>
              <textarea
                value={step}
                onChange={(e) => setSteps((rows) => rows.map((r, idx) => (idx === i ? e.target.value : r)))}
                rows={2}
                className={inputClass}
              />
              <button type="button" onClick={() => setSteps((rows) => rows.filter((_, idx) => idx !== i))} className="text-ink-400 hover:text-chili-600">
                ✕
              </button>
            </div>
          ))}
        </div>
        <button type="button" onClick={() => setSteps((rows) => [...rows, ""])} className="mt-2 text-sm font-medium text-saffron-600 hover:underline">
          + Add step
        </button>
      </fieldset>

      <Field label="Photo (required)" required>
        <input
          type="file"
          accept="image/*"
          required
          onChange={(e) => setPhotoFile(e.target.files?.[0] ?? null)}
          className="block text-sm"
        />
      </Field>

      <Field label="Video URL (optional)">
        <input type="url" value={videoUrl} onChange={(e) => setVideoUrl(e.target.value)} className={inputClass} />
      </Field>

      {error && <p className="text-sm text-chili-600">{error}</p>}

      <button
        type="submit"
        disabled={submitting}
        className="rounded-full bg-gradient-to-r from-saffron-500 via-chili-500 to-berry-600 px-6 py-3 font-medium text-white hover:brightness-110 disabled:opacity-50"
      >
        {submitting ? "Publishing..." : "Publish Recipe"}
      </button>
      <p className="text-xs text-ink-400">
        Your recipe publishes immediately and is credited to your account. You can report content
        that breaks the rules using the Report link on any recipe or comment.
      </p>
    </form>
  );
}

const inputClass =
  "w-full rounded-lg border border-ink-200 px-3 py-2 text-sm focus:border-saffron-500 focus:outline-none";

function Field({ label, required, children }: { label: string; required?: boolean; children: React.ReactNode }) {
  return (
    <label className="block text-sm">
      <span className="mb-1 block font-medium text-ink-700">
        {label} {required && <span aria-hidden="true" className="text-chili-500">*</span>}
      </span>
      {children}
    </label>
  );
}
