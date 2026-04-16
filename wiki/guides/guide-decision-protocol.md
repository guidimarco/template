# guide-decision-protocol

Related:

- [[AGENTS]] boot step 5 invokes this guide
- [[wiki/README]] where ADRs and areas live
- [[wiki/GLOSSARY]] cs and impl_ass terms

---

## Authority chain

[[AGENTS]] Boot step 5 invokes this guide for non-trivial repo work; this guide does not override [[VISION]] or [[ARCHITECTURE]] — if intent conflicts with pillars, stop and clarify (cs < 95% until resolved)

Repo-facing agents (editors, bridges, automation that mutate docs/code per [[AGENTS]]) must apply cs / impl_ass / decision matrix before execution when this guide applies

Skip when all hold:

- scope: single obvious change (typo, one file, user-supplied paste)
- risk: no architecture, security, data model, cross-cutting behavior
- ambiguity: one reading; no competing requirements

Always apply: new repo boot; new entities/flows/ADR; ambiguous spec; production-impacting edits

## Confidence score (cs)

Estimate user intent before execution

- cs ≥ 95%: execute
- cs < 95%: clarify until threshold

Signals: explicit instructions; context clarity; ambiguity; scope

## Implicit assumptions (impl_ass)

Non-trivial reply lists hidden assumptions

Format:

- impl_ass 1: …
- impl_ass 2: …

Purpose: surface gaps early; human can correct

## Decision matrix

Multiple approaches:

1. Options + pros/cons
2. cs per option
3. Pick highest cs
4. State rationale
5. If no option ≥ 95%: ask

## When

Boot on unfamiliar task (unless trivial opt-out); architecture; new entity/flow/component; ambiguous scope
