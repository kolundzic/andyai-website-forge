#!/usr/bin/env bash
set -euo pipefail
PASS=0; FAIL=0
pass(){ echo "🟢 $1"; PASS=$((PASS+1)); }; fail(){ echo "🔴 $1"; FAIL=$((FAIL+1)); }; exists(){ [ -e "$1" ] && pass "exists: $1" || fail "missing: $1"; }
for f in docs/generator/SITE_TEMPLATE_GENERATOR_FOUNDATION.md docs/generator/BOOTSTRAP_NEW_SITE_OPERATOR_GUIDE.md docs/schemas/GENERATED_SITE_CONTRACT.md docs/releases/PACK2_v0.2.1_to_v0.5.0.md specs/generated-site-blueprint.example.json scripts/bootstrap-new-site.sh scripts/verify-generated-site.sh scripts/pack2-check.sh evidence/PACK2_SITE_TEMPLATE_GENERATOR_EVIDENCE.md templates/base-nextjs-app/README.md; do exists "$f"; done
python3 -m json.tool specs/generated-site-blueprint.example.json >/dev/null && pass "valid JSON: generated-site blueprint" || fail "invalid JSON: generated-site blueprint"
for kw in "PACK2" "Site Template Generator Foundation" "No Supabase" "No auth" "No database"; do grep -R "$kw" docs/generator docs/releases evidence >/dev/null 2>&1 && pass "keyword present: $kw" || fail "keyword missing: $kw"; done
echo "PASS=$PASS FAIL=$FAIL"; [ "$FAIL" -eq 0 ] || exit 1; echo "🟢 PACK2 check passed"
