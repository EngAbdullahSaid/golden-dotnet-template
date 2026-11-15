---
name: threat-modeling
description: 'Create STRIDE-style threat models. Use when the task involves threat modeling or an agent references this skill.'
---

# threat-modeling

## Purpose
Create STRIDE-style threat models.

## Trigger conditions
- The user or an agent asks for threat modeling.
- An agent profile lists this skill as applicable.

## Inputs
- Feature or architecture

## Required references
- docs/07-security
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Draw the data-flow
2. Enumerate threats
3. Rate and mitigate
4. Create issues for gaps

## Outputs
- Threat model

## Validation
- Each threat has mitigation or accepted risk with approver
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Threat model for file upload.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
