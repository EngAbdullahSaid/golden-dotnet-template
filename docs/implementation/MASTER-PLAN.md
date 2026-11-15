# Master Plan — golden-dotnet-template

Source of truth for continuation. Always verify repository state and tests before trusting a status here.

## Continuation protocol
1. Read this file, PROGRESS.md, DECISIONS.md, BLOCKERS.md.
2. Inspect the repository (`git status`, build, tests).
3. Pick the first unfinished milestone and continue from actual state.

## Milestone 0 — Repository assessment (this section is the assessment)

### Repository assessment
- Remote `https://github.com/EngAbdullahSaid/golden-dotnet-template.git` was empty (no commits) at start.
- Local workspace `e:\Workspace\Projects\GoldenDotnetTemplate` cloned from it; greenfield.

### Environment
| Tool | State |
|---|---|
| .NET SDK | 9.0.319, 10.0.201 installed. Target **.NET 10 (LTS)** |
| git | 2.51.0 |
| GitHub CLI (`gh`) | Not installed — provisioning scripts cannot be executed locally |
| Docker | Not installed — SQL Server container / compose cannot be validated locally |
| Node / Playwright | Node not installed — E2E (Playwright via .NET) needs browser install, unverified |
| PowerShell 7 (`pwsh`) | Not installed — scripts must run on Windows PowerShell 5.1 or have bash twins |
| SQL Server | Unknown; use LocalDB/SQL container for DB tests once available |

### Gap analysis
Everything in the brief is a gap (greenfield). Highest-risk gaps: runnable DB-backed tests without Docker, E2E without Node/browsers, Copilot spec accuracy.

### Dependency analysis
Preferred packages (to be pinned centrally in `Directory.Packages.props`): EF Core SqlServer, ASP.NET Core Identity EF, xUnit, Microsoft.AspNetCore.Mvc.Testing, Testcontainers.MsSql (needs Docker) or LocalDB, NetArchTest.Rules, Microsoft.Playwright, Serilog or built-in logging + OpenTelemetry, FluentValidation only if justified.

### Risks
| ID | Risk | Mitigation |
|---|---|---|
| R-001 | No Docker → integration tests against SQL Server can't run | Use LocalDB on Windows; Testcontainers in CI; mark "Not executed" in certification when unavailable |
| R-002 | Copilot agent/skill formats evolve | Validator tool checks structure; conventions below must be re-verified against GitHub docs before Milestone 1 completion |
| R-003 | Scope far exceeds one session | Milestones below are independently verifiable |
| R-004 | No `gh` → GitHub settings provisioning untestable | Provide scripts, mark as manual verification |
| R-005 | Claiming certification without execution | Certification report uses Passed/Failed/Not executed/Manual states |

### Copilot conventions to implement (verify against current GitHub docs in M1)
- Repo instructions: `.github/copilot-instructions.md`; path-scoped: `.github/instructions/*.instructions.md` with `applyTo` frontmatter.
- Custom agents: `.github/agents/<name>.agent.md` with YAML frontmatter (`name`, `description`, optional `tools`, optional `handoffs`).
- Skills: `.github/skills/<skill-name>/SKILL.md` with frontmatter `name` (matches folder, lowercase-hyphen) and `description`.
- Prompts: `.github/prompts/*.prompt.md`.
- No native automatic agent orchestration is assumed; handoffs are explicit and documented.

### Target architecture (proposal)
Modular monolith on .NET 10: `Golden.Web` (MVC host + shell), `Golden.Api` (API host or mapped endpoints), `Golden.SharedKernel` (base abstractions, no deps), `Golden.BuildingBlocks` (cross-cutting infra: logging, auditing, security headers, module registration), `Modules/<Name>` with Domain/Application/Infrastructure/Presentation/Contracts per module (one project per module initially with folder layers; split Contracts into its own project to enforce boundaries). Modules talk only via Contracts and in-process domain events. Per-module DbContext + schema. NetArchTest enforces boundaries.

## Milestones

| # | Milestone | Role | Status | Acceptance / evidence |
|---|---|---|---|---|
| 0 | Repository assessment | orchestrator | Done | This file, PROGRESS.md |
| 1 | Engineering governance (Copilot instructions, 30 agents, ~60 skills, GitHub templates, SDLC docs, gates G0–G11) | orchestrator, technical-writer | In progress | Validator passes on agents/skills structure |
| 2 | App foundation (sln, Web, Api, SharedKernel, BuildingBlocks, Identity, shell, EF) | backend, frontend, database | Not started | `dotnet build` green; app runs; migrations apply |
| 3 | Sample module (Asset Catalog) vertical slice + tests | backend, qa | Not started | Unit + integration tests pass |
| 4 | Security and quality (controls, authz tests, arch tests, E2E) | security, qa | Not started | Test suites pass |
| 5 | Developer toolkit (`golden` CLI generators/validators) | automation | Not started | Generator tests pass; dry-run works |
| 6 | Delivery platform (workflows, Bicep, docker, observability) | devops, sre | Not started | `bicep build` ok; workflows lint |
| 7 | Template certification | qa, release-manager | Not started | Certification report generated |
| 8 | Release and docs | release-manager, technical-writer | Not started | v0.1.0 tag, changelog, upgrade guide |

## Next actions
1. Finish M1 skeleton: `.github/copilot-instructions.md`, agent set, skill set, issue/PR templates, gate docs.
2. Add `global.json`, `.gitignore`, `.editorconfig`, `Directory.Build.props`, `Directory.Packages.props` (start of M2).
