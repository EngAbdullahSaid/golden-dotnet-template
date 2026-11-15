---
name: performance-testing
description: 'Create repeatable load tests and report results. Use when the task involves performance testing or an agent references this skill.'
---

# performance-testing

## Purpose
Create repeatable load tests and report results.

## Trigger conditions
- The user or an agent asks for performance testing.
- An agent profile lists this skill as applicable.

## Inputs
- Scenario, target

## Required references
- docs/10-testing
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Define scenario and load
2. Run on a defined environment
3. Record metrics
4. Compare to baseline

## Outputs
- Performance report

## Validation
- Environment and data size recorded
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Assets list under 50 users.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
