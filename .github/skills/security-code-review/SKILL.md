---
name: security-code-review
description: 'Review code for vulnerabilities. Use when the task involves security code review or an agent references this skill.'
---

# security-code-review

## Purpose
Review code for vulnerabilities.

## Trigger conditions
- The user or an agent asks for security code review.
- An agent profile lists this skill as applicable.

## Inputs
- Pull request

## Required references
- docs/07-security
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Check authN and authZ
2. Check input and output handling
3. Check secrets
4. Check dependencies

## Outputs
- Review findings

## Validation
- Findings have severity and remediation
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Review the upload endpoint.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
