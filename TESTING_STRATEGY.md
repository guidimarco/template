# TESTING: [PROJECT]

> Related: [[VISION]], [[ARCHITECTURE]], [[wiki/GLOSSARY]], [[wiki/user_journeys/README]], [[wiki/guides/contributing]]

## Traceability

**Mandatory:** every suite, OKR mapping, and coverage claim MUST trace to [[VISION]] goals. Work without an explicit VISION anchor is out of scope until an ADR extends scope.

- [[VISION]] OKRs → E2E coverage (required)
- [[wiki/user_journeys/README]] journeys → suites
- [[wiki/GLOSSARY]] term misuse → critical defect

## Validation Stack

- _Logic (Unit):_ Domain Layer follows [[ARCHITECTURE]]; 0 dependencies; Vitest/Pytest
- _UI (Atomic):_ Storybook mandatory for each component; state coverage (loading/error)
- _Contract (API):_ I/O validation; Schema compliance
- _Flow (E2E):_ Playwright/Cypress; follows [[wiki/user_journeys/README]]

## Resilience & DoD

- _Boundary:_ null/max/invalid input testing
- _Recovery:_ retry strategies; circuit breaker validation
- _Done:_ >80% coverage; green E2E; Storybook verified; Glossary compliant
- Follow [[wiki/guides/contributing]]
