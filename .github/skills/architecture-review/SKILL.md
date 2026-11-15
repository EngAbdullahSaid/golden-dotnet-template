---
name: architecture-review
description: 'Review a design or change against architecture rules. Use when the task involves architecture review or an agent references this skill.'
---

# architecture-review

## Purpose
Review a design or change against architecture rules.

## Trigger conditions
- The user or an agent asks for architecture review.
- An agent profile lists this skill as applicable.

## Inputs
- Design or pull request

## Required references
- docs/05-architecture
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Check module boundaries
2. Check dependencies and data ownership
3. Check security and scalability implications
4. Report findings with severity

## Outputs
- Review report

## Validation
- Findings link to rules or ADRs
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Review a new cross-module call.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
