# README: user_journeys

> Related: [[VISION]], [[wiki/GLOSSARY]], [[TESTING_STRATEGY]], [[wiki/README]], [[wiki/guides/guide-syntax-lean]]

One file = one journey; eg `jrn-user-registration.md`
Tone: [[wiki/guides/guide-syntax-lean]]; [[wiki/GLOSSARY]] strict

## Template

```markdown
# JOURNEY: [NAME]

> Related: [[VISION]], [[TESTING_STRATEGY]]

### Meta

- path: [eg Auth > Signup]
- trigger: [user action]
- journey_context: [preconditions]

## Flow

1. user step → user step
2. step → system reaction
3. decision → branch A | branch B
4. final step → goal

## Failure modes

- Error: trigger → expected block/message
- Edge: odd input → safe fallback

## Validation (DoD)

- UI: expected feedback
- Data: persistence/state delta
```
