---
name: deployment-validation
description: 'Verify a deployment with health and smoke checks. Use when the task involves deployment validation or an agent references this skill.'
---

# deployment-validation

## Purpose
Verify a deployment with health and smoke checks.

## Trigger conditions
- The user or an agent asks for deployment validation.
- An agent profile lists this skill as applicable.

## Inputs
- Deployed environment

## Required references
- docs/12-deployment
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Check health endpoints
2. Run smoke tests
3. Check logs and metrics
4. Record results

## Outputs
- Verification report

## Validation
- Results recorded
- unexecuted checks marked
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Post-deploy smoke test.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
