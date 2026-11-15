---
name: api-implementation
description: 'Implement API endpoints following API design. Use when the task involves api implementation or an agent references this skill.'
---

# api-implementation

## Purpose
Implement API endpoints following API design.

## Trigger conditions
- The user or an agent asks for api implementation.
- An agent profile lists this skill as applicable.

## Inputs
- API contract

## Required references
- docs/09-development
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Implement with authorization
2. Validate input
3. Return problem details
4. Add OpenAPI metadata
5. Add integration tests

## Outputs
- API endpoints

## Validation
- Contract tests pass
- unauthorized access denied
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Assets API.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
