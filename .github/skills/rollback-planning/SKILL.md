---
name: rollback-planning
description: 'Plan and document rollback. Use when the task involves rollback planning or an agent references this skill.'
---

# rollback-planning

## Purpose
Plan and document rollback.

## Trigger conditions
- The user or an agent asks for rollback planning.
- An agent profile lists this skill as applicable.

## Inputs
- Release or migration

## Required references
- docs/12-deployment
- docs/17-release-management
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Define triggers
2. Define steps and data impact
3. Test where feasible
4. Document owner

## Outputs
- Rollback plan

## Validation
- Steps are executable and owned
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Rollback a failed migration.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
