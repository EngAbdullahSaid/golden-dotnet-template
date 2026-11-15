---
name: tenant-isolation
description: 'Enforce tenant isolation in data and requests. Use when the task involves tenant isolation or an agent references this skill.'
---

# tenant-isolation

## Purpose
Enforce tenant isolation in data and requests.

## Trigger conditions
- The user or an agent asks for tenant isolation.
- An agent profile lists this skill as applicable.

## Inputs
- Multi-tenant requirement

## Required references
- docs/07-security
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Resolve tenant server-side
2. Apply query filters
3. Test cross-tenant access
4. Audit access

## Outputs
- Isolation design and tests

## Validation
- Cross-tenant tests pass
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Add TenantId filter.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
