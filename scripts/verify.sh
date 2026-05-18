#!/usr/bin/env bash
set -euo pipefail
PASS=0
FAIL=0
check_file(){ if [ -f "$1" ]; then echo "🟢 exists: $1"; PASS=$((PASS+1)); else echo "🔴 missing: $1"; FAIL=$((FAIL+1)); fi; }
check_dir(){ if [ -d "$1" ]; then echo "🟢 exists: $1"; PASS=$((PASS+1)); else echo "🔴 missing: $1"; FAIL=$((FAIL+1)); fi; }
check_absent(){ if [ ! -e "$1" ]; then echo "🟢 absent: $1"; PASS=$((PASS+1)); else echo "🔴 forbidden present: $1"; FAIL=$((FAIL+1)); fi; }
check_json(){ if python3 -m json.tool "$1" >/dev/null; then echo "🟢 valid JSON: $1"; PASS=$((PASS+1)); else echo "🔴 invalid JSON: $1"; FAIL=$((FAIL+1)); fi; }

check_file README.md
check_dir docs
check_dir specs
check_dir scripts
check_dir evidence
check_file docs/canon/WEBSITE_FORGE_CANON.md
check_file docs/architecture/WEBSITE_FORGE_ARCHITECTURE.md
check_file docs/safety/WEBSITE_FORGE_BOUNDARIES.md
check_file specs/site-blueprint.example.json
check_file specs/content-pack.example.json
check_file specs/image-pack.example.json
check_file specs/route-pack.example.json
check_file specs/generated-site-blueprint.example.json
check_file specs/content-pack.expanded.example.json
check_file specs/route-pack.expanded.example.json
check_file scripts/forge-check.sh
check_file scripts/bootstrap-new-site.sh
check_file scripts/verify-generated-site.sh
check_file scripts/pack2-check.sh
check_file scripts/pack3-check.sh
check_file docs/generator/SITE_TEMPLATE_GENERATOR_FOUNDATION.md
check_file docs/generator/CONTENT_ROUTE_PACK_EXPANSION.md
check_file docs/schemas/GENERATED_SITE_CONTRACT.md
check_file docs/schemas/CONTENT_ROUTE_PACK_CONTRACT.md
check_absent .env
check_absent .env.local
check_absent node_modules
check_absent .next
for f in specs/*.json; do check_json "$f"; done

echo "PASS=$PASS FAIL=$FAIL"
if [ "$FAIL" -ne 0 ]; then echo "🔴 verify failed"; exit 1; fi
echo "🟢 verify passed"
