---
name: secrets-management
description: 'Keep secrets out of source and manage them via Key Vault and user-secrets. Use when the task involves secrets management or an agent references this skill.'
---

# secrets-management

## Purpose
Keep secrets out of source and manage them via Key Vault and user-secrets.

## Trigger conditions
- The user or an agent asks for secrets management.
- An agent profile lists this skill as applicable.

## Inputs
- Config needs

## Required references
- docs/07-security
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Use user-secrets locally
2. Use Key Vault and managed identity in Azure
3. Scan for committed secrets
4. Document rotation

## Outputs
- Secrets configuration

## Validation
- No secrets in the repository
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Move connection string to Key Vault.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
