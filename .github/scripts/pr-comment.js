// Build results are reported to a PR from two places: the build job (on the
// branch's push event) and the pr-comment job (when a PR is opened after that
// push build already finished). Both produce the same comment and find it again
// through MARKER, so whichever runs second updates instead of duplicating.
// Keeping the logic here rather than inline in the workflow stops the two
// copies from drifting apart -- a changed marker alone would start posting
// duplicates.

const MARKER = '<!-- ig-publish-url -->';

// Comments are capped at 65536 characters, and a run with many findings can
// exceed that. Keep room for the deployment section.
const LIMIT = 60000;

// Returns null when there is nothing worth posting, i.e. neither a validation
// result nor a published preview.
function buildBody({ validation, url, branch, runUrl }) {
  let report = (validation || '').trim();

  if (report.length > LIMIT) {
    report =
      report.slice(0, LIMIT) +
      `\n\n_Truncated — see the [full validation summary](${runUrl})._`;
  }

  if (!report && !url) {
    return null;
  }

  const deployment = url
    ? `[Open published IG for branch \`${branch}\`](${url})`
    : `Not published — see the [workflow run](${runUrl}).`;

  return [MARKER, report, '### Deployment', deployment].filter(Boolean).join('\n\n');
}

// Filtering by head server side keeps this to one short page no matter how many
// PRs are open.
async function findOpenPr({ github, owner, repo, branch }) {
  const { data: prs } = await github.rest.pulls.list({
    owner,
    repo,
    state: 'open',
    head: `${owner}:${branch}`,
    per_page: 100,
  });
  return prs.find((p) => p.head && p.head.ref === branch) || null;
}

async function upsertComment({ github, core, owner, repo, prNumber, body }) {
  // Paginated on purpose: the marker comment is the oldest one on the PR, so on
  // a busy PR it sits past the first page. Missing it would post a duplicate
  // instead of updating the existing comment.
  const comments = await github.paginate(github.rest.issues.listComments, {
    owner,
    repo,
    issue_number: prNumber,
    per_page: 100,
  });

  // Any author: the two jobs use the same token today, but a marker match is
  // the thing that actually identifies the comment.
  const existing = comments.find(
    (c) => typeof c.body === 'string' && c.body.includes(MARKER)
  );

  if (existing) {
    await github.rest.issues.updateComment({
      owner,
      repo,
      comment_id: existing.id,
      body,
    });
    core.info(`Updated build results comment on PR #${prNumber}`);
  } else {
    await github.rest.issues.createComment({
      owner,
      repo,
      issue_number: prNumber,
      body,
    });
    core.info(`Created build results comment on PR #${prNumber}`);
  }
}

module.exports = { MARKER, buildBody, findOpenPr, upsertComment };
