import Link from "next/link";

export default function HeaderAuthLinks({
  isLoggedIn,
  displayName,
  isAdmin,
}: {
  isLoggedIn: boolean;
  displayName: string | null;
  isAdmin: boolean;
}) {
  if (!isLoggedIn) {
    return (
      <div className="flex items-center gap-3 text-sm font-medium">
        <Link href="/login" className="text-ink-600 hover:text-ink-900">
          Log In
        </Link>
        <Link
          href="/signup"
          className="rounded-full bg-saffron-500 px-4 py-2 text-white shadow-sm hover:bg-saffron-600"
        >
          Sign Up
        </Link>
      </div>
    );
  }

  return (
    <div className="flex items-center gap-4 text-sm font-medium">
      {isAdmin && (
        <Link href="/admin" className="text-chili-600 hover:text-chili-500">
          Admin
        </Link>
      )}
      <Link href="/dashboard" className="text-ink-600 hover:text-ink-900">
        Hi, {displayName}
      </Link>
      <form action="/api/auth/signout" method="post">
        <button type="submit" className="text-ink-400 hover:text-ink-700">
          Log out
        </button>
      </form>
    </div>
  );
}
