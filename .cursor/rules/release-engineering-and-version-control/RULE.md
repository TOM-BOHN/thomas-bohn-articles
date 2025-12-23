---
description: "Apply when committing changes - standardized git commit messages for technical writing. Keywords: commit, git, commit message, changelog, version, git history, staging"
alwaysApply: false
---

# Release Engineering and Version Control

Standardized git commit messages aligned with technical writing standards.

## Commit Message Format

```
[Type]: Brief description (50 chars or less)

Detailed explanation of what changed and why.
Include context and impact on readers.
```

## Commit Types

| Type | When to Use | Example |
|------|-------------|---------|
| **New** | New article or framework | `New: Add The DevOps Maturity Framework` |
| **Update** | Significant content changes | `Update: Expand gap analysis with 3 examples` |
| **Fix** | Corrections, typos, broken links | `Fix: Correct image paths in framework` |
| **Polish** | Minor improvements, formatting | `Polish: Improve readability in opening` |
| **Docs** | README, documentation | `Docs: Update README with new article` |
| **Images** | Adding/updating diagrams | `Images: Add framework overview diagram` |

## Writing Good Commits

### First Line Rules
- **50 characters max**
- **Imperative mood**: "Add" not "Added"
- **Capitalize**: "Add framework" not "add framework"
- **No period**: "Add framework" not "Add framework."
- **Be specific**: Not just "update" or "fix"

### Good Examples
```
New: Add The Platform Engineering Framework
Update: Expand gap analysis with 5 concrete examples
Fix: Correct Team Topologies citation format
Polish: Improve voice consistency in opening paragraphs
```

### Bad Examples
```
added new stuff          # Vague, wrong tense
Update.                 # Not descriptive
fixed things            # Too vague
new article             # Not capitalized, no type
```

### Body (When Needed)
- **Wrap at 72 characters**
- **Explain what and why**
- **Describe impact**

```
Update: Add measurement section to 4 Cs Framework

Added KPIs, data collection methods, and interpretation guidance. 
This addresses feedback that framework lacked actionable metrics.

Impact: Organizations can now track adoption and demonstrate ROI.
```

## When to Commit

**Do:**
- ✅ After completing a logical unit (section, diagram)
- ✅ Before switching tasks
- ✅ After fixing a specific issue

**Don't:**
- ❌ Incomplete or broken content
- ❌ Multiple unrelated changes together
- ❌ Just to "save" (use stash instead)

## What to Commit

**Always:**
- ✅ Markdown files (`.md`)
- ✅ Images (`images/` directory)
- ✅ Documentation (`README.md`, `AGENTS.md`)

**Never:**
- ❌ Temporary files (`.tmp`, `.bak`)
- ❌ Editor files (`.vscode/`, `.idea/`)
- ❌ OS files (`.DS_Store`)

## Common Git Commands

```bash
# Daily workflow
git status                              # Check what's changed
git add filename.md                     # Stage specific file
git add .                               # Stage all changes
git commit -m "New: Add framework"      # Commit with message
git push origin main                    # Push to remote

# Fixing mistakes
git commit --amend -m "New: Fixed message"  # Change last commit message
git reset --soft HEAD~1                     # Undo commit, keep changes
git restore --staged filename.md            # Unstage file
git restore filename.md                     # Discard changes

# Stashing
git stash                               # Save changes temporarily
git stash pop                           # Restore stashed changes
```

## Commit Granularity

**Good:**
```
commit 1: New: Add framework structure
commit 2: New: Add core elements
commit 3: Images: Add overview diagram
commit 4: Polish: Improve transitions
```

**Bad:**
```
commit 1: Add entire article, images, update README, fix typos
```

## Key Principles

1. **Commit Messages Are Documentation** - Write with same care as articles
2. **Atomic Commits** - One logical change per commit
3. **Use Types** - Always prefix with New/Update/Fix/Polish/Docs/Images
4. **Be Specific** - "Add DevOps framework" not "add content"
5. **Review First** - Check your changes before committing

## Common Mistakes

❌ Vague: "update", "fix stuff", "changes"
❌ Wrong tense: "Added" instead of "Add"
❌ No type: "add framework" instead of "New: Add framework"
❌ Too long: Over 50 characters on first line
❌ Multiple unrelated changes in one commit

## Quick Fixes

**Wrong message:**
```bash
git commit --amend -m "New: Corrected message"
```

**Undo last commit:**
```bash
git reset --soft HEAD~1  # Keep changes
```

**Committed wrong files:**
```bash
git reset --soft HEAD~1
git restore --staged unwanted-file.md
git commit -m "New: Add framework"
```

Remember: Treat commit messages as part of your technical writing. Make git history tell the story of your content evolution.
