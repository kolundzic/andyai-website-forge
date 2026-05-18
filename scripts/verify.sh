#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

PASS=0
WARN=0
FAIL=0

ok(){ echo "🟢 $1"; PASS=$((PASS+1)); }
warn(){ echo "🟡 $1"; WARN=$((WARN+1)); }
err(){ echo "🔴 $1"; FAIL=$((FAIL+1)); }

check_file(){
  if [ -f "$1" ]; then ok "file exists: $1"; else err "missing file: $1"; fi
}

check_dir(){
  if [ -d "$1" ]; then ok "directory exists: $1"; else err "missing directory: $1"; fi
}

echo "🔵 AndyAI Website Forge — verify"

check_file README.md
check_dir docs
check_dir specs
check_dir scripts
check_dir evidence
check_file docs/canon/WEBSITE_FORGE_CANON.md
check_file docs/architecture/WEBSITE_FORGE_ARCHITECTURE.md
check_file docs/schemas/SITE_BLUEPRINT_SCHEMA.md
check_file docs/schemas/CONTENT_PACK_SCHEMA.md
check_file docs/schemas/IMAGE_PACK_SCHEMA.md
check_file docs/schemas/ROUTE_PACK_SCHEMA.md
check_file docs/schemas/QA_PACK_SCHEMA.md
check_file docs/examples/EXAMPLE_SITE_BLUEPRINT.md
check_file docs/safety/WEBSITE_FORGE_BOUNDARIES.md
check_file docs/releases/PACK1_v0.1.0_to_v0.2.0.md
check_file specs/site-blueprint.example.json
check_file specs/content-pack.example.json
check_file specs/image-pack.example.json
check_file specs/route-pack.example.json
check_file evidence/PACK1_FOUNDATION_EVIDENCE.md
check_file scripts/forge-check.sh
check_file scripts/bootstrap-new-site.sh

if find . -name '.env' -o -name '.env.local' | grep -q .; then err "forbidden env file present"; else ok "no forbidden env files"; fi
if [ -d node_modules ]; then err "node_modules present"; else ok "node_modules absent"; fi
if [ -d .next ]; then err ".next present"; else ok ".next absent"; fi
if find . -name '*.zip' | grep -q .; then warn "zip artifact found inside repo"; else ok "no zip artifact inside repo"; fi

printf '\nPASS=%s WARN=%s FAIL=%s\n' "$PASS" "$WARN" "$FAIL"

if [ "$FAIL" -ne 0 ]; then
  echo "🔴 verify failed"
  exit 1
fi

echo "🟢 verify passed"
