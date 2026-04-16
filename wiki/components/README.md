# README

Related:

- [[wiki/README]] components area index
- [[ARCHITECTURE]] patterns and UI boundaries
- [[wiki/GLOSSARY]] component terminology
- [[wiki/guides/guide-syntax-lean]] cmp note shape

---

One file = one component; eg `cmp-ui-button.md`

## Catalog (add real files here)

- UI: `cmp-ui-button.md` — primary action
- Logic: `cmp-auth-wrapper.md` — session gate

## Atomic rules

- Accessibility: WCAG baseline
- Styles: scoped modules; no leaked globals
- Terms: [[wiki/GLOSSARY]]

## Template

````markdown
# cmp-<slug>

Related:

- [[ARCHITECTURE]] placement in system
- [[wiki/GLOSSARY]] public names

Implemented:

- _Link source files when cmp has code._

---

### Meta

- type: [ui | logic | adapter]
- status: [draft | implemented | deprecated]
- usage_context: [where mounted]

One-line purpose

## Implementation

- Props/inputs: …
- State: …
- Events: …

## Example

```javascript
<ComponentName prop="value" />
```
````
