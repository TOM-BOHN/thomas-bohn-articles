# Repository Discovery Analysis Checklist

**Purpose:** Systematic checklist for comprehensive repository forensic analysis
**Time Budget:** 150 minutes per repository
**Output:** Standardized analysis report using `.cursor/resources/solution-architecture/repo-discovery-template.md`

---

## Phase 1: Repository Reconnaissance (15m)

**Basic Information:**
- [ ] Repository name/URL, primary language(s), age (first commit), last activity, size (files/LOC)

**Documentation:**
- [ ] README.md, LICENSE, CONTRIBUTING.md, CHANGELOG.md, ADRs/design docs, API documentation

**Structure:**
- [ ] Top-level directories, source location (`src/`, `lib/`), test location, config files, build/deployment artifacts

**Tech Stack:**
- [ ] Primary framework(s), dependency management files, key dependencies (top 5-10), database(s), external services

**Entry Points:**
- [ ] Main executable(s), API endpoints, CLI commands, scheduled jobs

---

## Phase 2: Architecture Analysis (30m)

**Components:**
- [ ] Identify major modules/components, document responsibilities, map inter-module dependencies, identify shared modules

**Data Flow:**
- [ ] Trace ingestion, transformation, persistence, output

**Integrations:**
- [ ] External APIs, database connections, message queues, file system, cloud services

**Patterns:**
- [ ] Architectural pattern (MVC/microservices/monolith/event-driven), design patterns, layering strategy, service boundaries

**Separation:**
- [ ] Business logic isolated, configuration separated, data access abstracted, clear module boundaries

**Config:**
- [ ] Environment configs (dev/staging/prod), secret management, feature flags

**Visualization:**
- [ ] Component diagram, data flow diagram (if complex), dependency graph

---

## Phase 3: Code Quality Assessment (30m)

**Structure:**
- [ ] Directory organization, file naming, module naming, code organization within files

**DRY:**
- [ ] Identify duplication, assess abstraction quality, check shared utilities

**Testing:**
- [ ] Framework(s), unit/integration/e2e tests present, coverage estimate, test organization, mocking strategy, test data management

**Error Handling:**
- [ ] Exception patterns, error propagation, custom exceptions, input validation

**Logging:**
- [ ] Framework, log levels used appropriately, structured logging, monitoring instrumentation

**Tech Debt:**
- [ ] Count TODO/FIXME, identify deprecated patterns, code complexity hotspots, dead code

**Dependencies:**
- [ ] Up-to-date?, security vulnerabilities, dependency pinning, unused dependencies

**Documentation:**
- [ ] Inline comments, docstrings/JSDoc, complex logic explained, public API documented

**Scorecard:**
- [ ] Code Structure: 🟢🟡🟠🔴, Code Quality: 🟢🟡🟠🔴, Testing: 🟢🟡🟠🔴, Documentation: 🟢🟡🟠🔴, Maintainability: 🟢🟡🟠🔴, Overall: 🟢🟡🟠🔴

---

## Phase 3.5: External Dependency & Integration Discovery (20m)

**Package Manifests:**
- [ ] Python (`requirements*.txt`, `setup.py`, `pyproject.toml`, `Pipfile`)
- [ ] JavaScript (`package.json`, `*.lock`)
- [ ] Java (`pom.xml`, `build.gradle`, `settings.gradle`)
- [ ] Go (`go.mod`, `go.sum`)
- [ ] Rust (`Cargo.toml`, `Cargo.lock`)
- [ ] Other languages as applicable

**Internal Packages:**
- [ ] Identify internal/team-owned packages (Git URLs, org-scoped)
- [ ] Private registries (Artifactory, Nexus, private npm/PyPI)
- [ ] Extract package names/versions, document purposes

**Git Dependencies:**
- [ ] Submodules (`.gitmodules`, `git submodule status`)
- [ ] Git URLs in dependencies
- [ ] Vendored code (`vendor/`, `third_party/`, `lib/`)
- [ ] Check vendored for `.git` directories

**Containers:**
- [ ] Docker base images (`FROM` statements)
- [ ] Internal container registries
- [ ] Docker Compose services
- [ ] Container tags/versions

**Infrastructure:**
- [ ] CI/CD pipeline dependencies (GitHub Actions, Jenkins, GitLab CI)
- [ ] Terraform modules, Ansible roles
- [ ] Other IaC dependencies

**API & Services:**
- [ ] External API clients (search for client imports/requires)
- [ ] Third-party SaaS integrations (Stripe, Twilio, AWS)
- [ ] Service discovery patterns (Consul, etcd, Kubernetes)
- [ ] Authentication integrations (OAuth, SAML, JWT)

**Data Sources:**
- [ ] Database drivers/ORMs (psycopg2, mysql, mongodb)
- [ ] Data warehouse integrations (Snowflake, BigQuery, Redshift)
- [ ] Message queue clients (Kafka, RabbitMQ, SQS)
- [ ] Cache integrations (Redis, Memcached)

**Dependency Graph:**
- [ ] Create dependency graph (Mermaid)
- [ ] Categorize (internal/external/infrastructure/services)
- [ ] Identify direct vs transitive
- [ ] Note version constraints/compatibility

**Additional Repos:**
- [ ] List internal packages requiring analysis (with Git URLs)
- [ ] Prioritize (critical/important/reference)
- [ ] Document integration patterns (how consumed)
- [ ] Note connection points (APIs/databases/queues)

**Risk Assessment:**
- [ ] Outdated packages, security vulnerabilities
- [ ] Unmaintained dependencies, vendor lock-in
- [ ] Circular dependencies

**Connection Complexity:**
- [ ] Integration complexity (simple/moderate/complex)
- [ ] API contracts/stability
- [ ] Auth/authz patterns
- [ ] Data contracts/schemas

---

## Phase 4: Repository Health & Operations (20m)

**Commits:**
- [ ] Total commits, frequency (daily/weekly/monthly), recent activity, message quality, commit size

**Contributors:**
- [ ] Total, primary maintainers (top 3-5), active vs inactive, bus factor

**PRs:**
- [ ] Template present, description quality, review process, turnaround time, PR size, merge patterns

**CI/CD:**
- [ ] Tool, build automation, test automation, quality checks (linting/type checking/security), deployment automation, pipeline success rate

**Branching:**
- [ ] Model (GitFlow/trunk-based/feature), naming conventions, long-lived branches, protection rules

**Releases:**
- [ ] Versioning scheme (SemVer/CalVer), frequency, notes quality, tagging strategy

**Issues:**
- [ ] Tracker, open vs closed, templates, triage process, stale issues

**Score:**
- [ ] Dev Practices: 🟢🟡🟠🔴, Contributor Activity: 🟢🟡🟠🔴, CI/CD Maturity: 🟢🟡🟠🔴

---

## Phase 5: Capability & Usage Analysis (20m)

**Capabilities:**
- [ ] Primary use case(s), key features (top 5-10), user personas

**Workflows:**
- [ ] Typical user workflow, system-to-system workflow, data processing workflow

**Examples:**
- [ ] Example code present, integration tests as examples, demo scripts, getting started guide

**Interfaces:**
- [ ] REST API endpoints, GraphQL schema, CLI commands, exported modules/packages, event schemas

**Extensibility:**
- [ ] Plugin system, hooks/callbacks, configuration options, documented extension patterns
- [ ] Assessment: 🟢🟡🟠🔴

**Learning Curve:**
- [ ] Onboarding difficulty: 🟢 Easy | 🟡 Moderate | 🟠 Difficult | 🔴 Very Difficult
- [ ] Factors: docs quality, code complexity, prerequisite knowledge, contributor guide clarity

**Matrix:**
- [ ] Create capability table (feature, description, maturity, notes)

---

## Phase 6: Synthesis & Recommendations (15m)

**Summary:**
- [ ] Repository purpose (1-2 sentences)
- [ ] Overall health: 🟢🟡🟠🔴
- [ ] Key strengths (top 3)
- [ ] Key concerns (top 3)
- [ ] Primary recommendation (proceed/refactor/replace/integrate)

**Reuse:**
- [ ] Identify reusable components (modules/utilities/patterns)
- [ ] Assess stability, document reuse requirements

**Risks:**
- [ ] Integration (compatibility, breaking changes)
- [ ] Performance (scalability, bottlenecks)
- [ ] Security (vulnerabilities, insecure patterns)
- [ ] Maintainability (tech debt, knowledge concentration)
- [ ] Dependencies (outdated libraries, unmaintained)

**Recommendations:**
- [ ] Priority 1 (Critical): urgent issues
- [ ] Priority 2 (Important): high ROI improvements
- [ ] Priority 3 (Nice-to-have): future enhancements

**Modernization:**
- [ ] Tech stack currency, framework versions, deprecation risks, migration complexity

**Solution Architecture:**
- [ ] Fit with target architecture
- [ ] Integration strategy
- [ ] Refactoring recommendations
- [ ] Evolution roadmap

---

## Final Output

- [ ] Analysis report generated using `.cursor/resources/solution-architecture/repo-discovery-template.md`
- [ ] All sections completed with evidence
- [ ] Visualizations included (architecture, dependencies, code structure)
- [ ] Quality scorecard completed with ratings/rationale
- [ ] Recommendations prioritized and actionable
- [ ] Evidence cited (files, commits, PRs, metrics)
- [ ] Report saved to `repository_analysis/<repo-name>_analysis.md`

---

## Time Management

| Phase | Time | Focus |
|-------|------|-------|
| 1. Reconnaissance | 15m | Orientation/structure |
| 2. Architecture | 30m | System design/components |
| 3. Code Quality | 30m | Quality/testing |
| **3.5. Dependency Discovery** | **20m** | **External dependencies/integrations** |
| 4. Operations | 20m | Git history/dev practices |
| 5. Capabilities | 20m | Usage/integration |
| 6. Synthesis | 15m | Recommendations/finalization |
| **Total** | **150m** | **Comprehensive analysis with dependency mapping** |

**Note:** Time budget is flexible. Adjust as needed but maintain systematic coverage.

**Related rule:** `solution-architecture/repo-discovery/RULE.md`
