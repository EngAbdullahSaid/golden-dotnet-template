---
name: kpi-design
description: 'Define KPIs and metrics with owners, formulas and data sources. Use when the task involves kpi design or an agent references this skill.'
---

# kpi-design

## Purpose
Define KPIs and metrics with owners, formulas and data sources.

## Trigger conditions
- The user or an agent asks for kpi design.
- An agent profile lists this skill as applicable.

## Inputs
- Goals, product events

## Required references
- docs/01-product
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Link KPIs to goals
2. Define formula and data source
3. Set review cadence
4. Label targets as proposed

## Outputs
- KPI framework

## Validation
- Each KPI has a source and an owner
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Activation rate definition.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
