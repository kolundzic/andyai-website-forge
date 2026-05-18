# Content + Route Pack Contract

## Content Pack required fields

```json
{
  "contentPackVersion": "0.3",
  "siteName": "Example Forge Site",
  "tagline": "A public website generated through AndyAI Website Forge.",
  "hero": {
    "headline": "...",
    "subheadline": "...",
    "primaryCta": "...",
    "secondaryCta": "..."
  },
  "sections": [],
  "projects": [],
  "signals": [],
  "ctas": []
}
```

## Route Pack required fields

```json
{
  "routePackVersion": "0.3",
  "navigation": [],
  "routes": []
}
```

## Generated route contract

Each declared route should produce a matching `app/<route>/page.tsx`, except `/`, which produces `app/page.tsx`.

Each route should include:

- title
- description
- page type
- at least one meaningful generated block

## Visual slot contract

Visual slots are placeholders for future image systems. They are not AI-generated images and do not call external services.

```json
{
  "id": "hero-visual",
  "label": "Hero visual",
  "purpose": "Explain the website's main concept",
  "suggestedAspectRatio": "16:9"
}
```
