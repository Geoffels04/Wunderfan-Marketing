# Marketing Skills

Community skills vendored into this repo so every Claude Code session
picks them up automatically. Sourced 2026-07-24. These cover web design
and motion/video. Static artwork skills (canvas-design, algorithmic-art,
dataviz, theme-factory, pptx, docx) are provided by the Claude platform
itself and need no vendoring — the Marketing Skills section in CLAUDE.md
routes tasks to all of them.

| Skill(s) | Source | Commit | Purpose |
|---|---|---|---|
| `taste-design` | github.com/google-labs-code/stitch-skills | 7b53207 | Generates a DESIGN.md design system with anti-generic UI standards |
| `taste-skill` | github.com/leonxlnx/taste-skill | e988add | Anti-slop frontend design pass; ships interfaces that don't look templated |
| `impeccable` | github.com/pbakaus/impeccable | 08676d5 | Critique, fix, re-critique loop for frontend UI quality |
| `gsap-*` (8 skills) | github.com/greensock/gsap-skills | aed9cfd | GSAP animation: core, timeline, ScrollTrigger, React, plugins, performance, utils, frameworks |
| `remotion-*` (5 skills) | github.com/remotion-dev/skills | efe3659 | React-to-video: creating, markup, captions, rendering, best practices |

To update: re-clone the source repo and copy the skill folder over the
one here. Not vendored: the Stitch-app-specific skills from
stitch-skills (they require the Google Stitch MCP/app) and the
remotion docs/saas/upgrade helpers.
