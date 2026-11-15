---
name: accessibility-testing
description: 'Check accessibility against WCAG 2.2 AA. Use when the task involves accessibility testing or an agent references this skill.'
---

# accessibility-testing

## Purpose
Check accessibility against WCAG 2.2 AA.

## Trigger conditions
- The user or an agent asks for accessibility testing.
- An agent profile lists this skill as applicable.

## Inputs
- UI pages

## Required references
- docs/06-design-system
- docs/10-testing
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Run automated checks
2. Test keyboard and focus
3. Check contrast and labels
4. Record manual checks as Requires manual verification

## Outputs
- Accessibility report

## Validation
- Automated and manual results separated
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Audit the dashboard.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
