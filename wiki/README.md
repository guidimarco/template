# README: wiki

> Related: [[AGENTS]], [[wiki/GLOSSARY]], [[wiki/guides/guide-graphify]], [[wiki/guides/guide-syntax-lean]], [[wiki/guides/guide-crosslinks]]

## Doc style

[[wiki/guides/guide-syntax-lean]]; wikilink rules: [[wiki/guides/guide-crosslinks]]

## Graphify Conventions

Operations, outputs, rebuild: [[wiki/guides/guide-graphify]]
Filename/path = stable node id; rename in Obsidian with link refresh
Repo wikilinks feed extraction; `graphify-out/obsidian/` generated; open as vault for navigation

## Naming

Pillars: [[wiki/guides/guide-crosslinks]]
Each area: `README.md` inside folder
Kebab-case notes + prefix: `api-<slug>.md`, `arch-<slug>.md`, `cmp-<slug>.md`, `dec-YYYY-MM-DD-<slug>.md`, `ent-<slug>.md`, `flow-<slug>.md`, `guide-<slug>.md`, `srv-<slug>.md`, `jrn-<slug>.md`

## Areas

Nine areas:

- [[wiki/api/README]] — data exchange (REST, gRPC, auth, payloads, errors, limits)
- [[wiki/arch/README]] — standards, diagrams, naming, branching, layout; ADR pointer [[wiki/decisions/README]]
- [[wiki/components/README]] — reusable modules, UI, adapters, patterns
- [[wiki/decisions/README]] — ADR history
- [[wiki/entities/README]] — schema, states, invariants, lifecycle
- [[wiki/flows/README]] — sequences, triggers, retries, notifications
- [[wiki/guides/README]] — procedures, onboarding, [[wiki/guides/contributing]]
- [[wiki/services/README]] — infra, containers, env, networking, logs
- [[wiki/user_journeys/README]] — E2E paths, DoD, failure modes
