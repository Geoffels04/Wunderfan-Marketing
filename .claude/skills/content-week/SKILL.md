---
name: content-week
description: Orchestrate a full Wunderfan content week end to end. Use when Geoff asks to plan the week, build the week's content, fill the content calendar, or produce the weekly rhythm (recap, build-up, pickem, Friday giveaway). Breaks the week into subtasks, runs drafting in parallel, keeps a shared scratchpad and step budget, and knows when to stop.
---

# Content Week — Orchestrator

Produce one full week of Wunderfan content as an orchestrated run:
plan, fan out, reconcile, report. Operates under
`.claude/skills/wunderfan-guardrails/SKILL.md` at all times.

## Step 0 — Orient

Read PLAN.md and CLAUDE.md. Check logs/ for the most recent run so
you don't duplicate content already made. Declare a step budget of
15 and write it in the scratchpad before doing anything else.

## Step 1 — Break the week into subtasks

The weekly rhythm from PLAN.md is the skeleton:

- Mon/Tue: weekend recap + top community picks
- Wed/Thu: fixture build-up + pickem prompt
- Fri: giveaway, brand redemption spotlight, or competition

For each slot decide: pillar, platform, format, and the real
fixture or event it hangs on. If you cannot verify a fixture or
result, that slot escalates per guardrails — never invent scores
or kickoff times.

## Step 2 — Shared scratchpad

Keep one scratchpad file for the run at
`logs/scratch-YYYY-MM-DD-week.md`. Every subtask reads it before
starting and appends after finishing: what it made, hooks already
used, references already spent. This is how parallel drafts avoid
opening on the same hook or leaning on the same Braai/Loftus
reference three posts in a row.

## Step 3 — Fan out drafting in parallel

Spawn one subagent per content slot, max 4 at a time. Each subagent:

- Reads CLAUDE.md, PLAN.md, and the scratchpad
- Applies the draft prompt (prompts/01-draft.md) then the edit
  pass (prompts/02-edit.md) on its own output
- Saves to drafts/YYYY-MM-DD-slug.md with front-matter
- Appends its hooks and references to the scratchpad

## Step 4 — Reconcile

When all slots return, review the set as one week, not five posts:

- No two posts opening on the same hook shape
- Pillar spread across the week (not three REWARDS posts in a row)
- Every post passes the CLAUDE.md non-negotiables
- Reject and redraft any post that fails — that costs steps from
  the budget, which is the point

## Step 5 — Stop and report

Write the decision log per guardrails. Report to Geoff: the week
at a glance (slot, pillar, hook line, file path), anything
escalated, steps used vs budget. Nothing is scheduled or
published — that is Geoff's call.
