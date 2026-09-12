import { formatDateTime } from "@/lib/format";
import ReportButton from "./ReportButton";

export type CommentData = {
  id: string;
  body: string;
  createdAt: Date;
  user: { firstName: string; lastName: string };
};

export default function CommentList({
  comments,
  isLoggedIn,
}: {
  comments: CommentData[];
  isLoggedIn: boolean;
}) {
  if (comments.length === 0) {
    return <p className="text-sm text-ink-400">No comments yet — be the first to share how it went.</p>;
  }

  return (
    <ul className="space-y-4">
      {comments.map((comment) => {
        const posted = formatDateTime(comment.createdAt);
        return (
          <li key={comment.id} className="rounded-lg border border-ink-100 bg-white p-4">
            <div className="flex items-center justify-between gap-2">
              <p className="text-sm font-medium text-ink-800">
                {comment.user.firstName} {comment.user.lastName}
              </p>
              <div className="flex items-center gap-3">
                <p className="text-xs text-ink-400">
                  {posted.date} at {posted.time}
                </p>
                {isLoggedIn && <ReportButton commentId={comment.id} />}
              </div>
            </div>
            <p className="mt-2 text-sm text-ink-700">{comment.body}</p>
          </li>
        );
      })}
    </ul>
  );
}
