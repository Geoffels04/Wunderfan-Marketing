# Marketing Skills

Community skills vendored into this repo so every Claude Code session
picks them up automatically. There is nothing to activate: Claude Code
discovers every skill in this folder, and the Marketing Skills section
in CLAUDE.md routes tasks to the right one. Static artwork skills
(canvas-design, algorithmic-art, dataviz, theme-factory, pptx, docx)
are provided by the Claude platform itself and need no vendoring.

## Web design and quality

| Skill | Use it for | Source | Commit |
| --- | --- | --- | --- |
| `taste-design` | Generating a DESIGN.md design system with anti-generic UI standards | [google-labs-code/stitch-skills](https://github.com/google-labs-code/stitch-skills) | 7b53207 |
| `taste-skill` | Anti-slop frontend design pass; interfaces that don't look templated | [leonxlnx/taste-skill](https://github.com/leonxlnx/taste-skill) | e988add |
| `impeccable` | Critique, fix, re-critique loop for frontend UI quality | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) | 08676d5 |
| `emil-design-eng` | UI polish, component design, animation taste and the small details that make interfaces feel great | [emilkowalski/skills](https://github.com/emilkowalski/skills) | — |
| `ui-ux-pro-max` | Full design intelligence database: 84 UI styles, 192 palettes, 74 font pairings, UX rules across 22 stacks | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | — |
| `web-design-guidelines` | Auditing UI code against 100+ accessibility, performance and UX rules | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) | — |

## Brand and visual identity

| Skill | Use it for | Source | Commit |
| --- | --- | --- | --- |
| `brandkit` | Generating brand-kit boards: logo directions, palettes, type, identity applications | [leonxlnx/taste-skill](https://github.com/leonxlnx/taste-skill) | — |
| `extract-design-system` | Reverse-engineering design tokens (colors, type, spacing, shadows) from any public website into JSON/CSS | [arvindrk/extract-design-system](https://github.com/arvindrk/extract-design-system) | — |
| `image-to-code` | Image-first web builds: generate design references, analyze them, then implement | [leonxlnx/taste-skill](https://github.com/leonxlnx/taste-skill) | — |

## Motion and video

| Skill | Use it for | Source | Commit |
| --- | --- | --- | --- |
| `gsap-*` (8 skills) | GSAP animation: core, timeline, ScrollTrigger, React, plugins, performance, utils, frameworks | [greensock/gsap-skills](https://github.com/greensock/gsap-skills) | aed9cfd |
| `remotion-*` (5 skills) | React-to-video: creating, markup, captions, rendering, best practices | [remotion-dev/skills](https://github.com/remotion-dev/skills) | efe3659 |

## Using these in other projects

Skills in this folder are scoped to this repository. To get the same set
elsewhere:

- **Another repo:** copy the skill folders into that repo's `.claude/skills/`
  directory and commit them.
- **Every project on your machine:** copy them into `~/.claude/skills/`
  on your computer. Claude Code loads personal skills in every project,
  existing and new.
- **Fresh from source:** each skill's upstream repo is linked above;
  most support `npx skills add <repo>` for one-command install.

## Updating and licenses

To update a skill, re-clone its source repo and copy the skill folder
over the one here. Not vendored: the Stitch-app-specific skills from
stitch-skills (they require the Google Stitch MCP/app) and the remotion
docs/saas/upgrade helpers. All vendored skills are MIT licensed (LICENSE
kept in each folder where provided) except `web-design-guidelines`,
which has no license file upstream and is included with attribution to
vercel-labs.
