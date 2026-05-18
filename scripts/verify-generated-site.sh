#!/usr/bin/env bash
set -euo pipefail
SITE_DIR="${1:-generated-sites/example-forge-site}"; PASS=0; FAIL=0
pass(){ echo "🟢 $1"; PASS=$((PASS+1)); }; fail(){ echo "🔴 $1"; FAIL=$((FAIL+1)); }
exists(){ [ -e "$SITE_DIR/$1" ] && pass "exists: $1" || fail "missing: $1"; }; absent(){ [ ! -e "$SITE_DIR/$1" ] && pass "absent: $1" || fail "forbidden present: $1"; }
[ -d "$SITE_DIR" ] || { echo "🔴 generated site directory not found: $SITE_DIR"; exit 1; }
for f in README.md package.json next.config.js tsconfig.json next-env.d.ts app/layout.tsx app/page.tsx app/globals.css app/about/page.tsx app/contact/page.tsx app/presentation/page.tsx app/projects/page.tsx app/signals/page.tsx public/visuals/.gitkeep docs/SITE_GENERATION_EVIDENCE.md; do exists "$f"; done
for f in .env .env.local .next node_modules; do absent "$f"; done
grep -R "Story → Structure → Visuals → Proof → Deployment → Trust" "$SITE_DIR/app" >/dev/null 2>&1 && pass "artifact formula present" || fail "artifact formula missing"
grep -R "AndyAI Website Forge" "$SITE_DIR" >/dev/null 2>&1 && pass "AndyAI keyword present" || fail "AndyAI keyword missing"
echo "PASS=$PASS FAIL=$FAIL"; [ "$FAIL" -eq 0 ] || exit 1; echo "🟢 generated-site verification passed"
