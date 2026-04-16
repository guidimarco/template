# guide-template-bootstrap

Related:

- [[README]] first human-facing doc
- [[AGENTS]] governance strings to replace
- [[VISION]] product placeholder
- [[ARCHITECTURE]] technical placeholder
- [[wiki/GLOSSARY]] terminology seed
- [[wiki/guides/guide-crosslinks]] link and H1 rules after fork

Implemented:

- [[.mcp.json]] fork must rewrite python path and graph.json path
- [[.cursor/mcp.json]] same rewrite as Claude MCP file

---

## Goal

Turn placeholder repo into product fork without hunting strings

## Replace first

Global search `[PROJECT]` → real name in:

- [[README]], [[VISION]], [[ARCHITECTURE]], [[TESTING_STRATEGY]], [[AGENTS]], [[wiki/GLOSSARY]], root H1 lines matching each file stem (`# README`, `# VISION`, …) after replacing `[PROJECT]`

## Then

- Fill [[VISION]] + [[ARCHITECTURE]] (single source for product truth)
- Prune example links in area READMEs (eg fake `cmp-ui-button`) or replace with real notes
- Install graphify + MCP (`pipx`, `pipx inject`); configure `.mcp.json` and `.cursor/mcp.json`; run `graphify . --mode deep --obsidian --output-dir ./obsidian-template/`; see [[wiki/guides/guide-graphify]]

## Doc style

All new prose: [[wiki/guides/guide-syntax-lean]]
