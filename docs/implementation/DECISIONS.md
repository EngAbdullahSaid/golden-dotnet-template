# Decisions

| ID | Date | Decision | Rationale |
|---|---|---|---|
| D-001 | 2026-11-15 | Target .NET 10 (LTS), SDK pinned in `global.json` to 10.0.201 with `rollForward: latestFeature` | Installed SDK; supported LTS |
| D-002 | 2026-11-15 | Modular monolith; one project per module plus separate Contracts project | Enforceable boundaries without microservices |
| D-003 | 2026-11-15 | No MediatR/CQRS/message broker by default | Brief forbids unjustified additions |
| D-004 | 2026-11-15 | Centralized package versions via `Directory.Packages.props` | Consistent, auditable dependencies |
| D-005 | 2026-11-15 | Certification states: Passed / Failed / Not executed / Requires manual verification | Brief section 16 |
