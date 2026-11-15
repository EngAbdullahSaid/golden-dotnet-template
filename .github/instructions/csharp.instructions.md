---
description: C# and ASP.NET Core coding standards
applyTo: "**/*.cs"
---
- Nullable reference types enabled; async all the way for I/O; pass `CancellationToken`.
- UTC timestamps (`DateTimeOffset`/`DateTime` UTC); money is `decimal` with explicit precision.
- Controllers and endpoints require authorization; use view models and DTOs, never EF entities.
- Inject dependencies; use the Options pattern for configuration; no static service locators.
- Modules reference other modules only through their Contracts project.
- No `NotImplementedException`, no secrets, no raw SQL concatenation.
