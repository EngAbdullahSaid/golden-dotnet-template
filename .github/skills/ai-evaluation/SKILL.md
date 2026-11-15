---
name: ai-evaluation
description: 'Evaluate AI quality and safety with repeatable datasets. Use when the task involves ai evaluation or an agent references this skill.'
---

# ai-evaluation

## Purpose
Evaluate AI quality and safety with repeatable datasets.

## Trigger conditions
- The user or an agent asks for ai evaluation.
- An agent profile lists this skill as applicable.

## Inputs
- AI feature, test cases

## Required references
- docs/15-ai
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Build an evaluation set
2. Define metrics
3. Run and record results
4. Track regressions

## Outputs
- Evaluation report

## Validation
- Dataset and results versioned
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Evaluate summaries.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
