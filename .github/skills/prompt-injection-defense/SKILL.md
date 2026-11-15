---
name: prompt-injection-defense
description: 'Defend against prompt injection. Use when the task involves prompt injection defense or an agent references this skill.'
---

# prompt-injection-defense

## Purpose
Defend against prompt injection.

## Trigger conditions
- The user or an agent asks for prompt injection defense.
- An agent profile lists this skill as applicable.

## Inputs
- AI feature

## Required references
- docs/15-ai
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Separate instructions from data
2. Validate tool calls server-side
3. Limit tool scope
4. Test adversarial inputs

## Outputs
- Defense design and tests

## Validation
- Adversarial tests documented
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Block tool calls from untrusted text.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
