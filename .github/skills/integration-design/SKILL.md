---
name: integration-design
description: 'Design integrations with retries, timeouts and idempotency. Use when the task involves integration design or an agent references this skill.'
---

# integration-design

## Purpose
Design integrations with retries, timeouts and idempotency.

## Trigger conditions
- The user or an agent asks for integration design.
- An agent profile lists this skill as applicable.

## Inputs
- Integration requirements

## Required references
- docs/05-architecture
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Define the contract and failure modes
2. Add timeouts, retries and idempotency
3. Define secrets handling
4. Document monitoring

## Outputs
- Integration design

## Validation
- Failure modes and secrets handling documented
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Email provider integration.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
