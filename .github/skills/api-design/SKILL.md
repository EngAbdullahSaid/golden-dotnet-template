---
name: api-design
description: 'Design REST APIs with DTOs, versioning and error contracts. Use when the task involves api design or an agent references this skill.'
---

# api-design

## Purpose
Design REST APIs with DTOs, versioning and error contracts.

## Trigger conditions
- The user or an agent asks for api design.
- An agent profile lists this skill as applicable.

## Inputs
- Use cases

## Required references
- docs/05-architecture
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Define resources and routes
2. Define request and response DTOs
3. Define status codes and problem details
4. Define authorization and versioning

## Outputs
- API contract

## Validation
- No entity exposure
- every route has authorization
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
GET /api/assets with paging.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
