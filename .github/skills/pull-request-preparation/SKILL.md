---
name: pull-request-preparation
description: 'Prepare a pull request with evidence. Use when the task involves pull request preparation or an agent references this skill.'
---

# pull-request-preparation

## Purpose
Prepare a pull request with evidence.

## Trigger conditions
- The user or an agent asks for pull request preparation.
- An agent profile lists this skill as applicable.

## Inputs
- Branch changes

## Required references
- docs/09-development
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Review diff
2. Run build and tests
3. Fill the PR template
4. Link issues

## Outputs
- Pull request description

## Validation
- Checks reported accurately
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Prepare PR for the Assets feature.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
