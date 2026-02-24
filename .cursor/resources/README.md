# Cursor resources

Resources referenced by rules under `.cursor/rules/`. Use these paths when rules point to templates, checklists, scripts, or strategy docs.

**See also:** [.cursor/README.md](../README.md) for overall directory structure, quick start, and workflows.

## By concern

**Technical writing**
- **add-images:** `.cursor/resources/technical-writing/add-images/visualization-strategy-simple.md` — Simple Whiteboard visualization strategy (referenced by `technical-writing/add-images/RULE.md`).
- **Templates:** `technical-writing/templates/` (e.g. article-header).
- **Checklists:** `technical-writing/checklists/` (content-creation, editing, pre-publication, condensing, voice-validation).

**Solution architecture**
- **repo-discovery:**  
  - `.cursor/resources/solution-architecture/repo-discovery-template.md` — Report template.  
  - `.cursor/resources/solution-architecture/repo-discovery-checklist.md` — Analysis checklist.  
  Referenced by `solution-architecture/repo-discovery/RULE.md`.

**Cursor rule writing**
- **Validation script:** `.cursor/resources/cursor-rule-writing/scripts/validate_all_rules.sh` — Bulk validation for all `RULE.md` files (referenced by `cursor-rule-writing/manager/RULE.md` and `cursor-rule-writing/reviewer/RULE.md`).

**DevOps**
- **Templates:** `devops/templates/` — session-reflection, pull_request_template, issue_template (article/doc-focused; can be copied to `.github/` if desired).
- **Checklists:** `devops/checklists/` (e.g. pre-commit).

**Framework design**
- **Checklists:** `framework-design/checklists/` (framework-quality, framework-extension).

**Marketing**
- **Templates:** `marketing/templates/` (e.g. marketing-post).
- **Checklists:** `marketing/checklists/` (e.g. linkedin-marketing).
- **LinkedIn:** `marketing/linkedin-optimization/` (quick-start, example-workflow, README).

## Rule → resource mapping

| Rule (directory or RULE) | Resources |
|-------------------------|-----------|
| `technical-writing/add-images` | visualization-strategy-simple.md |
| `solution-architecture/repo-discovery` | repo-discovery-template.md, repo-discovery-checklist.md |
| `cursor-rule-writing/manager`, `cursor-rule-writing/reviewer` | scripts/validate_all_rules.sh |
| `devops/session-reflection` | devops/templates/session-reflection.md |
| `devops/release-engineer` | devops/templates/pull_request_template.md (or .github/PULL_REQUEST_TEMPLATE.md); optional issue_template.md |
