# guide-template-bootstrap

> Related: [[README]], [[AGENTS]], [[VISION]], [[ARCHITECTURE]], [[wiki/GLOSSARY]], [[wiki/guides/guide-crosslinks]]

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
