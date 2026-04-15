# guide-crosslinks

> Related: [[wiki/guides/guide-syntax-lean]], [[wiki/README]], [[AGENTS]], [[wiki/guides/guide-graphify]]

## Goal

One canonical edge per concept; no copy-paste pillars across files

## Wikilink Rules

Use `[[path/to-note]]` for repo markdown; path matches file without `.md`
Alias: `[[wiki/entities/ent-task|Task]]` when display label helps scan

## Document title (H1)

First line of every wiki markdown note: `# <stem>` where `<stem>` is exactly the `.md` basename (same token as the last segment of `[[path/to/stem]]`). Wrong H1 breaks graphify and human search; agents must fix H1 when renaming files. Prose shape: [[wiki/guides/guide-syntax-lean]]

## Pillars and graph outputs

Pillars (duplicate nowhere; always link):

- [[VISION]], [[ARCHITECTURE]], [[TESTING_STRATEGY]], [[CHANGELOG]], [[AGENTS]], [[README]], [[wiki/README]], [[wiki/GLOSSARY]]
- New repo from template: [[wiki/guides/guide-template-bootstrap]]

Graph outputs (describe once; link here from elsewhere):

- `graphify-out/graph.json`, `GRAPH_REPORT.md`, `graph.html`, `obsidian/` — see [[wiki/guides/guide-graphify]]

## Boot

Full sequence: [[AGENTS]] (section Boot); graph sync first; then pillars; then graph query; then [[wiki/guides/guide-decision-protocol]] when non-trivial

Doc prose density: [[wiki/guides/guide-syntax-lean]]

Code/doc pairing and anchors: [[wiki/guides/contributing]]
