---
name: aspnet-mvc-development
description: 'Build MVC controllers and views securely. Use when the task involves aspnet mvc development or an agent references this skill.'
---

# aspnet-mvc-development

## Purpose
Build MVC controllers and views securely.

## Trigger conditions
- The user or an agent asks for aspnet mvc development.
- An agent profile lists this skill as applicable.

## Inputs
- UI requirement

## Required references
- docs/09-development
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Create controller with authorization
2. Use view models
3. Add anti-forgery to forms
4. Handle errors
5. Add tests

## Outputs
- Controller and views

## Validation
- All actions authorized
- forms protected
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Assets index and edit pages.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
