---
name: secure-coding
description: 'Apply the secure coding standard. Use when the task involves secure coding or an agent references this skill.'
---

# secure-coding

## Purpose
Apply the secure coding standard.

## Trigger conditions
- The user or an agent asks for secure coding.
- An agent profile lists this skill as applicable.

## Inputs
- Code change

## Required references
- docs/07-security
- `.github/copilot-instructions.md` and `AGENTS.md`

## Procedure
1. Validate input
2. Encode output
3. Use parameterized queries
4. Redact sensitive data
5. Handle errors safely

## Outputs
- Secure code

## Validation
- No OWASP Top 10 patterns found in review
- Report results as Passed, Failed, Not executed or Requires manual verification.

## Examples
Review a form handler.

## Failure handling
- If inputs or approved requirements are missing, stop and request them; do not invent them.
- If a validation fails, report it, fix the cause or record a blocker in `docs/implementation/BLOCKERS.md`.
- Never bypass security, privacy or release approvals.
