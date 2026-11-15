---
name: entity-framework-migrations
description: 'Create and review EF Core migrations safely. Use when the task involves entity framework migrations or an agent references this skill.'
---

# entity-framework-migrations

## Purpose
Create and review EF Core migrations safely.

## Trigger conditions
- The user or an agent asks for entity framework migrations.
- An agent profile lists this skill as applicable.

## Inputs
- Model change

## Required references
- docs/08-data
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Create the migration
2. Review generated SQL
3. Check data safety and rollback
4. Test on a clean and an existing database

## Outputs
- Migration

## Validation
- Applies cleanly
- no data loss unless approved
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Add a column with default.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
