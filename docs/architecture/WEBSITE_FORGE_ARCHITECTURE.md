# 🏗️ Website Forge Architecture

## Purpose

AndyAI Website Forge is a controlled production system for creating new public websites from verified content, visual, routing, deployment and QA patterns.

## Initial Architecture

```text
Idea
  ↓
Site Blueprint
  ↓
Content Pack
  ↓
Image Pack
  ↓
Route Pack
  ↓
Site Scaffold
  ↓
Local Build QA
  ↓
GitHub Repo
  ↓
Vercel Deployment
  ↓
Domain QA
  ↓
Public Website
```

## PACK1 Scope

PACK1 creates the foundation only:

- documentation
- schemas
- example specs
- verification scripts
- safety boundaries
- evidence log

PACK1 does not create a production Next.js template yet.

## Core Modules

### 1. Site Blueprint

Defines the website identity, purpose, audience, domain, route map, visual direction, and publishing target.

### 2. Content Pack

Defines homepage copy, section copy, navigation, project cards, signals, proof blocks, about/contact text, and README manifest direction.

### 3. Image Pack

Defines required visuals, aspect ratios, alt text, image purpose, and visual canon role.

### 4. Route Pack

Defines required and optional routes.

### 5. QA Pack

Defines local and online checks.

### 6. TAP-TAP Release Pack

Defines apply, verify, commit, tag, push, and evidence workflow.

## Safety Architecture

Website Forge starts without:

- database
- authentication
- user uploads
- client data storage
- runtime AI calls
- monetization logic
- cross-repo modification

This keeps PACK1 safe, clean, and easy to verify.

## Future Engine Direction

Future versions should evolve toward:

- `forge init site`
- `forge validate blueprint`
- `forge generate scaffold`
- `forge check routes`
- `forge check images`
- `forge prepare vercel`
- `forge run online-qa`
- `forge evidence export`
