---
name: content-team
description: Run one piece of Wunderfan content through an agent team — a planner, channel specialists, and a reviewer with the power to reject. Use when Geoff asks for a single piece of content done properly, a multi-channel drop from one idea, or wants the team treatment on a brief. Heavier than build-loop; use for content that matters.
---

# Content Team — Planner, Specialists, Reviewer

One idea in, channel-native content out, with a reviewer who can
send work back. Operates under
`.claude/skills/wunderfan-guardrails/SKILL.md`. Step budget: 12.

## Roles

**Planner (you, the lead).** Reads the brief (or expands a
one-liner via prompts/05-expand.md), decides pillar, channels, and
angle, writes the handoff spec for each specialist: hook direction,
promise, CTA, what to avoid because the other channels are using it.

**Specialists (2–3 subagents, parallel).** One per channel,
typically:

- Instagram specialist: caption + carousel or single-image copy,
  hook line 1, context lines 2–3, CTA last line, 3–5 hashtags max
- Reel/TikTok specialist: script, first 2 seconds hook or it dies,
  written for sound on with caption for sound off, Brian's energy
- Story/short specialist (optional): one-liner + CTA

Each specialist reads CLAUDE.md and its handoff spec, drafts, runs
the self-check from prompts/01-draft.md, and returns the file saved
under drafts/[slug]/.

## The handoffs

1. Planner → specialists: the handoff spec. A specialist that finds
   the spec ambiguous asks the planner, not Geoff.
2. Specialists → reviewer: finished files only. No drafts-of-drafts.
3. Reviewer → planner: verdict per file. Pass, or reject with the
   specific rule broken and one line on the fix.

## Reviewer (subagent, runs last, fresh eyes)

The reviewer never drafts and never softens. It checks every file
against:

- CLAUDE.md non-negotiables: banned words, em dashes, CTA as
  benefit not command, copy works without the visual, second person
- Voice: would Gareth share it, would Brian save it
- Banned content: political, rival-alienating, gambling-adjacent

Verdict is binary per file: **pass** or **reject with reason**.
A rejected file goes back to its specialist once (that's a retry
under guardrails). A second rejection escalates to Geoff with the
reviewer's reasons attached.

## Done

All files passed, parent brief status set to `scheduled`, decision
log written per guardrails, report to Geoff: files, hooks, and
anything the reviewer flagged even in passing files.
