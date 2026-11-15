---
name: dotnet-project-scaffolding
description: 'Create .NET projects that follow solution conventions. Use when the task involves dotnet project scaffolding or an agent references this skill.'
---

# dotnet-project-scaffolding

## Purpose
Create .NET projects that follow solution conventions.

## Trigger conditions
- The user or an agent asks for dotnet project scaffolding.
- An agent profile lists this skill as applicable.

## Inputs
- Project purpose

## Required references
- docs/09-development
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Choose project type and name
2. Add to Golden.slnx
3. Use central package versions
4. Add references that respect boundaries
5. Build

## Outputs
- New project

## Validation
- dotnet build succeeds
- architecture tests pass
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Add a class library for a new module.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
