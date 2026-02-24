---
name: Integrate agentic writing rules
overview: Integrate the 29 writing-related rules from agentic-sdlc-spec-driven-design (`.cursor/rules/writing/rules-writing/*.mdc`) into thomas-bohn-articles by converting them to folder + RULE.md format, clustering by MDC prefix (technical-writing, solution-architecture, solution-plan, solution-requirements, business, docs-zette, cursor-rule-writing, devops). Include all managers (e.g. technical-writing-manager). Keep both full and compact voice/style (voice-tlb, voice-tlb-compact, style-tlb). Run comparative analysis on overlapping voice/style rules before conversion and reconcile (merge or keep separate) per that analysis.
todos: []
isProject: false
---

# Integrate Agentic SDLC Writing Rules into Thomas Bohn Articles

## Current state

**Source (agentic-sdlc-spec-driven-design):** 29 `.mdc` rules under `.cursor/rules/writing/rules-writing/` — technical writing (author, reviewer, voice, style, images, compact-text), solution requirements/plan/architecture (incl. C4), business value/priority/training, docs-zette (docs organization), cursor-rule-writing (meta), release-engineer. Rules use YAML frontmatter and often reference GUS, `plans/W-*`, and `technical-health-arch`.

**Target (thomas-bohn-articles):** Folder-based rules only: each rule is a directory containing `RULE.md` with `description` and `alwaysApply: false`. Domains: technical-writing, framework-design, marketing, devops. `.cursor/rules/README.md` documents the system; AGENTS.md lists the seven rules.

## Decisions

- **Format:** Convert each chosen `.mdc` into a **folder with RULE.md** (no `.mdc` files in thomas-bohn-articles).
- **Discovery:** Preserve keyword-rich `description` (and optional frontmatter) in each RULE.md so Cursor's intelligent application still works.
- **Generalization:** Strip or generalize project-specific references (GUS, plans/W-123456, technical-health-arch, docs/_meta/ontology.md) to articles-repo context.
- **Scope:** Integrate only **rules-writing** (the 29 writing/docs rules). Do not copy rules-metadata, rules-dbt, sfdx, or dbt rules.

## Organizing principle: cluster by MDC prefix

Rules are grouped into **directories that match the prefix** on the source MDC filenames. That keeps each directory focused and makes chains (e.g. requirements → plan → architecture) easy to see.

**Prefix → directory:**


| MDC prefix               | Target directory                       | Contents                                                                                  |
| ------------------------ | -------------------------------------- | ----------------------------------------------------------------------------------------- |
| `technical-writing-`     | `.cursor/rules/technical-writing/`     | Manager, author, reviewer, voice (full + compact), style, add-images, compact-text.       |
| `solution-architecture-` | `.cursor/rules/solution-architecture/` | Researcher, repo-discovery, c4-diagram-manager, -writer, -reviewer.                       |
| `solution-plan-`         | `.cursor/rules/solution-plan/`         | Plan engineer, plan reviewer.                                                             |
| `solution-requirements-` | `.cursor/rules/solution-requirements/` | Requirements engineer, requirements reviewer.                                             |
| `release-engineer`       | `.cursor/rules/devops/`                | Single rule: release-engineer or release-workflow.                                        |
| `cursor-rule-writing-`   | `.cursor/rules/cursor-rule-writing/`   | Manager, writer, reviewer.                                                                |
| `business-`              | `.cursor/rules/business/`              | Value analyst, priority analyst, training expert.                                         |
| `docs-zette-`            | `.cursor/rules/docs-zette/`            | Manager, structure-analyst, directory-builder, placement-analyst, reorganization-analyst. |


## Target structure (after integration)

- **technical-writing/** — voice-and-style, article-structure, content-workflow (existing) + technical-writing-manager, technical-writing-author, technical-writing-reviewer, add-images, compact-text, voice-tlb (full), voice-tlb-compact, style-tlb. Overlap with existing voice/style resolved via comparative analysis (see below).
- **solution-architecture/** — researcher, repo-discovery, c4-diagram-manager, c4-diagram-writer, c4-diagram-reviewer.
- **solution-plan/** — plan-engineer, plan-reviewer.
- **solution-requirements/** — requirements-engineer, requirements-reviewer.
- **business/** — value-analyst, priority-analyst, training-expert.
- **docs-zette/** — manager, structure-analyst, directory-builder, placement-analyst, reorganization-analyst.
- **cursor-rule-writing/** — manager, writer, reviewer.
- **devops/** — version-control, session-reflection (existing) + release-engineer (or release-workflow).

## 0. Comparative analysis (before conversion)

**Do this before** converting or merging any voice/style rules. It determines whether to merge overlapping content or keep rules separate.

**In scope for comparison:**

- **Existing (thomas-bohn-articles):** `technical-writing/voice-and-style/RULE.md`, `article-structure/RULE.md`, and any other rules that cover voice, tone, structure, or formatting.
- **Incoming (agentic):** `technical-writing-voice-tlb.mdc`, `technical-writing-voice-tlb_compact.mdc`, `technical-writing-style-tlb.mdc`.

**Analysis steps:**

1. **Side-by-side comparison:** For each topic (e.g. first-person narrative, pattern language, bold emphasis, section structure), note what each rule says and where it applies (whitepapers, frameworks, general technical docs).
2. **Decide per topic:**
  - **Different context or style** (e.g. whitepaper vs architecture doc, or different audiences): **keep separate.** Preserve both the existing rule and the incoming rule (or clearly named variants) so the right rule can be applied by context.
  - **Same content, same intent:** **reconcile.** Either merge into one RULE.md and point the other to it, or keep two files with one explicitly "extends" or "see also" the other to avoid duplication and drift.
3. **Document decisions:** In the plan or a short memo, record for each overlapping pair: "merge" or "keep separate (reason: …)". Use that to drive conversion (e.g. if merged, one RULE.md; if separate, two folders with distinct descriptions).

**Outcome:** A clear merge vs keep-separate decision for voice-and-style vs voice-tlb (full), voice-tlb (compact), and style-tlb before any conversion or merge is applied. All managers (including technical-writing-manager) are included in the migration; no manager is skipped.

## 1. Technical writing — only `technical-writing-*` rules

**Keep as-is (already present):**  
`voice-and-style`, `article-structure`, `content-workflow`. After comparative analysis, these may be updated or cross-referenced if merged with incoming voice/style content.

**Add all rules whose MDC filename starts with `technical-writing-`** under `.cursor/rules/technical-writing/`. **Include the manager.**


| New folder                    | Source .mdc                             | Purpose                                                                                                                                 |
| ----------------------------- | --------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| `technical-writing-manager/`  | technical-writing-manager.mdc           | Orchestrates doc/workflow phases; routes to requirements, plan, author, reviewer, C4, release. Generalize GUS/phases for articles repo. |
| `technical-writing-author/`   | technical-writing-author.mdc            | Implements planned phases; writes docs per voice/style and add-images.                                                                  |
| `technical-writing-reviewer/` | technical-writing-reviewer.mdc          | Validates docs for style, clarity, accuracy, completeness.                                                                              |
| `add-images/`                 | technical-writing-add-images.mdc        | Adding images and hidden descriptions (e.g. NotebookLM).                                                                                |
| `compact-text/`               | technical-writing-compact-text.mdc      | Shortening docs while preserving clarity.                                                                                               |
| `voice-tlb/`                  | technical-writing-voice-tlb.mdc         | **Full** TLB voice: how to speak, structure, word choice, flow (detailed).                                                              |
| `voice-tlb-compact/`          | technical-writing-voice-tlb_compact.mdc | **Compact** TLB voice/style reference with tables. Keep separate from full so both are available.                                       |
| `style-tlb/`                  | technical-writing-style-tlb.mdc         | TLB style: structure, templates, formatting, organization.                                                                              |


**Voice and style:** Keep both **full** (voice-tlb) and **compact** (voice-tlb-compact). Where overlap with existing `voice-and-style` or `article-structure` is found in the comparative analysis, apply the merge vs keep-separate decision there (reconcile in content; avoid duplicate or contradictory guidance).

**Do not put in technical-writing:** solution-* or business-* rules; they go in their own prefix directories.

## 2. Solution architecture (new directory)

Create `**.cursor/rules/solution-architecture/`** for all `solution-architecture-`* rules:


| Folder                 | Source .mdc                                   | Purpose                                                     |
| ---------------------- | --------------------------------------------- | ----------------------------------------------------------- |
| `researcher/`          | solution-architecture-researcher.mdc          | Architecture approach and ADRs for docs/whitepapers.        |
| `repo-discovery/`      | solution-architecture-repo-discovery.mdc      | Repo analysis for architecture and quality recommendations. |
| `c4-diagram-manager/`  | solution-architecture-c4-diagram-manager.mdc  | Orchestrates C4 diagram creation, review, maintenance.      |
| `c4-diagram-writer/`   | solution-architecture-c4-diagram-writer.mdc   | Writes C4 diagrams (Mermaid, C4 notation).                  |
| `c4-diagram-reviewer/` | solution-architecture-c4-diagram-reviewer.mdc | Validates C4 diagrams against C4 standards.                 |


Add `**.cursor/rules/solution-architecture/README.md`** describing the chain (researcher, repo-discovery; C4 manager → writer → reviewer) and when to use each.

## 3. Solution plan (new directory)

Create `**.cursor/rules/solution-plan/`** for `solution-plan-`* rules:


| Folder           | Source .mdc                | Purpose                                                 |
| ---------------- | -------------------------- | ------------------------------------------------------- |
| `plan-engineer/` | solution-plan-engineer.mdc | Phased documentation plans, RAID, DoD.                  |
| `plan-reviewer/` | solution-plan-reviewer.mdc | Reviews plans for atomicity, completeness, feasibility. |


Add `**.cursor/rules/solution-plan/README.md`** (short: when to use plan-engineer vs plan-reviewer).

## 4. Solution requirements (new directory)

Create `**.cursor/rules/solution-requirements/`** for `solution-requirements-`* rules:


| Folder                   | Source .mdc                        | Purpose                                                      |
| ------------------------ | ---------------------------------- | ------------------------------------------------------------ |
| `requirements-engineer/` | solution-requirements-engineer.mdc | Specs with RFC 2119, IDs, traceability for doc/article work. |
| `requirements-reviewer/` | solution-requirements-reviewer.mdc | Reviews specs against rubric.                                |


Add `**.cursor/rules/solution-requirements/README.md`** (short: engineer → reviewer chain).

## 5. Business (new directory)

Create `**.cursor/rules/business/`** for all `business-`* rules:


| Folder              | Source .mdc                   | Purpose                                       |
| ------------------- | ----------------------------- | --------------------------------------------- |
| `value-analyst/`    | business-value-analyst.mdc    | Value chain, VRIO, SWOT for doc work.         |
| `priority-analyst/` | business-priority-analyst.mdc | RICE and impact/effort prioritization.        |
| `training-expert/`  | business-training-expert.mdc  | Backwards-design training for docs/workflows. |


Add `**.cursor/rules/business/README.md`** describing the cluster (value → priority; training for rollout).

## 6. Docs-zette (new directory)

Create `**.cursor/rules/docs-zette/`** for all `docs-zette-`* rules:


| Folder                    | Source .mdc                           | Purpose                                           |
| ------------------------- | ------------------------------------- | ------------------------------------------------- |
| `manager/`                | docs-zette-manager.mdc                | Routes to structure, directory, placement, reorg. |
| `structure-analyst/`      | docs-zette-structure-analyst.mdc      | Proposes hierarchy and ontology.                  |
| `directory-builder/`      | docs-zette-directory-builder.mdc      | Creates/updates dirs and READMEs from ontology.   |
| `placement-analyst/`      | docs-zette-placement-analyst.mdc      | Recommends path for a single document.            |
| `reorganization-analyst/` | docs-zette-reorganization-analyst.mdc | Plans/executes moves; updates links and READMEs.  |


Add `**.cursor/rules/docs-zette/README.md`** with decision tree (when to use manager vs structure vs directory vs placement vs reorg).

## 7. Cursor rule writing (new directory)

Create `**.cursor/rules/cursor-rule-writing/`** for all `cursor-rule-writing-`* rules:


| Folder      | Source .mdc                      | Purpose                                          |
| ----------- | -------------------------------- | ------------------------------------------------ |
| `manager/`  | cursor-rule-writing-manager.mdc  | Orchestrates rule creation, review, maintenance. |
| `writer/`   | cursor-rule-writing-writer.mdc   | Writes/updates Cursor rules per patterns.        |
| `reviewer/` | cursor-rule-writing-reviewer.mdc | Reviews rules for quality and consistency.       |


Add `**.cursor/rules/cursor-rule-writing/README.md`** (manager → writer → reviewer chain).

## 8. DevOps (extend existing domain)

**Keep as-is:**  
`version-control`, `session-reflection`.

**Add:**


| Folder                                       | Source .mdc          | Purpose                                                                                                |
| -------------------------------------------- | -------------------- | ------------------------------------------------------------------------------------------------------ |
| `release-engineer/` (or `release-workflow/`) | release-engineer.mdc | GitFlow, PRs, branch naming, Conventional Commits for article/doc delivery. Generalize GUS references. |


## 9. READMEs and indexes

- `**.cursor/rules/README.md`:** Extend the Specialized Rules table and folder diagram to include all new directories (solution-architecture, solution-plan, solution-requirements, business, docs-zette, cursor-rule-writing) and new rules under technical-writing and devops; add short sections per directory with link to each directory's README.
- **Per-directory READMEs:** solution-architecture, solution-plan, solution-requirements, business, docs-zette, cursor-rule-writing (as above). Optional: technical-writing/README.md, devops/README.md.

## 10. AGENTS.md and cross-references

- **AGENTS.md:** Update "Specialized Rules Available" to list the new directories and rule groups (technical-writing extensions, solution-architecture, solution-plan, solution-requirements, business, docs-zette, cursor-rule-writing, devops release-engineer) with pointer to `.cursor/rules/README.md` for the full list.
- **Internal links:** After adding rules, add a sentence or link in `.cursor/docs/how-rules-work-together.md` so the new domains are included in the "how rules work together" picture.

## 11. Conversion steps (per rule)

For each chosen source `.mdc`:

1. Create the target folder under the right directory (e.g. `.cursor/rules/technical-writing/technical-writing-author/`).
2. Copy `.mdc` body into `RULE.md` (keep the main heading and sections).
3. Set RULE.md frontmatter: `description` (keyword-rich, from or adapted from the source), `alwaysApply: false`. Optionally keep `category`, `tags` in frontmatter.
4. Generalize content: replace "technical-health-arch", "GUS", "plans/W-123456", "docs/_meta/ontology.md", etc. with articles-repo equivalents.
5. Fix internal references: change "invoke X.mdc" / "see X.mdc" to "see `rules/<directory>/<folder>/RULE.md`" or "@-mention paths".

## 12. What to skip or defer

- **solution-architecture-repo-discovery.mdc:** Included in solution-architecture/ (as repo-discovery/).
- **rules-metadata / rules-dbt / sfdx / dbt:** Do not copy; the rules-writing set is the single source for this repo.
- **Managers:** All managers are included (technical-writing-manager, docs-zette manager, cursor-rule-writing manager); none are skipped.

## 13. Order of work (suggested)

1. **Comparative analysis:** Compare existing voice-and-style and article-structure with incoming technical-writing-voice-tlb, technical-writing-voice-tlb_compact, technical-writing-style-tlb. Document merge vs keep-separate per topic; record decisions before conversion.
2. Create new directories and their READMEs (solution-architecture, solution-plan, solution-requirements, business, docs-zette, cursor-rule-writing).
3. Add devops/release-engineer (one RULE.md from release-engineer.mdc).
4. Add technical-writing rules: **manager** first, then author, reviewer, add-images, compact-text, **voice-tlb** (full), **voice-tlb-compact**, **style-tlb**. Apply comparative-analysis outcomes to reconcile overlap with existing voice-and-style / article-structure (merge or cross-reference as decided).
5. Add solution-architecture rules (researcher, repo-discovery, c4-diagram-manager, -writer, -reviewer).
6. Add solution-plan rules (plan-engineer, plan-reviewer).
7. Add solution-requirements rules (requirements-engineer, requirements-reviewer).
8. Add business rules (value-analyst, priority-analyst, training-expert).
9. Add docs-zette rules (manager, structure-analyst, directory-builder, placement-analyst, reorganization-analyst).
10. Add cursor-rule-writing rules (manager, writer, reviewer).
11. Update .cursor/rules/README.md and AGENTS.md; optionally update how-rules-work-together.md and add technical-writing/README.md and devops/README.md.

## File and path summary


| Directory             | New or updated paths                                                                                                                                                                                                                                                                                   |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| technical-writing     | New: technical-writing-manager/, technical-writing-author/, technical-writing-reviewer/, add-images/, compact-text/, voice-tlb/, voice-tlb-compact/, style-tlb/. After comparative analysis: possible updates to existing voice-and-style or article-structure. Optional: technical-writing/README.md. |
| solution-architecture | New: README.md, researcher/, repo-discovery/, c4-diagram-manager/, c4-diagram-writer/, c4-diagram-reviewer/.                                                                                                                                                                                           |
| solution-plan         | New: README.md, plan-engineer/, plan-reviewer/.                                                                                                                                                                                                                                                        |
| solution-requirements | New: README.md, requirements-engineer/, requirements-reviewer/.                                                                                                                                                                                                                                        |
| business              | New: README.md, value-analyst/, priority-analyst/, training-expert/.                                                                                                                                                                                                                                   |
| docs-zette            | New: README.md, manager/, structure-analyst/, directory-builder/, placement-analyst/, reorganization-analyst/.                                                                                                                                                                                         |
| cursor-rule-writing   | New: README.md, manager/, writer/, reviewer/.                                                                                                                                                                                                                                                          |
| devops                | New: release-engineer/ (or release-workflow/). Optional: devops/README.md.                                                                                                                                                                                                                             |
| Root                  | Updated: .cursor/rules/README.md, AGENTS.md. Optional: .cursor/docs/how-rules-work-together.md.                                                                                                                                                                                                        |


This keeps thomas-bohn-articles on folder-based RULE.md only, clusters rules by MDC prefix into smaller directory chains, and makes all agentic writing rules available here with READMEs for organization.