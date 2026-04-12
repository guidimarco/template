# GUIDE: template-bootstrap

> Related: [[README]], [[AGENTS]], [[VISION]], [[ARCHITECTURE]], [[wiki/GLOSSARY]], [[wiki/guides/guide-crosslinks]]

## Goal

Turn placeholder repo into product fork without hunting strings

## Replace first

Global search `[PROJECT]` → real name in:

- [[README]], [[VISION]], [[ARCHITECTURE]], [[TESTING_STRATEGY]], [[AGENTS]], [[wiki/GLOSSARY]], root titles using that token

## Then

- Fill [[VISION]] + [[ARCHITECTURE]] (single source for product truth)
- Prune example links in area READMEs (eg fake `cmp-ui-button`) or replace with real notes
- Install graphifyy + MCP (`pipx`, `pipx inject`); configure `.mcp.json` and `.cursor/mcp.json`; run `graphify . --mode deep --obsidian`; see [[wiki/guides/guide-graphify]]

## Doc style

All new prose: [[wiki/guides/guide-syntax-lean]]
