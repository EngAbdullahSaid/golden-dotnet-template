---
name: razor-component-development
description: 'Build reusable partials, view components and tag helpers. Use when the task involves razor component development or an agent references this skill.'
---

# razor-component-development

## Purpose
Build reusable partials, view components and tag helpers.

## Trigger conditions
- The user or an agent asks for razor component development.
- An agent profile lists this skill as applicable.

## Inputs
- UI spec

## Required references
- docs/06-design-system
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Use design tokens
2. Make the component accessible
3. Support RTL and dark theme
4. Add a showcase entry

## Outputs
- Razor components

## Validation
- Accessible markup
- showcase page updated
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Pagination component.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
