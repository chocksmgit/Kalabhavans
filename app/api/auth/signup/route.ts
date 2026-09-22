import { NextResponse } from "next/server";
import { createSupabaseServerClient } from "@/lib/supabase/server";
import { prisma } from "@/lib/prisma";
import { signUpSchema } from "@/lib/validations";
import { ADMIN_EMAILS } from "@/lib/constants";

export async function POST(request: Request) {
  const body = await request.json().catch(() => null);

  // Honeypot: app/signup/page.tsx keeps a `website` field hidden and out of
  // tab order, so only a bot filling in every input it finds will ever
  // populate it. Return a fake success (no account, no email sent) rather
  // than an error, so the bot doesn't learn what tripped it.
  if (body?.website) {
    return NextResponse.json({ ok: true, needsEmailConfirmation: true });
  }

  const parsed = signUpSchema.safeParse(body);
  if (!parsed.success) {
    return NextResponse.json({ error: parsed.error.issues[0]?.message ?? "Invalid input" }, { status: 400 });
  }
  const { firstName, lastName, email, phone, gender, ageGroup, address, password } = parsed.data;

  const supabase = await createSupabaseServerClient();

  // Supabase Auth owns password hashing, verification email, and session
  // cookies — we never touch or store a raw or hashed password ourselves.
  const { data, error } = await supabase.auth.signUp({ email, password });
  if (error || !data.user) {
    return NextResponse.json({ error: error?.message ?? "Could not create account" }, { status: 400 });
  }

  try {
    await prisma.user.create({
      data: {
        authUserId: data.user.id,
        firstName,
        lastName,
        email,
        phone: phone || null,
        gender,
        ageGroup,
        address: address || null,
        // The only two emails that auto-grant admin — see lib/constants.ts.
        role: ADMIN_EMAILS.includes(email.toLowerCase()) ? "admin" : "member",
      },
    });
  } catch (err) {
    // Profile row failed (e.g. duplicate email) after the auth user was
    // created — surface a clear error rather than leaving a half-created
    // account silently broken.
    return NextResponse.json(
      { error: "An account with this email already exists." },
      { status: 409 }
    );
  }

  return NextResponse.json({
    ok: true,
    // If Supabase project has "Confirm email" enabled, there is no session
    // yet and the client should tell the user to check their inbox.
    needsEmailConfirmation: !data.session,
  });
}
