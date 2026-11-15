---
name: usecase-implementation
description: 'Implement an application use case with validation, authorization and audit. Use when the task involves usecase implementation or an agent references this skill.'
---

# usecase-implementation

## Purpose
Implement an application use case with validation, authorization and audit.

## Trigger conditions
- The user or an agent asks for usecase implementation.
- An agent profile lists this skill as applicable.

## Inputs
- Use case, acceptance criteria

## Required references
- docs/04-use-cases
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Define the request and result
2. Validate input
3. Authorize via policy or resource check
4. Execute and audit
5. Write tests

## Outputs
- Use case code and tests

## Validation
- Tests cover success, validation and authorization
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
CreateAsset use case.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
