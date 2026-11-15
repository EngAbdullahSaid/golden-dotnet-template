---
name: scalability-review
description: 'Review for horizontal scaling and growth limits. Use when the task involves scalability review or an agent references this skill.'
---

# scalability-review

## Purpose
Review for horizontal scaling and growth limits.

## Trigger conditions
- The user or an agent asks for scalability review.
- An agent profile lists this skill as applicable.

## Inputs
- Architecture or code

## Required references
- docs/05-architecture
- docs/13-operations
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Confirm statelessness
2. Check queries, caching and pagination
3. Check background processing and idempotency
4. List proposed capacity targets as defaults

## Outputs
- Scalability review

## Validation
- No local-state assumptions remain
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Review session storage.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
