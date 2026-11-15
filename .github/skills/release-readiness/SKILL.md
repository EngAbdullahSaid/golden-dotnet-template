---
name: release-readiness
description: 'Assemble release evidence for gate G8. Use when the task involves release readiness or an agent references this skill.'
---

# release-readiness

## Purpose
Assemble release evidence for gate G8.

## Trigger conditions
- The user or an agent asks for release readiness.
- An agent profile lists this skill as applicable.

## Inputs
- Release candidate

## Required references
- docs/17-release-management
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Collect gate evidence
2. Verify changelog and version
3. Review open risks
4. Request approval

## Outputs
- Readiness report

## Validation
- Missing evidence blocks release
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Readiness for v0.1.0.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
