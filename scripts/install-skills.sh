#!/usr/bin/env bash
# Copy the skills into another project so they load automatically
# in any Claude session on that repo.
#
# Usage:
#   ./scripts/install-skills.sh /path/to/other-repo          # all skills
#   ./scripts/install-skills.sh /path/to/other-repo agentic  # only the 4 agentic skills
set -euo pipefail

TARGET="${1:?Usage: ./scripts/install-skills.sh /path/to/target-repo [agentic]}"
MODE="${2:-all}"
SOURCE="$(cd "$(dirname "$0")/.." && pwd)/.claude/skills"

if [ ! -d "$TARGET" ]; then
  echo "Target repo not found: $TARGET" >&2
  exit 1
fi

mkdir -p "$TARGET/.claude/skills"

if [ "$MODE" = "agentic" ]; then
  SKILLS="agent-guardrails content-week content-team angle-storm"
else
  SKILLS="$(find "$SOURCE" -mindepth 1 -maxdepth 1 -type d -printf '%f\n')"
fi

for skill in $SKILLS; do
  cp -r "$SOURCE/$skill" "$TARGET/.claude/skills/"
  echo "Installed: $skill"
done

[ -f "$SOURCE/LICENSE-marketingskills" ] && [ "$MODE" != "agentic" ] && \
  cp "$SOURCE/LICENSE-marketingskills" "$TARGET/.claude/skills/"

echo ""
echo "Done. Commit .claude/skills/ in the target repo and the skills"
echo "activate on normal prompts in every Claude session there."
echo ""
echo "Note: .agents/product-marketing.md is project-specific and NOT"
echo "copied. In the target repo, ask Claude to 'set up product"
echo "marketing context' so the marketing skills learn that product."
