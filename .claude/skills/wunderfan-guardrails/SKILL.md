---
name: wunderfan-guardrails
description: Shared guardrails for every agentic Wunderfan run. Use when running content-week, content-team, angle-storm, build-loop, or any multi-step autonomous task in this repo. Defines what needs Geoff's sign-off, what gets retried vs escalated, step and cost ceilings, the decision log format, and how to flag being stuck.
---

# Wunderfan Guardrails

Every autonomous or multi-agent run in this repo operates under these
rules. Other skills reference this file instead of restating it.

## Needs Geoff's sign-off (never do autonomously)

- Publishing or scheduling anything to a live channel
  (Instagram, TikTok, Metricool, OneSignal, email, Slack externally)
- Sending push notifications
- Spending money or committing paid media budget
- Editing PLAN.md or CLAUDE.md
- Deleting any file in briefs/, drafts/, or published/
- Moving content into published/ (that means it went live; only
  Geoff confirms that)

Everything else in this repo is drafts on a branch. Reversible.
Proceed without asking.

## Retry vs escalate

- Retry yourself (max 2 retries): a draft that fails self-check,
  a banned word slipping in, a file save to the wrong path,
  a subagent returning off-voice copy.
- Escalate to Geoff (stop and ask, don't guess): a brief that
  contradicts PLAN.md, a fixture or result you cannot verify,
  anything touching the sign-off list above, rival-fan or
  political territory, two failed retries on the same step.

## Ceilings

- Step budget: every run declares a step budget up front.
  Default 12 steps. Hitting the budget means stop and report,
  not push through.
- Subagent budget: max 4 parallel subagents per run unless the
  skill says otherwise.
- One brief per build-loop pass. Never batch.

## Decision log

Every run appends to `logs/YYYY-MM-DD.md` a short decision log:

```
## Run: [skill name] — HH:MM
- Goal:
- Steps used: N of budget M
- Decisions made: (one line each, only real forks)
- Retried: (what and why, if anything)
- Escalated / open questions:
- Files created or changed:
```

Log real decisions only. "Chose the Bulls recap brief because it
was oldest" is a decision. "Read CLAUDE.md" is not.

## Flagging stuck

Stuck means: two retries burned, or the step budget gone, or an
escalation-list item blocking the path. When stuck, stop and report
in this exact shape: what was attempted, what is blocking, the one
question whose answer unblocks it. Never quietly ship a degraded
version instead.
