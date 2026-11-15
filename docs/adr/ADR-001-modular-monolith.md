# ADR-001: Modular monolith

- Status: Accepted
- Date: 2026-11-15

## Context
The template must be deployable by small teams and still allow later extraction of services.

## Decision
One deployable ASP.NET Core application composed of modules under `src/Modules/`. Each module has Domain, Application, Infrastructure, Presentation and a separate Contracts project, owns its DbContext and database schema, and is reached by others only through Contracts or in-process events.

## Consequences
- Simple deployment and transactions within a module.
- Boundaries enforced by architecture tests (NetArchTest), not by network.
- Extraction later requires replacing in-process contracts with remote ones.
