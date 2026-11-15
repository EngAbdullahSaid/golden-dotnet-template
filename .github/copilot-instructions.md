# Repository-wide Copilot instructions

This repository is the Golden .NET Template: a modular-monolith ASP.NET Core (.NET 10) product factory.

## Start of every session
Read `docs/implementation/MASTER-PLAN.md`, `PROGRESS.md`, `DECISIONS.md`, `BLOCKERS.md`, then inspect the real repository state. Do not trust a "done" status without verifying files and tests.

## Architecture rules
- Modular monolith. Modules live in `src/Modules/` and talk only through their Contracts project or in-process events.
- No cross-module database access; each module owns its DbContext and schema.
- No MediatR, CQRS, event sourcing or message broker unless an ADR justifies it.
- Never expose EF entities through API contracts.

## Coding rules
- C# nullable enabled, async I/O, UTC timestamps, `decimal` with explicit precision for money.
- Package versions only in `Directory.Packages.props`.
- No `NotImplementedException`, empty placeholders, or secrets in source.

## Security
- Authorization on every endpoint; never trust client-supplied user or tenant IDs.
- CSRF protection on MVC forms; validate all input; no raw SQL concatenation.
- Agents must not self-approve security, release, or production actions.

## Quality
- Every change ships with tests. Run `dotnet build` and `dotnet test` before declaring done.
- Report checks as Passed, Failed, Not executed, or Requires manual verification. Never mark unexecuted checks as passed.

## Workflow
Work from a GitHub Issue, follow `AGENTS.md`, record architectural decisions in `docs/adr/`, and update the implementation docs after each milestone.
