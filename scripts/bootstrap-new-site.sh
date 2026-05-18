#!/usr/bin/env bash
set -euo pipefail

SITE_NAME="${1:-}"
SITE_REPO="${2:-}"

if [ -z "$SITE_NAME" ] || [ -z "$SITE_REPO" ]; then
  echo "Usage: ./scripts/bootstrap-new-site.sh \"Site Name\" site-repo-name"
  exit 1
fi

TARGET_ROOT="${WEBSITE_FORGE_OUTPUT_ROOT:-$HOME/Documents/Projects}"
TARGET="$TARGET_ROOT/$SITE_REPO"

if [ -e "$TARGET" ]; then
  echo "🔴 target already exists: $TARGET"
  exit 1
fi

mkdir -p "$TARGET/docs" "$TARGET/specs" "$TARGET/evidence"
cat > "$TARGET/README.md" <<SITE
# $SITE_NAME

Generated from AndyAI Website Forge foundation placeholder.

## Status

Draft scaffold only.

## Boundary

No secrets. No client data. No database. No auth.
SITE

cat > "$TARGET/specs/site-blueprint.json" <<SITE
{
  "site_name": "$SITE_NAME",
  "repo_name": "$SITE_REPO",
  "domain": "",
  "purpose": "Draft purpose",
  "audience": [],
  "site_type": "landing",
  "core_message": "Draft core message",
  "routes": ["/", "/about", "/contact"],
  "visual_direction": "AndyAI visual canon",
  "qa_level": "foundation",
  "owner": "Andrija Kolundzic / Japan IT Business",
  "status": "draft"
}
SITE

echo "🟢 draft site scaffold created: $TARGET"
