---
name: use-case-modeling
description: 'Specify use cases with actors, flows and exceptions. Use when the task involves use case modeling or an agent references this skill.'
---

# use-case-modeling

## Purpose
Specify use cases with actors, flows and exceptions.

## Trigger conditions
- The user or an agent asks for use case modeling.
- An agent profile lists this skill as applicable.

## Inputs
- Requirements, actors

## Required references
- docs/04-use-cases
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Identify actors and goals
2. Write main and alternate flows
3. Capture preconditions and postconditions
4. Link to requirements and tests

## Outputs
- docs/04-use-cases/UC-###.md

## Validation
- Every flow maps to at least one requirement
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
UC-001 Create asset.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
