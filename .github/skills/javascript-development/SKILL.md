---
name: javascript-development
description: 'Write framework-free ES module JavaScript. Use when the task involves javascript development or an agent references this skill.'
---

# javascript-development

## Purpose
Write framework-free ES module JavaScript.

## Trigger conditions
- The user or an agent asks for javascript development.
- An agent profile lists this skill as applicable.

## Inputs
- UI behavior

## Required references
- docs/06-design-system
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Use ES modules
2. Avoid inline scripts
3. Handle errors and loading states
4. Escape output

## Outputs
- JS modules

## Validation
- No global leaks
- CSP compatible
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Confirmation dialog module.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
