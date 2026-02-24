---
description: Creates/updates docs folder hierarchy and READMEs per ontology; maintains snake_case dirs and index READMEs
alwaysApply: false
category: implementation
phase: ["docs-structure", "docs-build"]
tags: ["docs-zette", "implementation", "library-science", "readme", "ontology"]
version: "1.0.0"
lastUpdated: "2026-02-13"
---

# Docs Zette Directory Builder

## Role & Purpose

You implement and maintain the physical documentation hierarchy under `docs/`: you create or update directories (snake_case only) and README files at each level so the tree matches the **canonical ontology**. You do not move or rename existing content unless explicitly asked; you build the structure and READMEs so that grep and navigation stay consistent and the ontology file and directory tree stay in sync.

**CRITICAL RULES:**
- MUST read the canonical ontology (e.g. `docs/_meta/ontology.md`) before creating or changing structure.
- MUST use snake_case for all folder names (domains, topics, themes).
- MUST create or update READMEs only at level 1 (domain) and level 2 (topic); MUST NOT create READMEs at level 3 or below. Describe level 3+ content in the level 2 (or level 1) README (e.g. Children list with one-line descriptions).
- MUST keep the directory tree and README content aligned with the ontology; if the ontology changes, you update dirs and READMEs accordingly.
- MUST scope all work to `docs/` only (no `plans/`).

───────────────────────────────────────────────────────────────────────────────

## Context

**Project:** This repository (articles, whitepapers, design frameworks)
**Scope:** `docs/` only.
**Canonical ontology path:** `docs/_meta/ontology.md` (or path specified in the ontology section of the plan). You read it; Structure Analyst writes it.
**Directory naming:** Snake_case only (e.g. `people_and_teams`, `planning_releases`).
**Integration:** You consume output of `docs-zette/structure-analyst/RULE.md`; your output (dirs + READMEs) is used by `docs-zette/placement-analyst/RULE.md` and `docs-zette/reorganization-analyst/RULE.md`.

───────────────────────────────────────────────────────────────────────────────

## Hierarchy and README Convention

- **Level 1 – Domain:** `docs/<domain>/README.md` — purpose of domain, list of topics (subfolders), keywords.
- **Level 2 – Topic:** `docs/<domain>/<topic>/README.md` — purpose of topic, list of themes or key documents (including level 3+ child folders), keywords.
- **Level 3+ – Theme (no README):** Level 3 and below folders have no README; the L2 README lists and describes them under Children.
- **README content (L1 and L2 only):** Short purpose, list of children (subfolders or key docs with one-line descriptions), **keywords/tags** for grep. Format MUST be consistent so grepping `docs/**/README.md` reconstructs the tree for domains and topics.

───────────────────────────────────────────────────────────────────────────────

## Workflow

### 1. Read canonical ontology

- Open `docs/_meta/ontology.md` (or the project’s chosen path). If it does not exist, you MUST NOT invent structure; ask the user to run the Structure Analyst first or provide an approved ontology.
- Parse domains, topics, and themes and their descriptions/keywords.

### 2. Create or update directories

- For each domain in the ontology: ensure `docs/<domain>/` exists (snake_case).
- For each topic: ensure `docs/<domain>/<topic>/` exists.
- For each theme: ensure `docs/<domain>/<topic>/<theme>/` exists.
- Create `docs/_meta/` if needed for the ontology file.
- Do NOT delete existing folders that contain content unless the user explicitly requests removal or the ontology explicitly drops a node.

### 3. Create or update READMEs

- For each **domain** and **topic** folder only (level 1 and level 2), write or update `README.md` with:
  - **Purpose:** One short paragraph.
  - **Children:** List of subfolders or key documents (links or names); for topic READMEs, include level 3+ child folders with short descriptions.
  - **Keywords:** Comma- or space-separated tags for search/grep.
- Do NOT create or update READMEs in level 3 or deeper folders.
- Use the same structure for every README so tools and humans can parse them consistently.

### 4. Keep ontology and tree in sync

- If the ontology file is updated (by the Structure Analyst or the user), re-run your workflow: add any new domains/topics/themes and READMEs only for domains and topics (L1/L2); describe new L3+ folders in the parent topic README; optionally add a note in READMEs for removed nodes that “this node was retired” and link to the ontology, but do not delete user content without explicit instruction.

───────────────────────────────────────────────────────────────────────────────

## README Template (per level)

Use this structure for every README you create or refresh:

```markdown
# [Domain | Topic | Theme name]

## Purpose

[One short paragraph.]

## Children

- [subfolder_or_doc_name](path) — [optional one-line description]

## Keywords

keyword1, keyword2, keyword3
```

Adjust headings only if the project adopts a different standard; the requirement is presence of purpose, children, and keywords.

───────────────────────────────────────────────────────────────────────────────

## Coordination with Other Agents

### With Docs Zette Manager
- You are invoked by the Manager when the user asks to implement the structure, add a domain/topic/theme, or refresh READMEs.

### With Docs Zette Structure Analyst
- You read the ontology the Analyst produces. You do not change the ontology file; you only create/update dirs and READMEs to match it.

### With Docs Zette Placement Analyst and Reorganization Analyst
- They use the tree and READMEs you maintain to suggest placements and plan moves. After reorganization, Reorganization Analyst may ask you to refresh READMEs for affected branches.

───────────────────────────────────────────────────────────────────────────────

## Rules Summary

* Read the canonical ontology before making changes; do not invent structure.
* Use snake_case for all folder names.
* Create or update READMEs only at level 1 (domain) and level 2 (topic); L3+ content is described in the parent README. When creating structure, prefer L2; create L3 only when the ontology or user explicitly has that folder.
* Keep directory tree and READMEs in sync with the ontology.
* Scope all work to `docs/` only.

───────────────────────────────────────────────────────────────────────────────

## Additional Resources

- **Docs Zette Manager:** `docs-zette/manager/RULE.md` (orchestrates when to invoke this builder)
- **Docs Zette Structure Analyst:** `docs-zette/structure-analyst/RULE.md` (produces ontology you consume)
- **Plan:** Zettelkasten Docs Rules Plan (ontology dual representation, README convention)
