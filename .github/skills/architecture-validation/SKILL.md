---
name: architecture-validation
description: 'Validate module boundaries with architecture tests. Use when the task involves architecture validation or an agent references this skill.'
---

# architecture-validation

## Purpose
Validate module boundaries with architecture tests.

## Trigger conditions
- The user or an agent asks for architecture validation.
- An agent profile lists this skill as applicable.

## Inputs
- Solution

## Required references
- docs/05-architecture
- docs/10-testing
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Write NetArchTest rules
2. Check module dependencies
3. Check forbidden references
4. Fail on violations

## Outputs
- Architecture tests

## Validation
- Tests fail when a boundary is crossed
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Modules must not reference each other directly.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
