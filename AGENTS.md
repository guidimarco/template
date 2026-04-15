# AGENTS

> Related: [[wiki/README]], [[wiki/guides/guide-graphify]], [[wiki/guides/guide-syntax-lean]], [[wiki/guides/guide-crosslinks]], [[wiki/guides/contributing]]

_Project:_ [One-sentence project description]

## Syntax

Prose for wiki, comments, agent replies: [[wiki/guides/guide-syntax-lean]]

## Structure

OK: `wiki/` (9 areas; [[wiki/README]]); `graphify-out/` (`graph.json`, `graph.html`, `obsidian/`); `scripts/graph-verify.sh` (optional check only); root pillars [[wiki/guides/guide-crosslinks]]

## Graph

Policy: [[wiki/guides/guide-graphify]]

`graphify-out/graph.json`: query _only_ via MCP tools; MCP unavailable or failing → STOP; report (_CRITICAL_); no `GRAPH_REPORT.md` / file fallback for graph intelligence

## Conventions

Terminology: [[wiki/GLOSSARY]]; new terms need glossary entry  
Contributing: [[wiki/guides/contributing]]  
Naming: kebab-case + area prefix (`ent-`, `flow-`, `cmp-`, `dec-`, `api-`, `arch-`, `srv-`, `jrn-`, `guide-`)
Markdown H1: `# <stem>` only, `<stem>` = `.md` basename (matches `[[.../stem]]`); see [[wiki/README]] Naming  
Markdown rules: NO bold, OK italic
Changelog: [[CHANGELOG]] after substantive edits  
Wikilinks: [[wiki/guides/guide-crosslinks]]; wiki layout: [[wiki/README]]

## Commands

Detail: [[wiki/guides/guide-graphify]]

- MCP: stdio server loading `graphify-out/graph.json` (`.mcp.json` + `.cursor/mcp.json`)
- Rebuild graph: `graphify . --mode deep --obsidian --output-dir ./obsidian-template/` (bash; only path)
- Verify (optional): `./scripts/graph-verify.sh`
- Tests: [project-specific test command]

## Boot

0. Missing `graphify-out/graph.json`: human runs `graphify . --mode deep --obsidian --output-dir ./obsidian-template/`; then `./scripts/graph-verify.sh` — fail → STOP; report (_CRITICAL_)
1. Graph exists: obtain context via MCP graph tools only — MCP down or errors → STOP; report (_CRITICAL_)
2. [[VISION]], [[ARCHITECTURE]]; stop on violation
3. Wiki or code paths after graph context satisfied
4. External docs when needed
5. Non-trivial work: [[wiki/guides/guide-decision-protocol]]
