---
name: background-job-development
description: 'Implement background processing with idempotency and retries. Use when the task involves background job development or an agent references this skill.'
---

# background-job-development

## Purpose
Implement background processing with idempotency and retries.

## Trigger conditions
- The user or an agent asks for background job development.
- An agent profile lists this skill as applicable.

## Inputs
- Job requirement

## Required references
- docs/09-development
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Use hosted services
2. Make handlers idempotent
3. Add retry and timeout
4. Add logging and tests

## Outputs
- Background job

## Validation
- Re-running a job is safe
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Nightly cleanup job.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
