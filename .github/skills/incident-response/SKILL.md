---
name: incident-response
description: 'Run and document incident response. Use when the task involves incident response or an agent references this skill.'
---

# incident-response

## Purpose
Run and document incident response.

## Trigger conditions
- The user or an agent asks for incident response.
- An agent profile lists this skill as applicable.

## Inputs
- Incident report

## Required references
- docs/13-operations
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Triage and classify
2. Mitigate
3. Communicate
4. Write post-incident review

## Outputs
- Incident record

## Validation
- Timeline and actions recorded
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Handle elevated 5xx errors.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
