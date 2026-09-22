/**
 * "Find near you" for a dish — deliberately a deep link into Google Maps
 * rather than a stored list of restaurant names/addresses. Maps' own live,
 * geolocation-aware index is always current and never something Kalabhavans
 * has to fabricate, verify, or keep from going stale (see the "restaurants"
 * discussion in kalabhavans-website-plan.md's decision log). Opens in a new
 * tab so cooking/browsing context isn't lost.
 */
export default function NearbyRestaurantsLink({ title }: { title: string }) {
  const query = encodeURIComponent(`${title} restaurant`);
  const href = `https://www.google.com/maps/search/?api=1&query=${query}`;

  return (
    <a
      href={href}
      target="_blank"
      rel="noopener noreferrer"
      aria-label={`Find restaurants serving ${title} near you (opens Google Maps in a new tab)`}
      className="inline-flex items-center gap-2 rounded-full border-2 border-teal-200 px-5 py-2.5 text-sm font-semibold text-teal-700 hover:border-teal-400 hover:bg-teal-50"
    >
      📍 Find restaurants near you
    </a>
  );
}
