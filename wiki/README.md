# README

Related:

- [[AGENTS]] agent policy; boot; graph-first
- [[wiki/GLOSSARY]] terminology enforcement
- [[wiki/guides/guide-graphify]] rebuild; MCP; outputs
- [[wiki/guides/guide-syntax-lean]] doc density and H1 rule
- [[wiki/guides/guide-crosslinks]] pillars; wikilinks; no duplicate edges

---

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

_H1 (first markdown heading):_ must be exactly `# <stem>` where `<stem>` is the filename without `.md` (same string as the wikilink path after the last `/`, eg `[[wiki/services/srv-docker-compose]]` ↔ file `srv-docker-compose.md` ↔ `# srv-docker-compose`). No `TYPE:` prefixes in H1; type lives in the filename prefix. Detail: [[wiki/guides/guide-syntax-lean]], [[wiki/guides/guide-crosslinks]]

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
