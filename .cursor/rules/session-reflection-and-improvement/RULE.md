---
description: "Apply at the end of work sessions for reflection and continuous improvement. Keywords: reflection, retrospective, improvement, learnings, process, quality, voice, patterns, session end, wrap up, review, what worked, what didn't"
alwaysApply: false
---

# Session Reflection and Continuous Improvement

Reflect on completed work to identify improvements to specifications, processes, templates, and voice understanding.

## When to Apply

- Major work items (framework articles)
- Significant edits or revisions
- End of long/complex sessions
- When quality patterns emerge

## What to Capture

Use `.cursor/templates/session-reflection-template.md` to document:

**1. Voice and Style**
- Feedback on voice, tone, punctuation, word choice
- Update: `technical-writing-voice-and-style/RULE.md`

**2. Process Improvements**
- What worked well, bottlenecks, missing guidance
- Update: `content-workflow-and-process/RULE.md`

**3. Templates and Checklists**
- Repeated patterns, manual quality checks, format requirements
- Create in: `.cursor/templates/` or `.cursor/checklists/`

**4. Specifications**
- Unclear requirements, contradictions, new patterns
- Update: Relevant rule files

**5. Tools and Workflows**
- New tool patterns, command sequences, file organization
- Update: `release-engineering-and-version-control/RULE.md`

**6. Quality Patterns**
- Issues found, root causes, prevention strategies
- Update: `article-structure-and-quality/RULE.md`

**7. Reference Material**
- Valuable sources, missing references, new opportunities
- Create in: `.cursor/references/` directory

## Using the Template

**Template:** `.cursor/templates/session-reflection-template.md`
**Location:** `plans/[YYYY-MM-DD]-[work-item-name].md`

**Lifecycle:** Create → Update → Integrate → Delete

**Scale to the work:**
- Lightweight: Summary, Progress, Action Items, Next Steps
- Standard: Add Voice/Process sections if feedback received
- Comprehensive: Fill all sections for major work

Template includes format, usage guide, examples, and integration checklist.

## Key Principles

**1. Capture while fresh** - Document immediately, don't wait
**2. Be specific** - "Author prefers X over Y" not "voice was good"
**3. Look for patterns** - Three corrections = rule update needed
**4. Update rules, don't remember** - Codify learnings so they persist
**5. Template repeated work** - Did it twice? Template it
**6. Test improvements** - Did the rule update prevent the issue?
**7. Balance specification and creativity** - Guide, don't constrain
**8. Learn from successes** - Codify what worked well

## Integration with Workflow

**After content creation:** 10-15 min reflection, document learnings, update rules
**After editing:** 5-10 min to capture voice/process patterns
**After epic:** 30-60 min retrospective, identify systemic patterns, update rules

## Good vs Poor Reflection

**Good:** Specific examples, actionable improvements, clear action items, patterns identified
**Poor:** Vague observations, complaints without solutions, no action items

## Memory Architecture

**plans/** (Working Memory - NOT committed)
- Session reflections, planning docs, temporary notes
- Delete after integrating learnings into rules

**Rules/Templates/Checklists** (Long-Term Memory - committed)
- Source of truth for standards and processes
- Updated based on learnings from reflections

**Key principle:** Reflections are the mechanism for updating rules, not permanent documentation. Rules are the source of truth.

## Core Philosophy

**Reflections = Working Memory**
- Capture learnings → Integrate into rules → Delete reflection
- Rules are source of truth, not reflections

**Every Session Improves the System**
- Reflection identifies improvements
- Integration codifies improvements
- Rules compound quality over time

**Codify, Don't Accumulate**
- Don't accumulate 50 reflection docs
- Integrate learnings into rules, delete reflections
- Working memory (plans/) → Long-term memory (rules/)

**Spec-Driven = Rules-Driven**
- Capturing learnings and updating rules builds a system that compounds quality
- Reflection turns experience into expertise, codification turns expertise into a scalable system

