# GUIDE: syntax-lean

> Related: [[AGENTS]], [[wiki/README]], [[wiki/guides/guide-crosslinks]]

Documentation, comments, agent replies — token-tight; graph-friendly
NO: [[VISION]], [[ARCHITECTURE]], [[TESTING_STRATEGY]], [[README]]

## Goal

Minimize tokens; maximize information density; zero filler

## Sentences

Atomic sentences; one concept per line
No articles (the, a, an)
No auxiliary verbs when removable (is, are, must, should)
No adjectives or adverbs (beautiful, fast, efficiently)
No filler phrases (certainly, I understand, here is the result)
Use nouns and verbs; prefer imperative
No period; use `;` to link related concepts; newline for new block
Prefer inline lists over bullet points when items are short

_Example:_
Bad: "The authentication service must be configured before the user can access the API endpoints"
Good: "Configure auth service before API access"

## Lists

Use when items need scanning; prefer newline per item
Allowed shorthand: `OK:` and `NO:` for constraint lists

_Example:_
OK: REST, gRPC, WebSocket
NO: SOAP, XML-RPC

## Markdown Format

Title: `# TYPE: name` (eg `# GUIDE: syntax-lean`)
Subtitle: `> Related: [[...]]` (always)
Headings: `##`; `###` only when subsection needed
Emphasis: _italics_ only; no bold
Density: data needed for execution; 3–5 tight lines per section where concept needs glue
Links: `[[path]]` per [[wiki/guides/guide-crosslinks]]

```markdown
# GUIDE: syntax-lean

> Related: [[AGENTS]], [[wiki/README]]
```

## Comments in code

[[wiki/guides/contributing]]

## Agent Reply Format

```markdown
Task: <summary>
Status: done | blocked | clarification needed
Output: <data or reference>
```

Tone: technical, dry, architectural
Skip greetings, confirmations, preamble
Use natural compressed prose; no symbolic shorthand

## Avoid

NO: symbolic operators as word substitutes (`&` `->` `::` `4`)
NO: numbers as words (`1` for only, `2` for to)
NO: invented syntax that requires a decoder ring
NO: compression that creates ambiguity

_Rationale:_ LLMs tokenize symbols and words similarly; symbolic shorthand saves ~0 tokens but degrades readability for humans and extraction quality for semantic tools (graphify, Obsidian)
