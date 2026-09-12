"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export default function SignUpPage() {
  const router = useRouter();
  const [form, setForm] = useState({
    firstName: "",
    lastName: "",
    email: "",
    phone: "",
    gender: "",
    ageGroup: "",
    address: "",
    password: "",
  });
  const [error, setError] = useState<string | null>(null);
  const [submitting, setSubmitting] = useState(false);
  const [confirmEmailNotice, setConfirmEmailNotice] = useState(false);

  function set<K extends keyof typeof form>(key: K, value: string) {
    setForm((f) => ({ ...f, [key]: value }));
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setSubmitting(true);
    try {
      const res = await fetch("/api/auth/signup", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(form),
      });
      const data = await res.json();
      if (!res.ok) {
        setError(data.error ?? "Something went wrong");
        return;
      }
      if (data.needsEmailConfirmation) {
        setConfirmEmailNotice(true);
      } else {
        router.push("/dashboard");
        router.refresh();
      }
    } finally {
      setSubmitting(false);
    }
  }

  if (confirmEmailNotice) {
    return (
      <div className="mx-auto max-w-md px-4 py-16 text-center sm:px-6">
        <h1 className="font-display text-2xl font-semibold text-ink-900">Check your email</h1>
        <p className="mt-3 text-ink-600">
          We&rsquo;ve sent a confirmation link to <strong>{form.email}</strong>. Confirm your email
          to finish creating your account.
        </p>
      </div>
    );
  }

  return (
    <div className="mx-auto max-w-md px-4 py-12 sm:px-6">
      <h1 className="font-display text-2xl font-semibold text-ink-900">Create your account</h1>
      <p className="mt-2 text-sm text-ink-500">
        Email is required for login and account recovery. Everything else marked optional can be
        skipped.
      </p>

      <form onSubmit={handleSubmit} className="mt-6 space-y-4">
        <div className="grid grid-cols-2 gap-3">
          <Field label="First name" required>
            <input required value={form.firstName} onChange={(e) => set("firstName", e.target.value)} className={inputClass} />
          </Field>
          <Field label="Last name" required>
            <input required value={form.lastName} onChange={(e) => set("lastName", e.target.value)} className={inputClass} />
          </Field>
        </div>

        <Field label="Email" required>
          <input type="email" required value={form.email} onChange={(e) => set("email", e.target.value)} className={inputClass} />
        </Field>

        <Field label="Phone (optional)">
          <input type="tel" value={form.phone} onChange={(e) => set("phone", e.target.value)} className={inputClass} />
        </Field>

        <div className="grid grid-cols-2 gap-3">
          <Field label="Gender (optional)">
            <select value={form.gender} onChange={(e) => set("gender", e.target.value)} className={inputClass}>
              <option value="">Prefer not to say</option>
              <option value="female">Female</option>
              <option value="male">Male</option>
              <option value="non_binary">Non-binary</option>
              <option value="prefer_not_to_say">Prefer not to say</option>
            </select>
          </Field>
          <Field label="Age group (optional)">
            <select value={form.ageGroup} onChange={(e) => set("ageGroup", e.target.value)} className={inputClass}>
              <option value="">Select...</option>
              <option value="under_18">Under 18</option>
              <option value="age_18_24">18–24</option>
              <option value="age_25_34">25–34</option>
              <option value="age_35_44">35–44</option>
              <option value="age_45_54">45–54</option>
              <option value="age_55_64">55–64</option>
              <option value="age_65_plus">65+</option>
            </select>
          </Field>
        </div>

        <Field label="Address (optional)">
          <input value={form.address} onChange={(e) => set("address", e.target.value)} className={inputClass} />
        </Field>

        <Field label="Password" required>
          <input
            type="password"
            required
            minLength={8}
            value={form.password}
            onChange={(e) => set("password", e.target.value)}
            className={inputClass}
          />
        </Field>

        {error && <p className="text-sm text-chili-600">{error}</p>}

        <button
          type="submit"
          disabled={submitting}
          className="w-full rounded-full bg-saffron-500 px-4 py-3 font-medium text-white hover:bg-saffron-600 disabled:opacity-50"
        >
          {submitting ? "Creating account..." : "Create Account"}
        </button>
      </form>

      <p className="mt-6 text-center text-sm text-ink-500">
        Already have an account?{" "}
        <a href="/login" className="font-medium text-saffron-600 hover:underline">
          Log in
        </a>
      </p>
    </div>
  );
}

const inputClass =
  "w-full rounded-lg border border-ink-200 px-3 py-2 text-sm focus:border-saffron-500 focus:outline-none";

function Field({
  label,
  required,
  children,
}: {
  label: string;
  required?: boolean;
  children: React.ReactNode;
}) {
  return (
    <label className="block text-sm">
      <span className="mb-1 block font-medium text-ink-700">
        {label} {required && <span aria-hidden="true" className="text-chili-500">*</span>}
      </span>
      {children}
    </label>
  );
}
