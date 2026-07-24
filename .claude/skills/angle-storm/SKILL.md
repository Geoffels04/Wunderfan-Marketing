---
name: angle-storm
description: Attack one topic from parallel angles and reconcile into a single brief. Use when there is a topic but no angle yet — a fixture, a new brand partner, a product feature, a big result — and the ask is for angles, ideas, options, or "what could we do with this". Output is one brief in briefs/, not finished content.
---

# Angle Storm — Parallel Angles, One Brief

Spin up parallel agents on one topic, each locked to a different
angle. A lead reconciles the conflicts into one brief and shows
which agent found what. Operates under
`.claude/skills/agent-guardrails/SKILL.md`. Step budget: 10.

## Step 1 — Fix the topic, build the angle bench

State the topic in one line. Then build a bench of 3–4 angles from
the host project's PLAN.md: one per audience avatar, one per
relevant content pillar, plus any project-specific lens. Invent
better angles if the topic demands it.

The Wunderfan bench, as the worked example:

- **Gareth's angle**: the die-hard's view — the stakes, the
  bragging rights, being rewarded for loyalty already shown
- **Brian's angle**: community and status — the tavern debate,
  the group chat, brands talking with him not at him
- **EARN angle**: where the points are — the pickem, the check-in,
  the action a fan takes this week
- **REWARDS angle**: what fandom pays out — the redemption, the
  ticket, the brand moment
- **Rival-safe angle**: the take a rival team's fan enjoys too

## Step 2 — Fan out (parallel, blind)

One subagent per angle, run in parallel, each blind to the others.
Each reads CLAUDE.md and PLAN.md, then returns exactly:

- One hook line (the scroll-stopper)
- The promise in one sentence
- Platform + format recommendation
- One line on why this angle wins
- One line on the risk (what makes it fall flat)

Blind matters: the point is genuinely different takes, not four
agents converging on the same safe idea.

## Step 3 — Reconcile (lead)

Lay the angles side by side. Where they conflict — different
platform, different pillar, hooks that cannibalise each other —
decide, and record the decision. Take the strongest hook even if
the rest of that angle loses. Grafting one angle's hook onto
another angle's mechanic is a win, not a compromise.

## Step 4 — One brief out

Write a single brief to briefs/YYYY-MM-DD-slug.md in the project's
standard format (pillar, platform, format, hook, promise, body
direction, CTA, visual direction, status: brief).

At the bottom, add an attribution table so the owner sees which
agent found what:

```
## Angle credits
- Hook: [angle]
- Mechanic: [angle]
- Platform call: [angle]
- Dropped angles and why: (one line each)
```

Write the decision log per guardrails. Hand off: the brief is now
ready for prompts/01-draft.md or the content-team skill.
