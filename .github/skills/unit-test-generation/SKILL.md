---
name: unit-test-generation
description: 'Generate focused xUnit unit tests. Use when the task involves unit test generation or an agent references this skill.'
---

# unit-test-generation

## Purpose
Generate focused xUnit unit tests.

## Trigger conditions
- The user or an agent asks for unit test generation.
- An agent profile lists this skill as applicable.

## Inputs
- Code under test

## Required references
- docs/10-testing
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Identify behaviors
2. Write arrange-act-assert tests
3. Cover edge and failure cases
4. Keep tests deterministic

## Outputs
- Unit tests

## Validation
- Tests pass and fail when behavior breaks
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Tests for Asset invariants.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
