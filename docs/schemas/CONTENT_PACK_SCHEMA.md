# Content Pack Schema

## Purpose

The Content Pack defines the words and story structure of a website.

## Required Content Blocks

```json
{
  "homepage": {
    "hero_title": "Main headline",
    "hero_subtitle": "Main explanation",
    "primary_cta": "Primary action",
    "secondary_cta": "Secondary action"
  },
  "navigation": [
    { "label": "Home", "href": "/" },
    { "label": "About", "href": "/about" }
  ],
  "sections": [
    {
      "id": "problem",
      "title": "Problem",
      "body": "Clear body copy",
      "proof": "Optional proof statement"
    }
  ],
  "about": {
    "title": "About",
    "body": "About copy"
  },
  "contact": {
    "title": "Contact",
    "email": "kolundzic@gmail.com"
  },
  "readme_manifest": "Short repo README positioning text"
}
```

## Rule

Content must be clear before it is beautiful.
