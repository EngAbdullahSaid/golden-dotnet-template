---
name: modular-monolith-design
description: 'Define module boundaries, contracts and events. Use when the task involves modular monolith design or an agent references this skill.'
---

# modular-monolith-design

## Purpose
Define module boundaries, contracts and events.

## Trigger conditions
- The user or an agent asks for modular monolith design.
- An agent profile lists this skill as applicable.

## Inputs
- Domain, requirements

## Required references
- docs/05-architecture
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Identify bounded contexts
2. Define Contracts projects
3. Define in-process events
4. Define registration and configuration
5. Plan extraction readiness

## Outputs
- Module design

## Validation
- No cross-module database or internal-type access
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Design the Billing module contract.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
