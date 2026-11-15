---
name: cicd-configuration
description: 'Configure GitHub Actions with least privilege and OIDC. Use when the task involves cicd configuration or an agent references this skill.'
---

# cicd-configuration

## Purpose
Configure GitHub Actions with least privilege and OIDC.

## Trigger conditions
- The user or an agent asks for cicd configuration.
- An agent profile lists this skill as applicable.

## Inputs
- Pipeline needs

## Required references
- docs/11-devops
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Set minimal permissions
2. Pin actions
3. Use OIDC for Azure
4. Add environments and approvals

## Outputs
- Workflow files

## Validation
- Workflows pass lint
- no long-lived secrets
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Add build workflow.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
