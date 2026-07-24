# Wunderfan SA Marketing Machine

Built on the Marketing Machine Build Guide by View1Media.

## What this is
The content operating system for Wunderfan SA across
Instagram and TikTok with a paid media strategy
targeting app downloads.

## How to use it
1. Read PLAN.md before generating any content
2. Read CLAUDE.md before writing any copy
3. New ideas go into briefs/ first
4. Nothing goes to published/ until it has been posted
5. Update feedback/weekly.md every Friday

## Agentic skills
Project skills live in .claude/skills/ and load automatically
in any Claude session on this repo. They trigger on normal
prompts, no special commands needed:

- content-week: orchestrates a full content week — subtasks,
  parallel drafting, shared scratchpad, step budget.
  Trigger: "build next week's content"
- content-team: planner, channel specialists, and a reviewer
  that can reject work against CLAUDE.md.
  Trigger: "give this brief the team treatment"
- angle-storm: parallel agents attack one topic from different
  angles, reconciled into a single brief.
  Trigger: "what could we do with [topic]"
- agent-guardrails: shared rules for every run — what needs
  sign-off, retry vs escalate, ceilings, decision logs

All runs log decisions to logs/. Nothing gets published or
scheduled without sign-off.

Alongside those, a curated set of 17 marketing skills from
coreyhaines31/marketingskills is installed: product-marketing
(the foundation the others read first), social, copywriting,
copy-editing, content-strategy, ad-creative, ads, aso, analytics,
ab-testing, marketing-psychology, marketing-ideas, launch,
influencer-marketing, community-marketing, referrals, and video.
They trigger on normal prompts too ("write ad copy for...",
"improve our App Store listing", "score this hook").

The skills are portable. Voice and strategy come from each
project's own CLAUDE.md and PLAN.md. To install them in another
project (e.g. fanatiqagents):

    ./scripts/install-skills.sh /path/to/other-repo

## North Star Metric
App downloads.

## Channels
- Instagram: Brand building and community
- TikTok: Reach and discovery
- Paid: Meta and TikTok Ads driving downloads

## Last updated
April 2026
