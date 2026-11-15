---
name: sql-query-optimization
description: 'Find and fix slow queries. Use when the task involves sql query optimization or an agent references this skill.'
---

# sql-query-optimization

## Purpose
Find and fix slow queries.

## Trigger conditions
- The user or an agent asks for sql query optimization.
- An agent profile lists this skill as applicable.

## Inputs
- Slow query or endpoint

## Required references
- docs/08-data
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Capture the query and plan
2. Check indexes and projections
3. Avoid N+1 and over-fetching
4. Measure before and after

## Outputs
- Optimization notes and change

## Validation
- Measured improvement recorded
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Add index for asset search.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
