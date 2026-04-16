# README

> Related: [[wiki/README]], [[TESTING_STRATEGY]], [[wiki/GLOSSARY]], [[wiki/guides/guide-syntax-lean]]

_Ordered logic; triggers; branches; retry; notifications; links journeys to events_

Flows ground [[VISION]] triggers and outcomes in executable steps; they must stay consistent with [[ARCHITECTURE]] (n8n vs OpenClaw split, Makefile contract)

## Conventions

- IO edge: [[wiki/api/README]]; infra: [[wiki/services/README]]
- Vocabulary: [[wiki/GLOSSARY]]
- Visuals: Mermaid when helpful

## Template

```markdown
# flow-[name]

> Related: [[wiki/api/README]], [[wiki/services/README]]

### Meta

- trigger: [event]

## Sequence

1. Step → target
2. Step → branch
3. Step → terminal state

## Error + retry

- Failure: condition → policy
- Notification: who/what
```
