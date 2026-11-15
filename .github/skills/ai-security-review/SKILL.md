---
name: ai-security-review
description: 'Review AI features for data leakage and unsafe actions. Use when the task involves ai security review or an agent references this skill.'
---

# ai-security-review

## Purpose
Review AI features for data leakage and unsafe actions.

## Trigger conditions
- The user or an agent asks for ai security review.
- An agent profile lists this skill as applicable.

## Inputs
- AI feature

## Required references
- docs/15-ai
- docs/07-security
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Review data flows
2. Review tool permissions
3. Review output handling
4. Record findings

## Outputs
- AI security review

## Validation
- Least privilege confirmed
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Review a tool-calling feature.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
