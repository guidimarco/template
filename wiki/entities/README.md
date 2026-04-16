# README

> Related: [[wiki/README]], [[VISION]], [[wiki/GLOSSARY]], [[wiki/guides/guide-syntax-lean]]

_Canonical business objects; schema; states; invariants; lifecycle; maps [[VISION]] entities_

Entity invariants support [[ARCHITECTURE]] consistency (git as source of truth, session-scoped branches, teardown rules)

## Conventions

- File `ent-<slug>.md`; path = graph id; H1 = `# ent-<slug>` (see [[wiki/README]] Naming)
- Fields snake_case; human-readable entity name in prose (optional PascalCase); terms in [[wiki/GLOSSARY]]

## Template

```markdown
# ent-<slug>

> Related: [[VISION]], [[wiki/GLOSSARY]]

## Schema

- field (type): meaning; constraints

## States

- Draft → …; Active → …

## Invariants

- Rule: constraint text

## Responsibilities

- Action: what entity triggers
```
