---
name: code-review
description: 'Review code quality and test adequacy. Use when the task involves code review or an agent references this skill.'
---

# code-review

## Purpose
Review code quality and test adequacy.

## Trigger conditions
- The user or an agent asks for code review.
- An agent profile lists this skill as applicable.

## Inputs
- Pull request

## Required references
- docs/09-development
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Read the linked issue
2. Check design fit
3. Check tests and docs
4. Report findings

## Outputs
- Review

## Validation
- Verdict with findings
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Review a feature PR.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
