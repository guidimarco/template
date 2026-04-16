# AGENTS

Related:

- [[wiki/README]] nine-area wiki hub; naming and layout
- [[wiki/guides/guide-graphify]] MCP-only graph query; rebuild; outputs
- [[wiki/guides/guide-syntax-lean]] token-tight prose; markdown shape for agents
- [[wiki/guides/guide-crosslinks]] wikilinks; pillars; single canonical edges
- [[wiki/guides/contributing]] doc-code workflow; anchors; changelog discipline

Implemented:

- [[.mcp.json]] Claude Code stdio MCP server; loads `graphify-out/graph.json`
- [[.cursor/mcp.json]] Cursor MCP mirror; same graphify serve args
- [[scripts/graph-verify.sh]] optional jq checks on `graph.json` and report artifacts

---

_Project:_ [One-sentence project description]

## Syntax

## Knowledge map

_Reconstruct logical hierarchy before acting_

- [[VISION]] [[ARCHITECTURE]] strategic pillars; stop on violation
- [[wiki/GLOSSARY]] mandatory terminology; new terms need entries
- [[wiki/README]] index of nine wiki areas
- [[wiki/guides/guide-decision-protocol]] procedural gate for non-trivial work

---

## Protocols

_Syntax; naming; linking; tracking; repo layout_

- Writing: prose per [[wiki/guides/guide-syntax-lean]]; NO bold; OK italic
- Naming: kebab-case + area prefix (`ent-`, `flow-`, `cmp-`, `dec-`, `api-`, `arch-`, `srv-`, `jrn-`, `guide-`); H1 equals filename stem; see [[wiki/README]] Naming
- Linking: wikilinks per [[wiki/guides/guide-crosslinks]]; structural ties in header Related; logical ties inline in body
- Tracking: substantive edits → [[CHANGELOG]]
- Structure: OK `wiki/` (9 areas; [[wiki/README]]); `graphify-out/` (`graph.json`, `graph.html`, `obsidian/`); `./scripts/graph-verify.sh` (optional check only); root pillar rules [[wiki/guides/guide-crosslinks]]

---

## Graph operations

_Source; failure policy; rebuild; verify; tests_

- Policy: [[wiki/guides/guide-graphify]]
- Source: `graphify-out/graph.json`; query _only_ via MCP tools; MCP unavailable or failing → STOP; report (_CRITICAL_); no `GRAPH_REPORT.md` / file fallback for graph intelligence
- Verify (optional): `./scripts/graph-verify.sh`
- Tests: [project-specific test command]

---

## Boot sequence

_Strict order_

0. Missing `graphify-out/graph.json`: human runs `graphify . --mode deep --obsidian --output-dir ./obsidian-template/`; then `./scripts/graph-verify.sh` — fail → STOP; report (_CRITICAL_)
1. Graph exists: obtain context via MCP graph tools only — MCP down or errors → STOP; report (_CRITICAL_)
2. [[VISION]], [[ARCHITECTURE]]; stop on violation
3. Wiki or code paths after graph context satisfied
4. External docs when needed
5. Non-trivial work: [[wiki/guides/guide-decision-protocol]] — gates confidence and assumptions before execution
