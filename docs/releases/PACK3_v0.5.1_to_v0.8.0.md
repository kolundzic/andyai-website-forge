# PACK3 — Content Pack + Route Pack Expansion

Range: `v0.5.1 → v0.8.0`

## Summary

PACK3 expands the Website Forge generator so it can read content and route packs and produce a more meaningful generated site scaffold.

## Versions

- `v0.5.1` — Content pack expansion contract
- `v0.5.2` — Route pack expansion contract
- `v0.6.0` — Generator content parser foundation
- `v0.6.1` — Homepage content section generation
- `v0.6.2` — Navigation generation
- `v0.6.3` — Route metadata generation
- `v0.7.0` — Project cards + signal cards generation
- `v0.7.1` — CTA block + visual slot generation
- `v0.7.2` — Content/route evidence generation
- `v0.8.0` — PACK3 Content + Route Pack Expansion Lock

## Verification

PACK3 must pass:

- `scripts/verify.sh`
- `scripts/forge-check.sh`
- `scripts/pack3-check.sh`
- `scripts/verify-generated-site.sh generated-sites/example-forge-site`

## Safety boundary

No Supabase. No auth. No database. No monetization. No client data. No runtime AI calls.
