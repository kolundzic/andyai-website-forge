#!/usr/bin/env bash
set -euo pipefail
PASS=0
FAIL=0
check_file(){ if [ -f "$1" ]; then echo "🟢 exists: $1"; PASS=$((PASS+1)); else echo "🔴 missing: $1"; FAIL=$((FAIL+1)); fi; }
check_json(){ if python3 -m json.tool "$1" >/dev/null; then echo "🟢 valid JSON: $1"; PASS=$((PASS+1)); else echo "🔴 invalid JSON: $1"; FAIL=$((FAIL+1)); fi; }
check_contains(){ if grep -R "$2" "$1" >/dev/null 2>&1; then echo "🟢 keyword present: $2"; PASS=$((PASS+1)); else echo "🔴 keyword missing: $2"; FAIL=$((FAIL+1)); fi; }

check_file docs/generator/CONTENT_ROUTE_PACK_EXPANSION.md
check_file docs/generator/PACK3_OPERATOR_GUIDE.md
check_file docs/schemas/CONTENT_ROUTE_PACK_CONTRACT.md
check_file docs/releases/PACK3_v0.5.1_to_v0.8.0.md
check_file specs/content-pack.expanded.example.json
check_file specs/route-pack.expanded.example.json
check_file scripts/bootstrap-new-site.sh
check_file scripts/verify-generated-site.sh
check_file scripts/pack3-check.sh
check_file evidence/PACK3_CONTENT_ROUTE_PACK_EVIDENCE.md
check_file templates/base-nextjs-app/PACK3_TEMPLATE_NOTES.md
check_json specs/content-pack.expanded.example.json
check_json specs/route-pack.expanded.example.json
check_contains docs/generator/CONTENT_ROUTE_PACK_EXPANSION.md "Content Pack + Route Pack Expansion"
check_contains docs/schemas/CONTENT_ROUTE_PACK_CONTRACT.md "Generated route contract"
check_contains evidence/PACK3_CONTENT_ROUTE_PACK_EVIDENCE.md "No Supabase"
check_contains evidence/PACK3_CONTENT_ROUTE_PACK_EVIDENCE.md "No auth"
check_contains evidence/PACK3_CONTENT_ROUTE_PACK_EVIDENCE.md "No database"

echo "PASS=$PASS FAIL=$FAIL"
if [ "$FAIL" -ne 0 ]; then echo "🔴 PACK3 check failed"; exit 1; fi
echo "🟢 PACK3 check passed"
