# guide-crosslinks

Related:

- [[wiki/guides/guide-syntax-lean]] H1; density; markdown shape
- [[wiki/README]] wiki areas; stable paths
- [[AGENTS]] boot; graph-first policy
- [[wiki/guides/guide-graphify]] graph outputs; extraction

---

## Goal

One canonical edge per concept; no copy-paste pillars across files

## Wikilink rules

Use `[[path/to-note]]` for repo markdown; path matches file without `.md`
Alias: `[[wiki/entities/ent-task|Task]]` when display label helps scan

After H1 link `[[path-to-file]]` all docs and files related to the document:

- use `Related` for structural doc links: where this note lives in the doc tree; pillars; parent indexes; governance
- use `Implemented` (optional) for related code-file

Body: keep `[[wikilinks]]` inside sentences for logical or point relationships (definitions, prerequisites, examples, see-also flow)

```markdown
# guide-syntax-lean

Related:

- [[wiki/path/stem]] short reason

Implemented:

- [[path/to/file]] what that file implements

---
```

## Document title (H1)

First line of every wiki markdown note: `# <stem>` where `<stem>` is exactly the `.md` basename (same token as the last segment of `[[path/to/stem]]`). Wrong H1 breaks graphify and human search; agents must fix H1 when renaming files.

## Pillars and graph outputs

Pillars (duplicate nowhere; always link):

- [[wiki/VISION]], [[wiki/ARCHITECTURE]], [[wiki/TESTING_STRATEGY]], [[CHANGELOG]], [[AGENTS]], [[README]], [[wiki/README]], [[wiki/GLOSSARY]]
- New repo from template: [[wiki/guides/guide-template-bootstrap]]

Graph outputs (describe once; link here from elsewhere):

- `graphify-out/graph.json`, `GRAPH_REPORT.md`, `graph.html`, `obsidian/` — see [[wiki/guides/guide-graphify]]

## Boot

Full sequence: [[AGENTS]] (section Boot sequence); graph sync first; then pillars; then graph query; then [[wiki/guides/guide-decision-protocol]] when non-trivial

Doc prose density: [[wiki/guides/guide-syntax-lean]]

Code/doc pairing and anchors: [[wiki/guides/contributing]]
