# Cursor Rule Writing Rules

Rules for creating, updating, and reviewing Cursor rules in this repository.

## Chain

- **manager** — Orchestrates rule creation, review, and maintenance. Use when adding or changing rules and you want the right sequence (writer → reviewer).
- **writer** — Writes or updates Cursor rules per established patterns and conventions. Use when creating or editing a rule file.
- **reviewer** — Reviews rules for quality and consistency. Use after the writer produces or updates a rule.

## When to use which

- Creating or updating a rule → **writer** (or **manager** to coordinate writer + reviewer)
- Validating a rule → **reviewer**
