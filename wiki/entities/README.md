# README

Related:

- [[wiki/README]] entities area index
- [[VISION]] business objects source
- [[wiki/GLOSSARY]] term linkage
- [[wiki/guides/guide-syntax-lean]] ent note shape

---

_Canonical business objects; schema; states; invariants; lifecycle; maps [[VISION]] entities_

Entity invariants support [[ARCHITECTURE]] consistency (git as source of truth, session-scoped branches, teardown rules)

## Conventions

- File `ent-<slug>.md`; path = graph id; H1 = `# ent-<slug>` (see [[wiki/README]] Naming)
- Fields snake_case; human-readable entity name in prose (optional PascalCase); terms in [[wiki/GLOSSARY]]

## Template

```markdown
# ent-<slug>

Related:

- [[VISION]] entity role in product
- [[wiki/GLOSSARY]] canonical names

Implemented:

- _Link schema migrations or domain modules when present._

---

## Schema

- field (type): meaning; constraints

## States

- Draft → …; Active → …

## Invariants

- Rule: constraint text

## Responsibilities

- Action: what entity triggers
```
