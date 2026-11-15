---
name: market-analysis
description: 'Analyze market, competitors and segments using cited sources. Use when the task involves market analysis or an agent references this skill.'
---

# market-analysis

## Purpose
Analyze market, competitors and segments using cited sources.

## Trigger conditions
- The user or an agent asks for market analysis.
- An agent profile lists this skill as applicable.

## Inputs
- Product idea, target market

## Required references
- docs/01-product
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Define scope and segments
2. Collect sources and cite each claim
3. Compare competitors on capability and price
4. Summarize opportunity and gaps
5. Label assumptions

## Outputs
- docs/01-product market and competitor documents

## Validation
- No uncited market figure
- assumptions are marked
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Compare three asset-management tools.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
