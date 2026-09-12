/**
 * Formats a Date as DD/MM/CCYY, per the site-wide display format decided for
 * Original/Updated timestamps (see kalabhavans-website-plan.md, section 9).
 * Dates are always stored as UTC datetimes and only formatted at display
 * time — never stored pre-formatted.
 */
export function formatDate(date: Date, timeZone = "UTC"): string {
  const parts = new Intl.DateTimeFormat("en-GB", {
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
    timeZone,
  }).formatToParts(date);
  const get = (type: string) => parts.find((p) => p.type === type)?.value ?? "";
  return `${get("day")}/${get("month")}/${get("year")}`;
}

/** Formats a Date as 24-hour HH:MM, matching the Original/Updated time format. */
export function formatTime(date: Date, timeZone = "UTC"): string {
  return new Intl.DateTimeFormat("en-GB", {
    hour: "2-digit",
    minute: "2-digit",
    hour12: false,
    timeZone,
  }).format(date);
}

export function formatDateTime(date: Date, timeZone = "UTC"): { date: string; time: string } {
  return { date: formatDate(date, timeZone), time: formatTime(date, timeZone) };
}
