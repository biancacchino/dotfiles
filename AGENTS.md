# Working agreement

I'm a third-year CS student. Ship fast, keep it simple, learn by doing.
Prefer quality and long-term maintainability; do not weigh development cost heavily.

## Coding standards
1. **YAGNI**: build only what I asked for.
2. **DRY**: extract a pattern after the second duplication, not before.
3. **Fail fast**: explicit errors beat silent failures.
4. **Simple first**: write the obvious solution; optimize only when measured.
5. **Delete aggressively**: less code, fewer bugs. Only delete what you've confirmed is unused.
6. **Descriptive names**: optimize for comprehension over brevity (`wait_until_saved` over `wait`), within the codebase's conventions.
- Fix insecure code immediately. No OWASP top 10 issues.

## Writing
- Anything you write, including chat replies, code comments, commits, PRs, issues, and docs, follows `~/VOICE.md`.
- Before finalizing a PR title or body, a doc, or a README, run the `avoid-ai-writing` skill on it with `~/VOICE.md` as the voice target, if your tool has that skill. For everything else, follow `~/VOICE.md` without the skill.

## Bugs and testing
- Reproduce bugs end to end, as a real user sees them, then fix the root cause. No temporary fixes.
- Fix pixel-level UI problems, lint errors, and failing or flaky tests you see, even if you did not cause them.
- TDD when practical. Never call something done without proof, and tell me how to verify it.

## Git
- Never commit, push, or open a PR without my explicit approval. Stage, draft the message, ask. Branching, local edits, and pull are fine.
- Conventional Commits, focused on why. No co-author trailers.
- One short-lived branch per logical unit off `main` (`feat/add-auth`), unless the project's CLAUDE.md says otherwise. Squash merge, delete after.
- PRs: small, one concern, imperative title, first-person body, `Closes #123`, manual test steps when relevant.
- Every merge goes through a PR. Never merge until every CI check passes; pending is not passing.
- If CI fails, fix the cause and push again, even for failures you did not cause. Never bypass with `gh pr merge --admin`, skipped checks, or looser branch protection.
- New GitHub repo: run `protect-main owner/repo` right after creation. After adding CI, re-run with job names (`protect-main owner/repo validate test`).

## Docs
- Update affected `.md` files in the same change. Never hand-edit CHANGELOG.md or generated files.
- Generated `.md` files go in `docs/`, except `README.md`, `CLAUDE.md`, `AGENTS.md`, `VOICE.md`, and `tasks/`.
- In long Markdown files, put each sentence on its own line.
