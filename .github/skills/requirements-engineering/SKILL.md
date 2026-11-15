---
name: requirements-engineering
description: 'Elicit, write and maintain functional and nonfunctional requirements with stable IDs. Use when the task involves requirements engineering or an agent references this skill.'
---

# requirements-engineering

## Purpose
Elicit, write and maintain functional and nonfunctional requirements with stable IDs.

## Trigger conditions
- The user or an agent asks for requirements engineering.
- An agent profile lists this skill as applicable.

## Inputs
- Vision, stakeholder input

## Required references
- docs/03-requirements
- docs/templates
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Elicit needs
2. Write atomic requirements as FR-### or NFR-###
3. Link to business rules and use cases
4. Update the traceability matrix
5. Review for ambiguity

## Outputs
- Requirement documents and traceability matrix

## Validation
- Each requirement is testable, unique and traced
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Write FR-001 for creating an asset.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
