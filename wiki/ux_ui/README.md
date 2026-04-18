# README

Related:

- [[wiki/README]] doc hub; naming; graphify
- [[wiki/ARCHITECTURE]] UI boundaries; non-functional guardrails
- [[wiki/components/README]] reusable UI modules; `cmp-*` notes
- [[wiki/user_journeys/README]] E2E paths; acceptance framing
- [[wiki/VISION]] product intent; UX outcomes traceability
- [[wiki/GLOSSARY]] shared terminology
- [[wiki/guides/guide-syntax-lean]] prose density; H1 rule
- [[wiki/guides/guide-crosslinks]] Related vs body links

---

Area hub for UX and UI product documentation; generic patterns; stack-agnostic
Purpose: encode principles, foundations, patterns, and review criteria so design and engineering share one source of truth; reduce one-off rebuilds and drift

## Audience

OK: designers, frontend engineers, QA, content, PM
Expectation: self-service answers (when to use what, how it behaves, how to verify)

## Scope

In: visual language, interaction, content UX, accessibility expectations, pattern libraries, review checklists
Out: implementation detail in code (link [[wiki/components/README]]); infra ([[wiki/services/README]]); ADR history ([[wiki/decisions/README]])

## Doc layers (generic)

Order mirrors common design-system practice; adapt depth to team size

1. _Why_: problem, goals, ownership, how to consume this area
2. _Principles_: decision rules; trade-offs; when to escalate
3. _Foundations_: color, type, spacing, grid, motion, iconography, elevation (tokens or equivalents)
4. _Components_: role, anatomy, variants, states, behavior, a11y, content limits, examples, do/don't
5. _Patterns & flows_: multi-step UX (forms, empty, loading, errors, navigation)
6. _Governance_: contribution, review, versioning, deprecation

Prefer live examples or references over static-only screenshots when possible; keep docs in sync with shipped UI

## Accessibility baseline

Target WCAG-aligned behavior; document keyboard order, focus, labels, motion reduction; pair with [[wiki/TESTING_STRATEGY]] for verification hooks

## Catalog (add real files here)

- `ux-principles.md` — decision rules (H1 `# ux-principles` after file exists)
- `ux-foundations.md` — tokens and global rules
- `ux-pattern-forms.md` — reusable flow

New note: kebab-case stem; first line `# <stem>`; `Related` block per [[wiki/guides/guide-crosslinks]]

## Template (single topic)

````markdown
# ux-<slug>

Related:

- [[wiki/ux_ui/README]] area index
- [[wiki/ARCHITECTURE]] constraints
- [[wiki/components/README]] implementation touchpoints

---

One-line purpose; audience

## Rules

- When to use; when to avoid

## Specs

- Structure, states, motion, copy limits

## Accessibility

- Keyboard; screen reader; contrast

## References

- External pattern links only when stable
````
