# Documentation Ownership Matrix

| Area | Folder | Owner agent | Human approver |
|---|---|---|---|
| Getting started | docs/00-getting-started | technical-writer | maintainer |
| Product and business | docs/01..03 | startup-strategist, product-manager | product owner |
| Requirements | docs/04-requirements | business-analyst | product owner |
| Architecture and ADRs | docs/05-architecture, docs/adr | solution-architect | tech lead |
| Data and integration | docs/06.. | data-architect, integration-architect | tech lead |
| Security and privacy | docs/07-security | security-engineer, privacy-reviewer | security owner |
| Testing and QA | testing docs | qa-engineer | tech lead |
| Operations and SRE | ops docs | sre-engineer, devops-engineer | ops owner |
| AI | docs/15-ai | ai-engineer | tech lead |
| Governance | docs/14-governance | engineering-orchestrator | maintainer |
| Release management | docs/17-release-management | release-manager | maintainer |

Rules: every doc has one owning role; changes to security, release and production docs require human approval; links are validated in CI (M6).
