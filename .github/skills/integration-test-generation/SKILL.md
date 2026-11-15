---
name: integration-test-generation
description: 'Generate ASP.NET Core integration tests with a real database. Use when the task involves integration test generation or an agent references this skill.'
---

# integration-test-generation

## Purpose
Generate ASP.NET Core integration tests with a real database.

## Trigger conditions
- The user or an agent asks for integration test generation.
- An agent profile lists this skill as applicable.

## Inputs
- Endpoint or use case

## Required references
- docs/10-testing
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Use WebApplicationFactory
2. Use an isolated test database
3. Seed minimal data
4. Assert status and data

## Outputs
- Integration tests

## Validation
- Tests are isolated and repeatable
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Assets API tests.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
