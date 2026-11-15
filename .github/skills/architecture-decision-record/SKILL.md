---
name: architecture-decision-record
description: 'Write ADRs using the repository template. Use when the task involves architecture decision record or an agent references this skill.'
---

# architecture-decision-record

## Purpose
Write ADRs using the repository template.

## Trigger conditions
- The user or an agent asks for architecture decision record.
- An agent profile lists this skill as applicable.

## Inputs
- Decision, alternatives

## Required references
- docs/adr
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. State context
2. List options
3. Record decision and consequences
4. Number the ADR sequentially

## Outputs
- docs/adr/ADR-###.md

## Validation
- Template sections complete
- status set
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
ADR-001 Modular monolith.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
