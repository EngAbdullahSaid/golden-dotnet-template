# Golden .NET Template

A GitHub template repository for building products as a modular-monolith ASP.NET Core (.NET 10) application, with an AI-assisted SDLC: Copilot agents, skills, document templates, quality gates, CI/CD and certification.

## Status
Under construction. See [docs/implementation/PROGRESS.md](docs/implementation/PROGRESS.md) for verified state and [MASTER-PLAN.md](docs/implementation/MASTER-PLAN.md) for milestones. Application code is not yet present.

## Layout
- `.github/` agents, skills, instructions, issue and PR templates
- `docs/` numbered documentation set, ADRs, templates
- `scripts/validation/` repository validators
- `src/`, `tests/` (planned, milestone 2+)

## Quick check
```powershell
powershell -File scripts/validation/validate-copilot-assets.ps1
```

See [AGENTS.md](AGENTS.md), [CONTRIBUTING.md](CONTRIBUTING.md), [SECURITY.md](SECURITY.md).
