---
name: domain-modeling
description: 'Model entities, value objects and invariants selectively using DDD. Use when the task involves domain modeling or an agent references this skill.'
---

# domain-modeling

## Purpose
Model entities, value objects and invariants selectively using DDD.

## Trigger conditions
- The user or an agent asks for domain modeling.
- An agent profile lists this skill as applicable.

## Inputs
- Requirements, business rules

## Required references
- docs/05-architecture
- docs/08-data
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Identify aggregates and invariants
2. Use value objects only where justified
3. Keep entities out of API contracts
4. Document the model

## Outputs
- Domain model

## Validation
- Invariants are enforced in code and tested
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Asset aggregate with status transitions.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
