---
name: e2e-test-generation
description: 'Generate Playwright smoke and flow tests. Use when the task involves e2e test generation or an agent references this skill.'
---

# e2e-test-generation

## Purpose
Generate Playwright smoke and flow tests.

## Trigger conditions
- The user or an agent asks for e2e test generation.
- An agent profile lists this skill as applicable.

## Inputs
- User flow

## Required references
- docs/10-testing
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Choose critical flows
2. Use stable selectors
3. Handle auth
4. Keep tests independent

## Outputs
- E2E tests

## Validation
- Tests run headless in CI or are marked Not executed
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Login and create asset.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
