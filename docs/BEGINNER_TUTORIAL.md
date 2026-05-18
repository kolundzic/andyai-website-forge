# 📘 TAPFORGE Beginner Tutorial

## 1. What is TAPFORGE?

TAPFORGE is a tool that helps apply changes to a GitHub repository in a controlled way.

It is designed for people who do not want to manually type many technical commands again and again.

---

## 2. What is a repo?

A repo is a project folder tracked by Git.

It remembers changes over time.

Example:

```text
/Users/andrijakolundzic/Documents/Projects/andyai-tapforge
```

---

## 3. What is payload?

Payload is the content we want to add or change.

Examples:

- new scripts
- new documentation
- new config files
- updated README

Short definition:

```text
Payload = what we change
```

---

## 4. What is an APPLY script?

An APPLY script is the automation script that puts the payload into the repo.

Short definition:

```text
APPLY script = how we apply the change
```

---

## 5. What is TAP-TAP?

TAP-TAP means two simple moves:

```text
TAP 1 = receive ZIP pack
TAP 2 = run one command
```

The aim is to reduce mistakes.

---

## 6. Why not type everything manually?

Manual work creates risk:

- wrong folder
- wrong file
- forgotten chmod
- missing git tag
- missing push
- no evidence

TAPFORGE reduces that risk by turning the process into a repeatable workflow.

---

## 7. Why is this software robotics?

A macro repeats simple steps.

TAPFORGE follows a controlled operating logic:

```text
Signal → Apply → Verify → Commit → Tag → Push → Evidence
```

That is a small form of software robotics.

The human stays the orchestrator.
