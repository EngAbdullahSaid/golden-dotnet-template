---
name: module-scaffolding
description: 'Create a new module following the Sample module. Use when the task involves module scaffolding or an agent references this skill.'
---

# module-scaffolding

## Purpose
Create a new module following the Sample module.

## Trigger conditions
- The user or an agent asks for module scaffolding.
- An agent profile lists this skill as applicable.

## Inputs
- Module name, entities

## Required references
- docs/09-development
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Copy structure from Golden.Modules.Sample
2. Create Contracts and implementation projects
3. Register the module explicitly
4. Add migrations and tests
5. Add docs

## Outputs
- New module

## Validation
- Module builds and boundary tests pass
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Scaffold Inventory module.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
