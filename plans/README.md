# Plans Directory

This directory contains temporary working memory for projects and work items.

## Purpose

The `plans/` directory is your **working memory** during active development. It's where you:
- Track progress during sessions
- Capture learnings as they emerge
- Maintain context across conversation breaks
- Plan upcoming work
- Document action items

**Important:** This directory is **NOT committed to remote** (see `.gitignore`). Content here is ephemeral.

## Directory Structure

```
plans/
├── .gitkeep                           # Directory structure (committed)
├── README.md                          # This file (committed)
├── [date]-[work-item]-session.md      # Active session summaries
├── [work-item]-planning.md            # Planning documents
└── reflections/                       # Session reflections (working memory)
    └── [date]-[article-name].md       # Detailed session reflections
```

## The Memory Model

### Working Memory (plans/)
**Not Committed to Remote**

Temporary context during active work:
- Session summaries
- Session reflections
- Action item tracking
- Planning documents
- Temporary notes

**Lifecycle:**
1. Create during session
2. Use to maintain context
3. Integrate learnings into rules/templates/checklists
4. Delete after integration

### Long-Term Memory (rules/templates/checklists/)
**Committed to Remote**

Permanent codified knowledge:
- Rules (voice, structure, process, quality)
- Templates (marketing posts, article headers)
- Checklists (pre-commit validation)
- Documentation (READMEs)

**The rules are the source of truth**, not the reflections.

## Usage Patterns

### During a Session

**Create a session summary:**
```
plans/2025-12-26-enabling-team-revision-session.md
```

**Track progress and learnings:**
- What you're working on
- What's complete / in progress
- Learnings as they emerge
- Action items
- Next steps

**Benefits:**
- Maintains context if conversation breaks
- Captures learnings while fresh
- Tracks action items
- Provides working notes

### After a Session

**Integrate learnings:**
1. Update rules with new requirements
2. Create/update templates as needed
3. Update checklists with new validation steps
4. Update READMEs with new patterns

**Clean up:**
- Delete session files after integration
- Or move to `plans/archive/` if you want to keep them locally

**Result:**
- Learnings are now codified in rules
- Templates reflect new patterns
- Checklists validate new requirements
- Plans directory is clean for next session

### For Major Work

**Create a detailed reflection:**
```
plans/reflections/2025-12-26-spec-driven-writing-framework.md
```

**Use the full reflection format:**
- Voice and style learnings
- Process improvements
- Templates and checklists needed
- Specification improvements
- Tool and workflow learnings
- Quality patterns
- Reference material
- Action items

**Then integrate and delete:**
- Work through action items
- Update rules, templates, checklists
- Delete reflection after integration

## Why Not Commit Reflections?

Reflections are **working documents** for updating rules, not permanent documentation:

| Reflection Content | Where It Should Go |
|-------------------|-------------------|
| Voice learnings | `.cursor/rules/technical-writing/voice-and-style/RULE.md` |
| Process improvements | `.cursor/rules/technical-writing/content-workflow/RULE.md` |
| Templates needed | `.cursor/resources/[concern]/templates/[template-name].md` |
| Checklists needed | `.cursor/resources/[concern]/checklists/[checklist-name].md` |
| Quality patterns | `.cursor/rules/technical-writing/article-structure/RULE.md` |
| Tool learnings | `.cursor/rules/devops/version-control/RULE.md` |

**The rules are the source of truth.** Reflections are the mechanism for updating rules.

## Benefits of This Approach

### Avoids Redundancy
- Learnings are codified once in rules, not duplicated in reflections
- No need to read 50 reflection documents to understand the system
- Rules are the single source of truth

### Keeps Action Items Fresh
- Action items in plans/ are active and tracked
- Once integrated, they're deleted (not left stale in committed reflections)
- Clear what's done vs. what's pending

### Reduces Noise
- Future contributors read rules, not historical reflections
- Repository stays focused on current standards
- No archaeological digs through old reflections

### Enables Iteration
- Rules evolve based on learnings
- Old patterns are replaced, not accumulated
- System improves without baggage

## Example Workflow

### Session: Revising The Enabling Team Framework

**1. Create session summary:**
```markdown
# Session Summary: The Enabling Team Framework Revision
Date: 2025-12-27
Status: In Progress

## Current Work
Adding measurement section and condensing examples.

## Progress
- [x] Read existing article
- [ ] Draft measurement section
- [ ] Update marketing post

## Learnings
- Author prefers "team" over "squad"
- Measurement section should be maturity-based

## Action Items
- [ ] Update framework-development-standards: Add measurement guidance
- [ ] Check consistency of "team" vs "squad" across articles
```

**2. Work through session, update as you go**

**3. At end of session:**
- Update `framework-development-standards/RULE.md` with measurement guidance
- Search and replace "squad" → "team" if needed
- Check off action items in session summary

**4. Clean up:**
- Delete `plans/2025-12-27-enabling-team-revision-session.md`
- Learnings are now in rules, session file no longer needed

**5. Result:**
- Rules reflect new measurement guidance
- Consistency improved across articles
- Plans directory is clean
- No stale reflections in repository

## Key Principle

**Reflections are working memory, not permanent documentation.**

The goal is to:
1. Capture learnings during work
2. Integrate learnings into rules/templates/checklists
3. Delete reflections after integration

This keeps the repository clean, the rules as the source of truth, and avoids accumulating historical documents that become noise over time.

**Every session improves the rules. The rules compound quality over time. The reflections are just the mechanism for improvement, not the improvement itself.**

