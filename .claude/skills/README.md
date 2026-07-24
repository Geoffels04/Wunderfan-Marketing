# Design Skills

Vendored design skills from the Claude Skills Designer Guide. Claude Code
automatically discovers every skill in this folder for any session on this
repo, so there is nothing to activate. Ask for the kind of work a skill
covers and Claude loads it.

## What each skill does

| Skill | Use it for | Source |
| --- | --- | --- |
| `emil-design-eng` | UI polish, component design, animation taste and the small details that make interfaces feel great | [emilkowalski/skills](https://github.com/emilkowalski/skills) |
| `ui-ux-pro-max` | Full design intelligence database: 84 UI styles, 192 palettes, 74 font pairings, UX rules across 22 stacks | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| `web-design-guidelines` | Auditing UI code against 100+ accessibility, performance and UX rules | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |
| `brandkit` | Generating brand-kit boards: logo directions, palettes, type, identity applications | [leonxlnx/taste-skill](https://github.com/leonxlnx/taste-skill) |
| `extract-design-system` | Reverse-engineering design tokens (colors, type, spacing, shadows) from any public website into JSON/CSS | [arvindrk/extract-design-system](https://github.com/arvindrk/extract-design-system) |
| `image-to-code` | Image-first web builds: generate design references, analyze them, then implement | [leonxlnx/taste-skill](https://github.com/leonxlnx/taste-skill) |

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

## Licenses

All vendored skills are MIT licensed (LICENSE file kept in each folder)
except `web-design-guidelines`, which has no license file upstream and is
included with attribution to vercel-labs.
