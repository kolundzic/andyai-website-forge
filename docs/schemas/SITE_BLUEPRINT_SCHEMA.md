# Site Blueprint Schema

## Purpose

The Site Blueprint is the master identity document for a new website.

It answers:

- What is this site?
- Who is it for?
- What should it prove?
- What routes should exist?
- What visual direction should it follow?
- What domain or subdomain will it use?

## Required Fields

```json
{
  "site_name": "Example Site",
  "repo_name": "example-site",
  "domain": "example.andyai.ai",
  "purpose": "Short purpose statement",
  "audience": ["primary audience"],
  "site_type": "landing | product | project | presentation | portfolio | signal | report",
  "core_message": "The main sentence visitors must understand",
  "routes": ["/", "/about", "/contact"],
  "visual_direction": "clean professional AndyAI visual canon",
  "qa_level": "foundation | public | production",
  "owner": "Andrija Kolundzic / Japan IT Business",
  "status": "draft | build | qa | live"
}
```

## Design Principle

A Site Blueprint must be short enough to read quickly and strong enough to guide a build.
