---
name: product-roadmapping
description: 'Build a prioritized roadmap with MVP and release plan. Use when the task involves product roadmapping or an agent references this skill.'
---

# product-roadmapping

## Purpose
Build a prioritized roadmap with MVP and release plan.

## Trigger conditions
- The user or an agent asks for product roadmapping.
- An agent profile lists this skill as applicable.

## Inputs
- Requirements, constraints

## Required references
- docs/01-product
- docs/17-release-management
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Group requirements into themes
2. Prioritize with explicit criteria
3. Define the MVP
4. Sequence releases and dependencies

## Outputs
- Roadmap, MVP definition, release plan

## Validation
- Each roadmap item links to requirements
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
MVP with assets CRUD and permissions.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
