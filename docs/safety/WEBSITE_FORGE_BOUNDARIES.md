# Website Forge Safety Boundaries

## PACK1 Safety Lock

At PACK1, Website Forge is documentation/spec/script foundation only.

## Explicitly Out of Scope

- Supabase
- authentication
- database
- monetization
- client upload
- client data
- runtime AI calls
- payment processing
- secrets management beyond basic `.env` avoidance
- modifying `andyai-main-site`

## Repo Boundary

Website Forge must remain separate from `andyai-main-site`.

`andyai-main-site` is the public central pillar.

`andyai-website-forge` is the production system for future sites.

## Data Rule

Do not store private client data in this repo.

## Secret Rule

Never commit:

- `.env`
- `.env.local`
- API keys
- service tokens
- credentials
- private client documents

## Generated Artifact Rule

Do not commit:

- `.next/`
- `node_modules/`
- build caches
- ZIP packages
- local Vercel output
