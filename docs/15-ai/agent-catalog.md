# Agent catalog and responsibility matrix

Agents live in `.github/agents/`. Invoke manually by selecting the agent in Copilot Chat. Handoffs are declared in each profile and are manual (user-confirmed); no automatic multi-agent orchestration is assumed.

| Agent | Mission | Gates | Mode | Skills |
|---|---|---|---|---|
| engineering-orchestrator | Coordinates the SDLC and tracks gates | G0-G11 | Coordination | requirements-engineering, architecture-review, release-readiness, github-issue-generation |
| startup-strategist | Turn an idea into a validated product vision, charter and business model. | G0 | Docs/analysis | business-case-authoring, product-discovery, market-analysis, product-roadmapping |
| product-manager | Convert approved vision into prioritized, testable requirements and a roadmap. | G1 | Docs/analysis | requirements-engineering, user-story-authoring, acceptance-criteria, product-roadmapping, kpi-design, github-issue-generation |
| business-analyst | Make requirements unambiguous, traceable and consistent with business rules. | G1 | Docs/analysis | requirements-engineering, use-case-modeling, user-story-authoring, acceptance-criteria |
| market-researcher | Provide evidence-based market and competitor analysis. | G0 | Docs/analysis | market-analysis, product-discovery, business-case-authoring |
| financial-analyst | Quantify build, run and cloud costs and the financial case. | G0,G8 | Docs/analysis | business-case-authoring, kpi-design, ai-cost-monitoring |
| solution-architect | Keep the architecture simple, modular and enforceable by tests. | G2 | Code + docs | architecture-design, architecture-review, modular-monolith-design, domain-modeling, architecture-decision-record, scalability-review |
| data-architect | Ensure each module owns a well-constrained, performant schema. | G2 | Code + docs | database-design, domain-modeling, entity-framework-migrations, sql-query-optimization, architecture-decision-record |
| integration-architect | Keep integrations explicit, versioned and secure. | G2 | Code + docs | integration-design, api-design, modular-monolith-design, architecture-decision-record |
| ux-designer | Deliver a consistent, accessible, responsive design system. | G2 | Docs/analysis | razor-component-development, accessibility-testing, acceptance-criteria |
| backend-engineer | Deliver secure, tested, maintainable backend features. | G4,G5,G6 | Code + docs | dotnet-project-scaffolding, module-scaffolding, entity-generation, usecase-implementation, aspnet-mvc-development, api-implementation, secure-coding, unit-test-generation, integration-test-generation |
| frontend-engineer | Deliver accessible, responsive UI using the design system. | G4,G5,G6 | Code + docs | razor-component-development, javascript-development, aspnet-mvc-development, accessibility-testing, e2e-test-generation |
| database-engineer | Deliver correct, safe and performant data access. | G4,G5,G6 | Code + docs | entity-framework-migrations, sql-query-optimization, database-design, entity-generation, integration-test-generation |
| automation-engineer | Make repeatable engineering tasks automatic and tested. | G4,G5,G6 | Code + docs | module-scaffolding, entity-generation, background-job-development, dotnet-project-scaffolding, unit-test-generation |
| ai-engineer | Provide safe, optional AI integration that never bypasses authorization. | G4,G5,G7 | Code + docs | ai-feature-design, ai-security-review, ai-evaluation, prompt-injection-defense, ai-cost-monitoring, secure-coding |
| security-engineer | Keep the platform secure by default and verify it with automated tests. | G3,G7 | Code + docs | threat-modeling, authentication-design, authorization-design, tenant-isolation, secure-coding, security-code-review, secrets-management |
| privacy-reviewer | Ensure personal data is minimized, classified and protected. | G3 | Docs/analysis | privacy-impact-assessment, threat-modeling, secrets-management |
| qa-engineer | Provide automated evidence that acceptance criteria are met. | G6 | Code + docs | unit-test-generation, integration-test-generation, e2e-test-generation, regression-testing, accessibility-testing, architecture-validation |
| performance-engineer | Make performance measurable and regressions visible. | G7 | Code + docs | performance-testing, sql-query-optimization, scalability-review |
| code-reviewer | Catch defects and standards violations before merge. | G5 | Docs/analysis | code-review, security-code-review, architecture-validation |
| devops-engineer | Deliver reproducible CI/CD and infrastructure with no long-lived secrets. | G8,G9 | Code + docs | cicd-configuration, infrastructure-provisioning, deployment-validation, secrets-management, rollback-planning |
| sre-engineer | Keep the system observable and recoverable. | G10,G11 | Docs/analysis | incident-response, deployment-validation, rollback-planning, scalability-review |
| release-manager | Release only when evidence supports it, never self-approving. | G8,G9 | Docs/analysis | release-readiness, rollback-planning, pull-request-preparation, deployment-validation |
| technical-writer | Keep documentation accurate, deduplicated and working. | G5 | Docs/analysis | architecture-decision-record, github-issue-generation, pull-request-preparation |
| growth-analyst | Measure activation and retention and propose experiments. | G11 | Docs/analysis | kpi-design, product-discovery, market-analysis |
| customer-success | Improve onboarding and customer outcomes using feedback. | G11 | Docs/analysis | user-story-authoring, github-issue-generation, kpi-design |
