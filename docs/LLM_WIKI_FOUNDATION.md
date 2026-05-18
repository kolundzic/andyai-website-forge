# 🌐 TAPFORGE LLM Wiki Foundation

## Purpose

This document prepares TAPFORGE documentation for a future LLM Wiki on Vercel.

The goal is simple:

> Users should be able to talk with the documentation.

---

## What the LLM Wiki should answer

A user should be able to ask:

- What is TAPFORGE?
- What is TAP-TAP?
- What is payload?
- What is an APPLY script?
- Why does the repo path stay fixed?
- How do I release a version?
- What is evidence?
- Why is this called software robotics?

---

## Content sources

The first LLM Wiki version should ingest:

```text
README.md
docs/
config/
scripts/
templates/
```

Priority docs:

| File | Purpose |
|---|---|
| README.md | Public overview |
| docs/BEGINNER_TUTORIAL.md | Simple learning path |
| docs/TAP_TAP_STANDARD.md | Workflow canon |
| docs/GLOSSARY.md | Beginner definitions |
| docs/SOFTWARE_ROBOTICS.md | Philosophy and system framing |
| docs/ARCHITECTURE.md | Technical structure |

---

## Vercel app idea

Suggested routes:

```text
/
  Landing page

/docs
  Static documentation index

/wiki
  Searchable documentation

/chat
  Chat with TAPFORGE docs
```

---

## Beginner explanation

A normal README is static.

An LLM Wiki is interactive.

Instead of reading everything, a user can ask:

> “Explain TAPFORGE like I am a beginner.”

and receive a grounded answer from the repo documentation.

---

## AndyAI standard

Every serious AndyAI repo should eventually have:

```text
Repo → Docs → LLM Wiki → Chat with knowledge
```

That turns a repository into a living knowledge product.
