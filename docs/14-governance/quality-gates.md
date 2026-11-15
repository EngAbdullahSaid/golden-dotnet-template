# SDLC quality gates (G0-G11)

Automated agents never self-approve sensitive or irreversible actions. A gate without evidence is Not executed.

## G0 - Business Opportunity Review

- **Purpose:** Decide whether the opportunity is worth pursuing.
- **Required evidence:** Business case BC-###, market analysis, cost estimate
- **Responsible agent or role:** startup-strategist, financial-analyst
- **Automated checks:** Template completeness check
- **Manual approvals:** Product owner approval
- **Failure handling:** Return to discovery or stop
- **Exit criteria:** Approved business case

## G1 - Product Requirements Review

- **Purpose:** Confirm requirements are complete, testable and traced.
- **Required evidence:** FR/NFR, UC, US with acceptance criteria, traceability matrix
- **Responsible agent or role:** product-manager, business-analyst
- **Automated checks:** Requirement ID and traceability validation
- **Manual approvals:** Product owner approval
- **Failure handling:** Revise requirements
- **Exit criteria:** All must-have requirements testable and approved

## G2 - Architecture Review

- **Purpose:** Confirm the design is simple, modular and enforceable.
- **Required evidence:** Architecture doc, C4, ADRs, module contracts
- **Responsible agent or role:** solution-architect
- **Automated checks:** Architecture tests defined
- **Manual approvals:** Architect/tech lead approval
- **Failure handling:** Revise design or record ADR
- **Exit criteria:** No unjustified deviations from architecture rules

## G3 - Security Design Review

- **Purpose:** Confirm security and privacy design before build.
- **Required evidence:** Threat model, privacy assessment, authorization matrix
- **Responsible agent or role:** security-engineer, privacy-reviewer
- **Automated checks:** Security checklist validation
- **Manual approvals:** Security owner approval
- **Failure handling:** Mitigate or record exception with expiry and approver
- **Exit criteria:** High risks mitigated or formally accepted

## G4 - Engineering Readiness

- **Purpose:** Confirm work is ready to start.
- **Required evidence:** Issue with acceptance criteria, design, environment
- **Responsible agent or role:** orchestrator, backend-engineer
- **Automated checks:** Build baseline green
- **Manual approvals:** Tech lead acknowledgment
- **Failure handling:** Clarify scope
- **Exit criteria:** Ready issues with owners

## G5 - Implementation and Code Review

- **Purpose:** Confirm the change meets standards.
- **Required evidence:** Pull request, review report
- **Responsible agent or role:** code-reviewer
- **Automated checks:** Build, format, analyzers
- **Manual approvals:** At least one human reviewer approval
- **Failure handling:** Fix findings
- **Exit criteria:** No open blocking findings

## G6 - Automated Testing

- **Purpose:** Confirm tests demonstrate acceptance criteria.
- **Required evidence:** Unit, integration, E2E, architecture test results
- **Responsible agent or role:** qa-engineer
- **Automated checks:** dotnet test, Playwright
- **Manual approvals:** None beyond review
- **Failure handling:** Fix or document Not executed items
- **Exit criteria:** Required suites Passed; unexecuted listed

## G7 - Security and Performance Validation

- **Purpose:** Confirm security tests and performance targets.
- **Required evidence:** Security test results, dependency scan, load test report
- **Responsible agent or role:** security-engineer, performance-engineer
- **Automated checks:** Dependency review, static analysis, security tests
- **Manual approvals:** Security owner approval for exceptions
- **Failure handling:** Remediate or approved exception
- **Exit criteria:** No unaddressed high vulnerabilities; targets met or accepted

## G8 - Release Readiness

- **Purpose:** Confirm the release can ship.
- **Required evidence:** Changelog, version, gate evidence, rollback plan
- **Responsible agent or role:** release-manager
- **Automated checks:** Release workflow validation
- **Manual approvals:** Release approver
- **Failure handling:** Block release
- **Exit criteria:** All gates satisfied with evidence

## G9 - Production Deployment Approval

- **Purpose:** Authorize production deployment.
- **Required evidence:** Readiness report, change window, rollback plan
- **Responsible agent or role:** release-manager, devops-engineer
- **Automated checks:** Deployment what-if
- **Manual approvals:** Human production approval via protected environment
- **Failure handling:** Do not deploy
- **Exit criteria:** Approval recorded by a human

## G10 - Post-Deployment Verification

- **Purpose:** Confirm production health after deploy.
- **Required evidence:** Health checks, smoke tests, monitoring review
- **Responsible agent or role:** sre-engineer
- **Automated checks:** Smoke tests, health checks
- **Manual approvals:** None
- **Failure handling:** Execute rollback plan
- **Exit criteria:** Verification recorded

## G11 - Operational and Product Review

- **Purpose:** Review outcomes, incidents and metrics.
- **Required evidence:** SLO report, incidents, KPI report
- **Responsible agent or role:** sre-engineer, growth-analyst
- **Automated checks:** Dashboards
- **Manual approvals:** Product owner review
- **Failure handling:** Create improvement issues
- **Exit criteria:** Actions recorded
