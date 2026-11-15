---
name: entity-generation
description: 'Create an entity with mapping, migration and tests. Use when the task involves entity generation or an agent references this skill.'
---

# entity-generation

## Purpose
Create an entity with mapping, migration and tests.

## Trigger conditions
- The user or an agent asks for entity generation.
- An agent profile lists this skill as applicable.

## Inputs
- Entity definition

## Required references
- docs/08-data
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Create the entity with invariants
2. Add EF configuration with constraints
3. Add migration
4. Add DTOs and tests

## Outputs
- Entity code and migration

## Validation
- Migration applies
- tests pass
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Add Category entity.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
