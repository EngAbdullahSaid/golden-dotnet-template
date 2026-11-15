---
name: user-story-authoring
description: 'Write user stories in a consistent format with traceability. Use when the task involves user story authoring or an agent references this skill.'
---

# user-story-authoring

## Purpose
Write user stories in a consistent format with traceability.

## Trigger conditions
- The user or an agent asks for user story authoring.
- An agent profile lists this skill as applicable.

## Inputs
- Requirement, persona

## Required references
- docs/03-requirements
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. State persona, need and value
2. Keep the story small and independent
3. Attach acceptance criteria
4. Assign US-### and link the issue

## Outputs
- User stories

## Validation
- Story is independently deliverable and has acceptance criteria
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
US-001 As an administrator I want to add an asset.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
