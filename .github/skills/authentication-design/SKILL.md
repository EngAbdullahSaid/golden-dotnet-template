---
name: authentication-design
description: 'Design authentication using ASP.NET Core Identity and OIDC. Use when the task involves authentication design or an agent references this skill.'
---

# authentication-design

## Purpose
Design authentication using ASP.NET Core Identity and OIDC.

## Trigger conditions
- The user or an agent asks for authentication design.
- An agent profile lists this skill as applicable.

## Inputs
- Auth requirements

## Required references
- docs/07-security
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Use cookie auth for MVC and token auth for APIs
2. Configure lockout and MFA readiness
3. Never create custom protocols
4. Test flows

## Outputs
- Auth design

## Validation
- No client-supplied identity trusted
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Add OIDC provider readiness.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
