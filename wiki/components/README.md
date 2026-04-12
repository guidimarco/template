# README: components

> Related: [[wiki/README]], [[ARCHITECTURE]], [[wiki/GLOSSARY]], [[wiki/guides/guide-syntax-lean]]

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
# COMPONENT: [NAME]

> Related: [[ARCHITECTURE]], [[wiki/GLOSSARY]]

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
