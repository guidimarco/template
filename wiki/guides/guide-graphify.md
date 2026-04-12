# GUIDE: graphify

> Related: [[AGENTS]], [[wiki/README]], [[wiki/guides/contributing]], [[README]], [[wiki/guides/guide-crosslinks]]

_MCP = sole query surface; rebuild = one bash command; no wrappers, no alternate query paths_

## Query (agents)

OK: MCP tools on `graphify-out/graph.json` (`query_graph`, `get_node`, `get_neighbors`, `get_community`, `god_nodes`, `graph_stats`, `shortest_path`)
NO: ad-hoc Python, `jq` on graph data, `graphify query`, manual JSON traversal, reading `GRAPH_REPORT.md` or sources _as substitute for MCP_

MCP off, misconfigured, or tool errors → STOP; report to human (_CRITICAL_); do not proceed on graph context

## Config (Cursor + Claude Code)

Project files: `.mcp.json` (Claude Code), `.cursor/mcp.json` (Cursor)
Both: `python -m graphify.serve` with absolute path to repo `graphify-out/graph.json`; interpreter = pipx venv for `graphifyy` with `mcp` injected (`pipx inject graphifyy mcp`)
Do not put `mcpServers` in `.claude/settings.json`; Claude Code reads `.mcp.json` / `~/.claude.json`
Fork template: replace `command` (path to `…/pipx/venvs/graphifyy/bin/python`) and last `args` element (absolute `graph.json` path) in both JSON files
Optional CLI override: `claude mcp add --transport stdio --scope local graphify -- <python> -m graphify.serve "$PWD/graphify-out/graph.json"`

After each rebuild of `graph.json`: restart MCP server or IDE session that launched it

_Governance:_ keep MCP server count low; prefer stdio for local; never commit secrets — use env if keys ever needed ([[AGENTS]] aligns policy)

## Rebuild (human or scripted outside agents)

```bash
graphify . --mode deep --obsidian
```

Only acceptable refresh path; no Skill shortcut, no other scripts, no incremental graph-update utilities

## Install (once)

```bash
pipx install graphifyy
pipx inject graphifyy mcp
graphify install claude
graphify install cursor
```

## Verify (optional quality gate)

```bash
./scripts/graph-verify.sh
```

Checks edge/node ratio, `GRAPH_REPORT.md` sections, `graph.html` presence

## Output

`graphify-out/` only (`graph.json`, `GRAPH_REPORT.md`, `graph.html`, `obsidian/`); inventory pointer: [[wiki/guides/guide-crosslinks]]
