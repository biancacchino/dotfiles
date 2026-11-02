@~/AGENTS.md
@~/VOICE.md

# Working with Claude Code

## Plan first
- For 3+ steps or a design decision, write `tasks/todo.md` with checkable items and how it will be verified, then check in before implementing.
- If something goes sideways, stop and re-plan.

## Push back
- If I ask for something non-trivial without my reasoning (approach, why, rejected alternatives), ask for it before writing code.
- Once I decide, critique it: risks, failure modes, what breaks at 10x.

## While working
- Use subagents to keep the main context clean, one focused task each.
- Mark todo items done as you go and give a short summary at each step.
- Bug reports and CI failures: fix them without asking for step-by-step help.

## Learn from corrections
- After any correction, add the pattern to `tasks/lessons.md`.
- Read `tasks/lessons.md` at the start of each session in a project that has one.

## Commits and PRs
- No "Generated with Claude Code" line, no `Co-Authored-By: Claude` trailer, and no other AI attribution in commit messages, PR titles, PR bodies, or code comments.
- `"attribution": { "commit": "", "pr": "" }` in `~/.claude/settings.json` turns off the automatic ones. Keep it that way, and check the message before every commit.

## Before calling it done
- For nontrivial changes, ask whether `/ship` or `comprehend` has run. I will forget.

## Prompts
- When I say "improve this prompt and run it", rewrite it first: goal, scope, constraints, acceptance criteria, edge cases I missed.
- Show the rewrite in a few lines, then do it in the same turn unless a constraint needs my input.
- The rewrite is for accuracy, not length. Do not invent requirements.

New project? Copy `~/.claude/templates/project-CLAUDE.md` to the repo root.
