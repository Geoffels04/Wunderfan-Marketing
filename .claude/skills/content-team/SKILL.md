---
name: content-team
description: Run one piece of content through an agent team — a planner, channel specialists, and a reviewer with the power to reject. Use when asked for a single piece of content done properly, a multi-channel drop from one idea, or the team treatment on a brief. Heavier than build-loop; use for content that matters.
---

# Content Team — Planner, Specialists, Reviewer

One idea in, channel-native content out, with a reviewer who can
send work back. Operates under
`.claude/skills/agent-guardrails/SKILL.md`. Step budget: 12.

Portable: voice rules, banned words, audience, and channel formats
come from the host project's CLAUDE.md and PLAN.md — never from
this file.

## Roles

**Planner (you, the lead).** Reads the brief (or expands a
one-liner via prompts/05-expand.md if the project has it), decides
pillar, channels, and angle, writes the handoff spec for each
specialist: hook direction, promise, CTA, what to avoid because the
other channels are using it.

**Specialists (2–3 subagents, parallel).** One per channel, using
the channel rules in the project's CLAUDE.md. In Wunderfan that is:

- Instagram specialist: caption + carousel or single-image copy,
  hook line 1, context lines 2–3, CTA last line, 3–5 hashtags max
- Reel/TikTok specialist: script, first 2 seconds hook or it dies,
  written for sound on with caption for sound off
- Story/short specialist (optional): one-liner + CTA

Each specialist reads CLAUDE.md and its handoff spec, drafts, runs
the project's self-check (prompts/01-draft.md), and returns the
file saved under drafts/[slug]/.

## The handoffs

1. Planner → specialists: the handoff spec. A specialist that finds
   the spec ambiguous asks the planner, not the owner.
2. Specialists → reviewer: finished files only. No drafts-of-drafts.
3. Reviewer → planner: verdict per file. Pass, or reject with the
   specific rule broken and one line on the fix.

## Reviewer (subagent, runs last, fresh eyes)

The reviewer never drafts and never softens. It checks every file
against:

- The CLAUDE.md non-negotiables: banned words, formatting rules,
  CTA style, whether copy works without the visual
- Voice: would the project's target reader share it or save it
- The project's banned content list

Verdict is binary per file: **pass** or **reject with reason**.
A rejected file goes back to its specialist once (that's a retry
under guardrails). A second rejection escalates to the owner with
the reviewer's reasons attached.

## Done

All files passed, parent brief status set to `scheduled`, decision
log written per guardrails, report to the owner: files, hooks, and
anything the reviewer flagged even in passing files.
