# ADR-002: No MediatR, CQRS, event sourcing or message broker by default

- Status: Accepted
- Date: 2026-11-15

## Decision
Use plain application services/use-case classes and in-process domain events. Introducing MediatR, CQRS, event sourcing or a broker requires a new ADR with a demonstrated need.

## Consequences
- Less indirection and fewer dependencies.
- Cross-cutting concerns (validation, authorization, audit) are applied explicitly in use cases.
