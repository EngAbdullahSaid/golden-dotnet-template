---
name: ai-cost-monitoring
description: 'Track tokens and spend with budgets. Use when the task involves ai cost monitoring or an agent references this skill.'
---

# ai-cost-monitoring

## Purpose
Track tokens and spend with budgets.

## Trigger conditions
- The user or an agent asks for ai cost monitoring.
- An agent profile lists this skill as applicable.

## Inputs
- AI usage

## Required references
- docs/15-ai
- docs/16-finance-and-cost
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Log usage per feature
2. Set budgets and alerts
3. Report trends

## Outputs
- Cost report

## Validation
- Budgets and alerts defined
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Add token usage log.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
