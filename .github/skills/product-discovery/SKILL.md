---
name: product-discovery
description: 'Run structured discovery to validate problems and hypotheses. Use when the task involves product discovery or an agent references this skill.'
---

# product-discovery

## Purpose
Run structured discovery to validate problems and hypotheses.

## Trigger conditions
- The user or an agent asks for product discovery.
- An agent profile lists this skill as applicable.

## Inputs
- Idea, user access or research notes

## Required references
- docs/01-product
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. List hypotheses
2. Define evidence needed
3. Gather evidence
4. Decide pivot, proceed or stop
5. Record in the decision register

## Outputs
- Discovery summary, hypotheses list

## Validation
- Each hypothesis has status and evidence
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Validate that teams need an asset catalog.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
