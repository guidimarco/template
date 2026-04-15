# README

> Related: [[wiki/README]], [[wiki/services/README]], [[wiki/GLOSSARY]], [[wiki/guides/guide-syntax-lean]]

_Data contracts; interface truth; error taxonomy_

## Conventions

- Paths kebab-case; body keys snake_case; custom headers Pascal-Kebab-Case
- Version prefix eg `/v1/`
- Auth: bearer unless `[PUBLIC]`

## Index

-

## Template

````markdown
# api-<slug>

> Related: [[wiki/services/README]], [[wiki/GLOSSARY]]

## Interface

- Auth: [Bearer|Public|API-Key]
- Endpoint: `https://api.domain.com/v1/[resource]`

## Params

### Headers

- `Authorization` (string) [req]: `Bearer <token>`
- `X-Trace-ID` (uuid) [opt]: correlation

### Query

- `limit` (int) [opt]: default 20; max 100
- `sort` (enum) [opt]: `asc` | `desc`

### Body

- `user_id` (uuid) [req]: must exist in [[wiki/entities/ent-user]]
- `metadata` (object) [opt]: key-value

## Responses

### Success: 200 | 201

- Body: returned object shape

```json
{ "id": "uuid", "status": "active" }
```

### Errors

- 400 VALIDATION_ERROR — bad shape
- 401 UNAUTHORIZED — token
- 403 FORBIDDEN — scope
- 429 RATE_LIMIT — quota; `Retry-After`
````
