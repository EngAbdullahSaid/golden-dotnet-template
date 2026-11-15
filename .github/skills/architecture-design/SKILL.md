---
name: architecture-design
description: 'Design architecture and C4 views for approved requirements. Use when the task involves architecture design or an agent references this skill.'
---

# architecture-design

## Purpose
Design architecture and C4 views for approved requirements.

## Trigger conditions
- The user or an agent asks for architecture design.
- An agent profile lists this skill as applicable.

## Inputs
- Requirements, constraints

## Required references
- docs/05-architecture
- docs/adr
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Identify drivers
2. Choose the simplest structure that fits
3. Draw C4 context, container and component views in Mermaid
4. Record decisions as ADRs

## Outputs
- Architecture docs and diagrams

## Validation
- Design respects module rules and has an ADR for each significant choice
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
C4 container view for the web host.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
