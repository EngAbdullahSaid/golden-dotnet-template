---
name: infrastructure-provisioning
description: 'Author Bicep for environments with cost notes. Use when the task involves infrastructure provisioning or an agent references this skill.'
---

# infrastructure-provisioning

## Purpose
Author Bicep for environments with cost notes.

## Trigger conditions
- The user or an agent asks for infrastructure provisioning.
- An agent profile lists this skill as applicable.

## Inputs
- Environment needs

## Required references
- docs/12-deployment
- docs/16-finance-and-cost
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Choose a profile
2. Write modules
3. Parameterize
4. Document cost
5. Do not deploy without approval

## Outputs
- Bicep modules

## Validation
- bicep build succeeds
- what-if reviewed
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Low-cost dev profile.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
