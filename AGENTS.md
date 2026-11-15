# AGENTS.md

Guidance for AI coding agents and contributors working in this repository.

## Orientation
1. Read `docs/implementation/MASTER-PLAN.md`, `PROGRESS.md`, `DECISIONS.md`, `BLOCKERS.md`.
2. Read `.github/copilot-instructions.md`.
3. Inspect the repository and verify state by building and testing; never trust a status note alone.

## Roles
Custom agents are in `.github/agents/` (see `docs/15-ai/agent-catalog.md`). Reusable procedures are skills in `.github/skills/` (see `docs/15-ai/skills-catalog.md`). Handoffs between agents are manual and user-confirmed.

## Commands
- Validate Copilot assets: `powershell -File scripts/validation/validate-copilot-assets.ps1`
- Build: `dotnet build`
- Test: `dotnet test`

## Rules
- Work from a GitHub Issue; reference it in commits and pull requests.
- Follow module boundaries; record decisions in `docs/adr/`.
- Add tests with every change and report results honestly (Passed, Failed, Not executed, Requires manual verification).
- Do not commit secrets. Do not self-approve security, release or production actions.
- Do not create billable cloud resources or change repository security settings without explicit human approval.
