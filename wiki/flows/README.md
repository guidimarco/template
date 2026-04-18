# README

Related:

- [[wiki/README]] flows area index
- [[wiki/TESTING_STRATEGY]] flow and E2E alignment
- [[wiki/GLOSSARY]] event and step vocabulary
- [[wiki/guides/guide-syntax-lean]] flow note shape

---

_Ordered logic; triggers; branches; retry; notifications; links journeys to events_

Flows ground [[wiki/VISION]] triggers and outcomes in executable steps; they must stay consistent with [[wiki/ARCHITECTURE]] (n8n vs OpenClaw split, Makefile contract)

## Conventions

- IO edge: [[wiki/api/README]]; infra: [[wiki/services/README]]
- Vocabulary: [[wiki/GLOSSARY]]
- Visuals: Mermaid when helpful

## Template

```markdown
# flow-[name]

Related:

- [[wiki/api/README]] external IO this flow hits
- [[wiki/services/README]] infra dependencies

Implemented:

- _Link automation exports, workers, or Makefile targets._

---

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
