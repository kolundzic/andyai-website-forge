#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo "🔵 AndyAI Website Forge — foundation check"

required_terms=(
  "AndyAI Website Forge"
  "forge.andyai.ai"
  "Story → Structure → Visuals → Proof → Deployment → Trust"
  "No Supabase"
  "No auth"
  "No database"
)

for term in "${required_terms[@]}"; do
  if grep -R "$term" README.md docs specs evidence >/dev/null 2>&1; then
    echo "🟢 keyword present: $term"
  else
    echo "🔴 missing keyword: $term"
    exit 1
  fi
done

python3 - <<'PY'
import json
from pathlib import Path
for p in [
    Path('specs/site-blueprint.example.json'),
    Path('specs/content-pack.example.json'),
    Path('specs/image-pack.example.json'),
    Path('specs/route-pack.example.json'),
]:
    json.loads(p.read_text())
    print(f"🟢 valid JSON: {p}")
PY

echo "🟢 forge check passed"
