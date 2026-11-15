# Blockers

| ID | Blocker | Impact | Needed to unblock |
|---|---|---|---|
| B-001 | Docker not installed locally | Cannot run docker-compose or Testcontainers SQL Server tests | Install Docker Desktop, or use SQL Server LocalDB |
| B-002 | GitHub CLI not installed | Cannot run repo provisioning scripts or verify settings | Install `gh` and authenticate |
| B-003 | Node/Playwright browsers not installed | E2E smoke tests not executable | Install Playwright browsers via `playwright.ps1 install` after build |
| B-004 | Pushing to GitHub requires user approval | Work stays local until approved | User confirmation to push |
