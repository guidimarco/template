# README

Related:

- [[wiki/VISION]] scope and goals ADRs must respect
- [[wiki/arch/README]] standards area; ADR index role
- [[CHANGELOG]] record substantive decision milestones
- [[wiki/guides/guide-syntax-lean]] ADR density

---

One file = one ADR; eg `dec-2026-04-12-choice-slug.md`
Initial status `proposed`; keep `problem_context` / `decision` / `consequences` ultra short; details optional (≤2 lines)

## Template

```markdown
# dec-YYYY-MM-DD-<slug>

Related:

- [[wiki/VISION]] goal or constraint anchor
- [[wiki/ARCHITECTURE]] technical impact

---

### Meta

- date: 2026-04-12
- status: proposed
- problem_context: async state complexity
- decision: adopt RTK Query
- consequences: less boilerplate; built-in cache

## Details

SQLite simpler; PostgreSQL + JSONB chosen for scale + agent metadata
```
