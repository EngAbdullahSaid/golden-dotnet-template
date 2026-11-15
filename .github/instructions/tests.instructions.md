---
description: Testing standards
applyTo: "tests/**"
---
- xUnit; arrange-act-assert; deterministic and isolated tests.
- Integration tests use `WebApplicationFactory` and an isolated database.
- Cover success, validation failure, anonymous, wrong-role, cross-tenant and ownership cases.
- Architecture tests enforce module boundaries.
- Report results as Passed, Failed, Not executed or Requires manual verification.
