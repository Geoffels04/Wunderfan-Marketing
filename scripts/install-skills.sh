#!/usr/bin/env bash
# Copy the agentic skills into another project so they load
# automatically in any Claude session on that repo.
#
# Usage: ./scripts/install-skills.sh /path/to/other-repo
set -euo pipefail

TARGET="${1:?Usage: ./scripts/install-skills.sh /path/to/target-repo}"
SOURCE="$(cd "$(dirname "$0")/.." && pwd)/.claude/skills"

if [ ! -d "$TARGET" ]; then
  echo "Target repo not found: $TARGET" >&2
  exit 1
fi

mkdir -p "$TARGET/.claude/skills"
for skill in agent-guardrails content-week content-team angle-storm; do
  cp -r "$SOURCE/$skill" "$TARGET/.claude/skills/"
  echo "Installed: $skill"
done

echo ""
echo "Done. Commit .claude/skills/ in the target repo and the skills"
echo "will activate on normal prompts in every Claude session there."
