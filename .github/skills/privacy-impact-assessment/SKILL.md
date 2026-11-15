---
name: privacy-impact-assessment
description: 'Assess privacy impact of data processing. Use when the task involves privacy impact assessment or an agent references this skill.'
---

# privacy-impact-assessment

## Purpose
Assess privacy impact of data processing.

## Trigger conditions
- The user or an agent asks for privacy impact assessment.
- An agent profile lists this skill as applicable.

## Inputs
- Data inventory

## Required references
- docs/07-security
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Classify data
2. Identify purposes and retention
3. Assess risks
4. Define mitigations

## Outputs
- Privacy impact assessment

## Validation
- Classification and retention defined
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
PIA for user profile data.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
