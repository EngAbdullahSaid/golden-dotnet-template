---
name: regression-testing
description: 'Maintain regression suites and selection strategy. Use when the task involves regression testing or an agent references this skill.'
---

# regression-testing

## Purpose
Maintain regression suites and selection strategy.

## Trigger conditions
- The user or an agent asks for regression testing.
- An agent profile lists this skill as applicable.

## Inputs
- Changes, history

## Required references
- docs/10-testing
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Identify impacted areas
2. Add tests for fixed bugs
3. Run the suite
4. Report flaky tests

## Outputs
- Regression suite

## Validation
- Every fixed bug has a test
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Add test for bug fix.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
