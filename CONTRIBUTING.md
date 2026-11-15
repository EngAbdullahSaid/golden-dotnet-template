# Contributing

1. Start from a GitHub Issue; one change per pull request.
2. Branch: `feature/<issue>-<slug>`, `fix/<issue>-<slug>`, `docs/<slug>`.
3. Commits: Conventional Commits (`feat:`, `fix:`, `docs:`, `test:`, `chore:`), referencing the issue.
4. Respect module boundaries (see `.github/copilot-instructions.md` and `docs/adr/`).
5. Add tests; run `dotnet build` and `dotnet test`; run `scripts/validation/validate-copilot-assets.ps1` if you touched `.github/`.
6. Complete the pull request template honestly (Passed / Failed / Not executed / Requires manual verification).
7. Record architectural decisions as ADRs in `docs/adr/`.

Never commit secrets. Security, release and production actions require human approval.
