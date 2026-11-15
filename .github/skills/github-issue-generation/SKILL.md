---
name: github-issue-generation
description: 'Create well-formed GitHub Issues linked to requirements. Use when the task involves github issue generation or an agent references this skill.'
---

# github-issue-generation

## Purpose
Create well-formed GitHub Issues linked to requirements.

## Trigger conditions
- The user or an agent asks for github issue generation.
- An agent profile lists this skill as applicable.

## Inputs
- Requirement or finding

## Required references
- docs/09-development
- .github/ISSUE_TEMPLATE
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Choose the issue template
2. Fill acceptance criteria and IDs
3. Link parents and dependencies
4. Label

## Outputs
- Issue content

## Validation
- Template fields complete
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Create a User Story issue for US-001.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
