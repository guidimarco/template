# README: decisions

> Related: [[VISION]], [[wiki/arch/README]], [[CHANGELOG]], [[wiki/guides/guide-syntax-lean]]

One file = one ADR; eg `dec-2026-04-12-choice-slug.md`
Initial status `proposed`; keep `problem_context` / `decision` / `consequences` ultra short; details optional (≤2 lines)

## Template

```markdown
# DECISION: [short-slug]

> Related: [[VISION]], [[ARCHITECTURE]]

### Meta

- date: 2026-04-12
- status: proposed
- problem_context: async state complexity
- decision: adopt RTK Query
- consequences: less boilerplate; built-in cache

## Details

SQLite simpler; PostgreSQL + JSONB chosen for scale + agent metadata
```
