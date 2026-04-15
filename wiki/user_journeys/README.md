# README

> Related: [[VISION]], [[wiki/GLOSSARY]], [[TESTING_STRATEGY]], [[wiki/README]], [[wiki/guides/guide-syntax-lean]], [[wiki/flows/README]], [[wiki/services/README]]

One file = one journey; name prefix `jrn-`; kebab-case slug

Tone: [[wiki/guides/guide-syntax-lean]]; [[wiki/GLOSSARY]] strict

## Scope

Documents _user intent and outcomes_ (what user pursues; why it matters; how they know they succeeded)

NO: command sequences; config keys; stack internals; API payloads → [[wiki/flows/README]], [[wiki/services/README]], [[wiki/api/README]]

## Principles

_Outcome-first (JTBD)_
Situation; motivation; measurable outcome

_Success before failure_
Define done-state and user-visible proof before branches; enumerate degradation only after happy path + variants anchored

_Actor isolation_
Explicit constraints: role; channel; device class; network/session assumptions; time (sync deadline vs async wait; session boundary; clock skew tolerance if relevant)

_Progressive disclosure_
Order: job → success criteria → primary path (coarse stages) → branches → failure/degradation → traceability
Within path: stage = user action + perception first; optional latency note (what user sees while waiting); defer mechanism detail to linked wiki

_Traceability_
Each journey links [[VISION]] goals and [[TESTING_STRATEGY]] validation where automated checks exist

## Index

Add one line per `jrn-*.md` in this folder after file exists (avoid orphan wikilinks)

---

## Template

Copy into new `jrn-<slug>.md`; replace bracketed fields; keep sections even when short (explicit empty = intentionally N/A)

```markdown
# jrn-[slug]

> Related: [[VISION]], [[TESTING_STRATEGY]]

## Job

- situation: [context or trigger in user's world]
- motivation: [pressure, risk, or opportunity]
- outcome: [concrete result user obtains; testable from outside]

## Actor & isolation

- role: [who acts]
- channel: [surface: app, chat, CLI, …]
- device & environment: [capabilities; offline; screen; input mode]
- time: [sync vs async; deadlines; session scope; idle timeout if it changes UX]

## Entry

- trigger: [user-visible starting action or event]
- preconditions: [must hold before start; user-observable or policy-level]

## Success

- done when: [completion criteria; bullet checklist OK]
- user-perceived signals: [progress, confirmation, artifacts user receives]
- end state: [persistent or session outcome in domain terms; no schema leakage]

## Primary path

Number stages; one user-visible beat per line; system behavior only as user experiences it

1. [stage]: user does X → user sees/hears Y → (optional) perceived wait / pacing note
2. …

## Branches & variants

- if [user-visible condition] → [alternate path or sub-outcome]; link [[wiki/flows/…]] or [[wiki/services/…]] for mechanism

## Degradation & failure

- [class: validation, timeout, permission, dependency, …] → [what user experiences] → [safe end or recovery affordance]

## Validation

- automated: [suite or contract refs per [[TESTING_STRATEGY]]]
- manual / exploratory: [scenarios not worth automating]

## Implementation map

- flows: [[wiki/flows/…]]
- services | APIs: [[wiki/services/…]], [[wiki/api/…]]
```
