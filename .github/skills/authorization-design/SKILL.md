---
name: authorization-design
description: 'Design policies, permissions and resource checks. Use when the task involves authorization design or an agent references this skill.'
---

# authorization-design

## Purpose
Design policies, permissions and resource checks.

## Trigger conditions
- The user or an agent asks for authorization design.
- An agent profile lists this skill as applicable.

## Inputs
- Roles and resources

## Required references
- docs/07-security
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Define permissions
2. Create policies
3. Add resource-based handlers
4. Test escalation attempts

## Outputs
- Authorization design and tests

## Validation
- Every endpoint has a policy
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Asset owner checks.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
