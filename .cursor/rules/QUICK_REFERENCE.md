# Quick Reference Guide for Technical Writing Rules

This guide provides quick access to key standards and checklists from the technical writing rules.

## Voice Checklist

When writing or editing, ensure:
- ✅ First-person narrative ("I've observed," "Throughout my career")
- ✅ Problem-focused opening with relatable questions
- ✅ Pattern recognition language ("Time and time again," "With remarkable consistency")
- ✅ Conversational yet professional tone
- ✅ Concrete examples for every abstract concept
- ✅ Active voice preferred over passive
- ✅ Bold emphasis for key terms on first introduction

## Article Structure Template

```markdown
# [Article Title]

## Opening Hook (2-4 paragraphs)
[Relatable questions/frustrations]
[Personal credibility through experience]
[Pattern that led to framework]

## Framework Introduction (2-3 paragraphs)
[What the framework is]
[Why it matters]
[How it emerged from practice]

## Core Framework Elements
### Element 1: [Name]
**Element Name** is [definition].
[Explanation and examples]

[Repeat for all elements]

## Integration and Interaction
[How elements work together]
[Sequence and dependencies]

## Practical Application
[Gap analysis OR case study OR implementation guide]

## Measuring Success
[What success looks like]
[Specific metrics/KPIs]
[How to track progress]

## Putting It Into Practice
[Summary of key insight]
[Specific next steps]
[Encouragement/call to action]

## References
[Cited sources]
```

## Framework Requirements Checklist

Every framework must include:
- [ ] **Origin Story**: How it emerged from real-world patterns
- [ ] **Clear Definitions**: Each element explicitly defined
- [ ] **Visual Diagrams**: With proper paths and alt text
- [ ] **Sequence Explanation**: Why order matters (if applicable)
- [ ] **Failure Modes**: 3-5 gap examples showing what happens when elements are missing
- [ ] **Measurement**: How to track success and progress

## Gap Analysis Template

```markdown
## Diagnosing Gaps in [Capability]

Gaps in the framework are diagnostic indicators that reveal why [outcome] is failing.

Consider a few common examples:

**Gap in [Element] ([Category]):** [Scenario describing the situation]. The gap? [What's specifically missing]. [Consequence of the gap - what happens as a result].

**Gap in [Element] ([Category]):** [Another scenario]...

[3-5 total examples]

The framework's power lies in making these gaps visible.
```

## Creation Workflow Quick Guide

### Phase 1: Research (1-2 hours)
- Read 2-3 existing articles
- Identify target audience pain points
- Gather examples from experience

### Phase 2: Gather Artifacts (30-60 min)
- Collect diagrams, drafts, presentations
- Use previous whitepapers as reference
- Start with existing materials, not blank page

### Phase 3: Outline (30-60 min)
- Use 8-part structure template
- Write topic sentences for each section
- Identify where examples/diagrams needed

### Phase 4: Draft (3-6 hours)
- Write from outline
- Focus on getting ideas down
- Include concrete examples
- Don't stop to edit

### Phase 5: Revision (1-2 hours)
- Read full draft without editing first
- Revise for clarity
- Check terminology consistency
- Ensure logical flow
- Cut unnecessary content

### Phase 6: Condensing (30-60 min, if needed)
- Remove less important sections
- Cut entire ideas, not just words
- Maintain voice and style

### Phase 7: Polish (30-45 min)
- Verify heading hierarchy
- Check image paths and alt text
- Ensure parallel structure in lists
- Verify references cited properly
- Confirm file naming conventions

### Phase 8: Template Validation (10-15 min)
- Validate against marketing post template
- Validate against article header template
- Check README updated

### Phase 9: Final Review (20-30 min)
- Read aloud (or use text-to-speech)
- Verify voice is personal and experiential
- Confirm tone is conversational yet professional
- Ensure article delivers on opening promise

## Common Mistakes to Avoid

### Voice and Style
- ❌ Starting with abstract theory instead of concrete problems
- ❌ Using marketing speak or hype
- ❌ Passive voice overuse
- ❌ Unexplained acronyms
- ❌ Vague abstractions without examples

### Framework Development
- ❌ Skipping the origin story
- ❌ Not explaining why sequence matters
- ❌ Missing gap analysis
- ❌ No measurement approach
- ❌ Theoretical frameworks not grounded in practice

### Article Structure
- ❌ Weak opening that doesn't establish pain point
- ❌ Missing practical application section
- ❌ No concrete examples
- ❌ Conclusion that just summarizes without actionable next steps
- ❌ Inconsistent terminology

### Process
- ❌ Skipping the outline phase
- ❌ Editing while drafting
- ❌ Not reading aloud before publishing
- ❌ Forgetting to update README
- ❌ Not testing image paths

## File and Image Conventions

### File Naming
```
the_framework_name.md
the_measurement_approach.md
```
- Lowercase with underscores
- Include "the" if part of framework name

### Image Organization
```
images/
  the_framework_name/
    the_framework_name.png
    diagram_description.png
```

### Image References in Markdown
```markdown
![The Framework Name](images/the_framework_name/the_framework_name.png)
```
- Use relative paths
- Provide descriptive alt text
- Reference in body text

## Quality Standards Quick Check

Before publishing, verify:
- [ ] **Clarity**: Can a busy leader understand on first read?
- [ ] **Evidence-Based**: Can you back up claims with evidence or experience?
- [ ] **Practical Value**: What can readers do differently after reading?
- [ ] **Consistent Terminology**: Same term used for same concept throughout?
- [ ] **Logical Flow**: Does each paragraph follow logically from previous?
- [ ] **No Redundancy**: Does each paragraph add new value?

## Key Principles

1. **Personal Experience Builds Trust** - Use first-person narrative
2. **Clarity Serves the Reader** - Every word should serve understanding
3. **Frameworks Emerge from Practice** - Ground in real-world observation
4. **Show, Don't Just Tell** - Provide concrete examples
5. **Gaps Are Diagnostic** - Missing elements predict failure modes
6. **Sequence Matters** - Make dependencies explicit
7. **Measurement Enables Management** - Include success criteria

## Commit Message Quick Format

```
[Type]: Brief description (50 chars or less)

Detailed explanation of what changed and why.
Include context, motivation, and impact.
```

**Types:** New, Update, Fix, Polish, Docs, Structure, Images, Rules

**Example:**
```
Update: Expand gap analysis in Enabling Team Framework

Added three additional gap examples with concrete scenarios to help 
readers diagnose common failure modes.

Impact: Readers can now identify 5 distinct failure modes.
```

## When to Use Which Rule

**Voice and Style** - Reference when:
- Writing any content
- Checking tone and voice
- Ensuring consistent style
- Selecting vocabulary

**Framework Development** - Reference when:
- Creating new frameworks
- Extending existing frameworks
- Ensuring framework completeness
- Developing visual diagrams

**Article Structure** - Reference when:
- Starting a new article
- Checking article completeness
- Ensuring quality standards
- Formatting content

**Workflow and Process** - Reference when:
- Planning content creation
- Editing existing articles
- Maintaining the repository
- Managing files and images

**Release Engineering** - Reference when:
- Writing commit messages
- Creating branches or PRs
- Version tagging
- Git operations

**Session Reflection** - Reference when:
- Completing major work items
- End of work sessions
- Capturing learnings
- Improving processes and rules

## Getting Help

If you're unsure about any aspect of technical writing in this repository:
1. Read 2-3 existing articles for patterns
2. Review the relevant rule in `.cursor/rules/`
3. Check this quick reference for standards
4. When in doubt, prioritize clarity and practical value

Remember: You're providing diagnostic tools and practical roadmaps for organizational transformation. Every word should serve that mission.

