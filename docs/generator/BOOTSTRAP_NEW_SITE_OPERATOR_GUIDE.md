# Bootstrap New Site — Operator Guide

```bash
./scripts/bootstrap-new-site.sh specs/generated-site-blueprint.example.json
```

Optional output directory:

```bash
./scripts/bootstrap-new-site.sh specs/generated-site-blueprint.example.json generated-sites
```

The generator creates a minimal Next.js-style scaffold under `generated-sites/<site_slug>/` with README, package files, app routes, visual placeholder folder, and generation evidence.

Operator rule: the blueprint is the instruction, the scaffold is the artifact, and the evidence is the proof.
