# contributing

> Related: [[AGENTS]], [[wiki/README]], [[wiki/GLOSSARY]], [[CHANGELOG]], [[wiki/guides/guide-syntax-lean]], [[wiki/guides/guide-graphify]]

## Zero-Comment Policy

Minimize inline narration; code self-explains; non-obvious rationale lives in wiki

## Documentation Rule

Significant code file → twin `*.md` beside it (eg `user.py` + `user.md`); exceptions in project policy

## Wiki Content

Technical behavior, quirks, hotspots, failures; not marketing prose; substantive sections (see [[wiki/guides/guide-syntax-lean]] for density)
Area templates use `### Meta` bullets

## Code Annotations

Optional single-line comments near non-obvious logic:

- `@see [[wiki/path]]` — doc reference
- `@rel [[wiki/path]]` — related entity/schema
- `@doc <wiki/path>` — documentation
- `@code <path>` — code file

Patterns extracted by LLM semantic pass:

- `# NOTE:` — architectural notes
- `# IMPORTANT:` — critical decisions
- `# HACK:` — workarounds, tech debt
- `# WHY:` — design rationale (becomes `rationale_for` node)

Skip: obvious imports; direct calls; same-area links AST already captures

## Graph workflow

[[wiki/guides/guide-graphify]]; any doc or code change that must reflect in graph → `graphify . --mode deep --obsidian --output-dir ./obsidian-template/` then optional `./scripts/graph-verify.sh`; query graph via MCP before grep when MCP up

## Preflight

Tail [[CHANGELOG]]; scan [[wiki/GLOSSARY]]; align terms; query graph for near-duplicate concepts
