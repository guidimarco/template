# README: entities

> Related: [[wiki/README]], [[VISION]], [[wiki/GLOSSARY]], [[wiki/guides/guide-syntax-lean]]

_Canonical business objects; schema; states; invariants; lifecycle; maps [[VISION]] entities_

## Conventions

- File `ent-<slug>.md`; path = graph id
- Fields snake_case; entity titles PascalCase; terms in [[wiki/GLOSSARY]]

## Template

```markdown
# ENTITY: [Name]

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
