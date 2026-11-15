---
name: database-design
description: 'Design schemas, constraints, indexes and retention. Use when the task involves database design or an agent references this skill.'
---

# database-design

## Purpose
Design schemas, constraints, indexes and retention.

## Trigger conditions
- The user or an agent asks for database design.
- An agent profile lists this skill as applicable.

## Inputs
- Domain model

## Required references
- docs/08-data
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Map entities to tables in the module schema
2. Add constraints and indexes
3. Use decimal precision and UTC
4. Define concurrency and retention

## Outputs
- Schema design

## Validation
- Constraints and indexes are justified
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Asset table with rowversion.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
