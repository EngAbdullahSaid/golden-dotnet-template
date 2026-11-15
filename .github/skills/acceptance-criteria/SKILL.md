---
name: acceptance-criteria
description: 'Define verifiable acceptance criteria in Given/When/Then form. Use when the task involves acceptance criteria or an agent references this skill.'
---

# acceptance-criteria

## Purpose
Define verifiable acceptance criteria in Given/When/Then form.

## Trigger conditions
- The user or an agent asks for acceptance criteria.
- An agent profile lists this skill as applicable.

## Inputs
- User story or requirement

## Required references
- docs/03-requirements
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Identify behaviors
2. Write Given/When/Then scenarios
3. Include negative and authorization cases
4. Map each scenario to an automated test

## Outputs
- Acceptance criteria list

## Validation
- Each criterion is observable and mapped to a test
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Anonymous user receives 401 on the assets API.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
