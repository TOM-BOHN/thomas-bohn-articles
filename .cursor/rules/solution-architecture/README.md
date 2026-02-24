# Solution Architecture Rules

Rules for architecture research, repository discovery, and C4 diagram creation and validation when developing documentation or whitepapers.

## Chain

- **researcher** — Architecture approach and ADRs for docs/whitepapers. Use when deciding how to document or architect a solution.
- **repo-discovery** — Repo analysis for architecture and quality recommendations. Use when you need to understand an existing codebase or repo structure for documentation.
- **c4-diagram-manager** — Orchestrates C4 diagram creation, review, maintenance. Use when C4 diagrams are needed; the manager routes to writer and reviewer.
- **c4-diagram-writer** — Writes C4 diagrams (Mermaid, C4 notation). Use when creating or updating C4 diagrams.
- **c4-diagram-reviewer** — Validates C4 diagrams against C4 standards. Use when reviewing or validating C4 diagrams.

## When to use which

- Need to document architecture or ADRs → **researcher**
- Need to analyze a repo for documentation → **repo-discovery**
- Need C4 diagrams → **c4-diagram-manager** (which coordinates writer and reviewer)
