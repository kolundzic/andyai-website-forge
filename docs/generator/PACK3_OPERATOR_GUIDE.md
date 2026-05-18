# PACK3 Operator Guide

## Goal

Use the Website Forge generator to produce a route-aware public website scaffold from three controlled JSON files:

1. `specs/generated-site-blueprint.example.json`
2. `specs/content-pack.expanded.example.json`
3. `specs/route-pack.expanded.example.json`

## Basic command

```bash
./scripts/bootstrap-new-site.sh \
  specs/generated-site-blueprint.example.json \
  specs/content-pack.expanded.example.json \
  specs/route-pack.expanded.example.json \
  generated-sites/example-forge-site
```

## Verify generated site

```bash
./scripts/verify-generated-site.sh generated-sites/example-forge-site
```

## Run PACK3 check

```bash
./scripts/pack3-check.sh
```

## Safety

Generated sites must not include:

- `.env`
- `.env.local`
- `.next`
- `node_modules`
- secrets
- client data
- database credentials

## Operator meaning

PACK3 is the first point where Website Forge starts behaving like a real website factory:

```text
content in → routes generated → artifact verified
```
