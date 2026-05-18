#!/usr/bin/env bash
set -euo pipefail
PASS=0; FAIL=0
pass(){ echo "🟢 $1"; PASS=$((PASS+1)); }; fail(){ echo "🔴 $1"; FAIL=$((FAIL+1)); }; exists(){ [ -e "$1" ] && pass "exists: $1" || fail "missing: $1"; }; absent(){ [ ! -e "$1" ] && pass "absent: $1" || fail "forbidden present: $1"; }
for f in README.md docs specs scripts evidence docs/canon/WEBSITE_FORGE_CANON.md docs/architecture/WEBSITE_FORGE_ARCHITECTURE.md docs/safety/WEBSITE_FORGE_BOUNDARIES.md specs/site-blueprint.example.json specs/content-pack.example.json specs/image-pack.example.json specs/route-pack.example.json scripts/forge-check.sh scripts/bootstrap-new-site.sh docs/generator/SITE_TEMPLATE_GENERATOR_FOUNDATION.md docs/schemas/GENERATED_SITE_CONTRACT.md specs/generated-site-blueprint.example.json scripts/verify-generated-site.sh scripts/pack2-check.sh; do exists "$f"; done
for f in .env .env.local node_modules .next; do absent "$f"; done
for f in specs/*.json; do python3 -m json.tool "$f" >/dev/null && pass "valid JSON: $f" || fail "invalid JSON: $f"; done
echo "PASS=$PASS FAIL=$FAIL"; [ "$FAIL" -eq 0 ] || exit 1; echo "🟢 verify passed"
