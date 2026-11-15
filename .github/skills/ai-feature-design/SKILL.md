---
name: ai-feature-design
description: 'Design optional AI features behind abstractions. Use when the task involves ai feature design or an agent references this skill.'
---

# ai-feature-design

## Purpose
Design optional AI features behind abstractions.

## Trigger conditions
- The user or an agent asks for ai feature design.
- An agent profile lists this skill as applicable.

## Inputs
- AI use case

## Required references
- docs/15-ai
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Define the user value
2. Keep the provider swappable
3. Define human approval and logging
4. Respect authorization

## Outputs
- AI feature design

## Validation
- No paid dependency at default startup
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Summarize asset notes.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
