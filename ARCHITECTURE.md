# ARCHITECTURE

Related:

- [[VISION]] product constraints and entities source
- [[wiki/GLOSSARY]] technical terms alignment
- [[TESTING_STRATEGY]] suites mapped to architecture layers
- [[AGENTS]] scope and guardrails for agents

---

## Style + patterns

- Core pattern (eg hexagonal, clean)
- Paradigm (eg event-driven)
- Communication (eg REST, async bus)

## Stack + integration

- _Runtime:_ [eg Node.js, Python, Go]
- _Persistence:_ [eg PostgreSQL (Relational), Redis (Cache), MongoDB (Document)]
- _Orchestration:_ [eg n8n role vs custom logic]
- _Execution:_ [eg AI agents management (OpenClaw) and protocols (MCP)]

## Data engineering

_Technical translation of entities defined in [[VISION]]_

- _Data Flow:_ how data moves between layers
- _Consistency:_ [eg Eventual Consistency, ACID]
- _Validation:_ where validation logic resides (eg Domain Layer)

## Guardrails

_Non-negotiable technical constraints_

- _Performance:_ [eg Latency target, throughput optimization]
- _Security:_ [eg OAuth2, RBAC, encryption at rest]
- _Reliability:_ [eg Retry strategy, Circuit Breaker, Error handling]
- _Scalability:_ [eg Horizontal via Docker, peak load management]

## Development & Deployment Rules

- _Branching Strategy:_ [eg Trunk-based, GitFlow]
- _CI/CD:_ test and deploy automation
- _Infrastructure:_ [eg Docker-first, Cloud-native, Self-hosted]

## Technical Debt & Constraints

- _Current Constraints:_ current technical limitations
- _Debt Strategy:_ how and when to refactor critical components
