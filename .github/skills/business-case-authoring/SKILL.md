---
name: business-case-authoring
description: 'Produce a business case covering problem, options, costs, benefits and risks. Use when the task involves business case authoring or an agent references this skill.'
---

# business-case-authoring

## Purpose
Produce a business case covering problem, options, costs, benefits and risks.

## Trigger conditions
- The user or an agent asks for business case authoring.
- An agent profile lists this skill as applicable.

## Inputs
- Opportunity, stakeholders, cost assumptions

## Required references
- docs/02-business-cases
- docs/16-finance-and-cost
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Define the problem and target outcome
2. List options including do-nothing
3. Estimate costs and benefits and label every assumption
4. Record risks and a recommendation
5. Assign a BC-### identifier

## Outputs
- docs/02-business-cases/BC-###.md

## Validation
- Every figure has a source or is labeled as an assumption
- the ID is unique
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Draft BC-001 for the Asset Catalog module.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
