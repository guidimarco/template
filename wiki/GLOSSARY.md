# wiki/GLOSSARY

> Related: [[AGENTS]], [[VISION]], [[wiki/README]], [[CHANGELOG]]

Unique terminology for doc and code

_Rules:_

- name: snake_case, unique
- description: max 100 chars
- status enum:
  - `draft`: initial definition; agent can propose changes
  - `proposed`: ready for review; waiting for human/CTO approval
  - `active`: official term; mandatory for code/docs; agent cannot change without auth
  - `deprecated`: legacy term; agent must ignore or plan migration
- _Enforcement:_ use only terms defined here; prohibited synonyms in `cannot` field

_Format:_

- term_name (status) [cannot]: description

## Entries

### Meta Entity

Generic meta and infrastructure entity

- knowledge_graph (active) [graph, kg]: semantic graph of code and docs built by graphify; stored in graphify-out/
- graphify (active) [graphify_tool]: build via `graphify . --mode deep --obsidian`; query via MCP only; see [[wiki/guides/guide-graphify]]
- mcp_server (active) [mcp]: Model Context Protocol server; exposes graph queries to AI agents via stdio
- obsidian_vault (active) [vault]: Obsidian-compatible markdown vault generated from knowledge graph
- graph_node (draft) [node]: single concept/file/function in the knowledge graph
- graph_edge (draft) [edge, link]: relationship between two graph nodes; types: EXTRACTED (confidence 1.0) or INFERRED
- god_node (draft): node with highest connection count; entry point for graph exploration
- community (draft) [cluster]: group of related graph nodes identified by clustering algorithm
- implicit_assumption (active) [impl_ass]: hidden assumption surfaced during task evaluation; see [[wiki/guides/guide-decision-protocol]]
- confidence_score (active) [cs]: estimate of user intention clarity; threshold 95% for execution; see [[wiki/guides/guide-decision-protocol]]

### Project Entity

Project and business logic entity; use the `ent_` prefix before

- eg ent_user (draft) [client, person, human]: physical person that use the platform
