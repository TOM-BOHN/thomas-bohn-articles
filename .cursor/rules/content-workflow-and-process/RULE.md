---
description: "Apply when planning work or following process - comprehensive workflows for creation, editing, and maintenance. Keywords: workflow, process, phases, steps, research, outline, draft, revision, polish, review, editing, extending, repository, maintenance, file naming, images, version control, best practices"
alwaysApply: false
---

# Content Workflow and Process

This rule defines the workflow and process for creating new content, editing existing articles, extending frameworks, and maintaining the repository.

## Creating New Content

Follow this 9-phase process when creating new articles or frameworks:

### Phase 1: Research (Before Writing)

**Purpose:** Understand the repository's voice, style, and standards before starting.

**Activities:**
1. Read at least 2-3 existing articles in full
2. Note patterns in structure, voice, and formatting
3. Identify the target audience and their pain points
4. Research any established frameworks you'll reference
5. Gather examples and scenarios from your experience

**Deliverable:** Mental model of the repository's style and clear understanding of the problem you're solving

**Time Investment:** 1-2 hours

**Questions to Answer:**
- What problem does this article solve?
- Who is the target reader?
- What frameworks or concepts will I reference?
- What examples can I use to illustrate key points?
- How does this fit with existing articles in the repository?

### Phase 2: Gather Artifacts (Before Drafting)

**Purpose:** Start with existing materials, not a blank page.

**Activities:**
1. Gather existing artifacts: diagrams, rough drafts, presentations, voice notes, demos
2. Use previous whitepapers as reference for style, voice, and structure
3. Identify which artifacts will ground the scope and direction
4. Note what's already documented vs. what needs to be created

**Key Principle:** Don't write from scratch. Start with fragments and shape them into comprehensive content.

**Artifacts to Gather:**
- Framework diagrams (even rough sketches)
- Rough drafts or notes
- Presentation slides or demos
- Voice recordings explaining concepts
- Previous whitepapers for reference

**Time Investment:** 30-60 minutes

### Phase 3: Outline (Before Drafting)

**Purpose:** Create a detailed outline following article structure standards.

**Activities:**
1. Use the standard 8-part article structure as your template
2. Use `.cursor/templates/article-header-template.md` for opening pattern
3. Write topic sentences for each major section
4. List the key points to cover in each section
5. Identify where examples, diagrams, or case studies are needed
6. Note any gaps in your thinking or research

**Deliverable:** Detailed outline with topic sentences and key points

**Structure:**
```markdown
# [Article Title]

## 1. Opening Hook (2-4 paragraphs)
- [Pain point/question 1]
- [Pain point/question 2]
- [Personal credibility statement]
- [Pattern that led to framework]

## 2. Framework Introduction (2-3 paragraphs)
- [What the framework is]
- [Why it matters]
- [How it emerged from practice]

## 3. Core Framework Elements
### Element 1: [Name]
- [Definition]
- [Key points to cover]
- [Example needed]

[Continue for all elements]

## 4. Integration and Interaction
- [How elements work together]
- [Sequence and dependencies]
- [Common misconceptions]

[Continue through all 8 sections]
```

**Time Investment:** 30-60 minutes

**Quality Check:**
- Does the outline follow the standard structure?
- Are all framework elements clearly defined?
- Have I identified where examples are needed?
- Does the flow make logical sense?

### Phase 4: Draft (Focus on Content)

**Purpose:** Write the full draft, focusing on getting ideas down without worrying about perfection.

**Activities:**
1. Write from the outline, expanding each section
2. Focus on clarity and completeness, not polish
3. Include concrete examples and scenarios
4. Write in first-person where appropriate
5. Don't stop to edit—keep the writing flowing

**Deliverable:** Complete first draft with all sections

**Writing Tips:**
- Start with the section you're most excited about (doesn't have to be the beginning)
- Use placeholders for examples you'll develop later: [Example: CI/CD adoption failure]
- Write longer than needed—you'll cut in revision
- Include rough versions of diagrams or note where they're needed
- Don't worry about perfect word choice yet

**Time Investment:** 3-6 hours for a full framework article

**Quality Check:**
- Have I covered all required sections?
- Are my examples concrete enough?
- Have I explained the "why" behind each framework element?
- Does the article solve the problem I set out to solve?

### Phase 5: Revision (Focus on Clarity)

**Purpose:** Edit for clarity, consistency, and flow without over-editing.

**Activities:**
1. Read the entire draft start to finish without editing
2. Note sections that are unclear, redundant, or missing
3. Revise for clarity—simplify complex sentences
4. Check that terminology is consistent throughout
5. Ensure examples are concrete and realistic
6. Verify logical flow between sections
7. Cut unnecessary content

**Deliverable:** Revised draft with improved clarity and flow

**Revision Checklist:** See [Content Creation Workflow Checklist - Phase 5](../../checklists/content-creation-workflow-checklist.md#phase-5-revision-focus-on-clarity)

**Common Issues to Fix:**
- Passive voice overuse
- Vague abstractions without examples
- Inconsistent terminology
- Redundant points
- Weak transitions
- Unexplained acronyms
- Orphaned concepts

**Time Investment:** 1-2 hours

### Phase 6: Condensing (If Needed)

**Purpose:** Remove ideas and explanations to hit target length while maintaining style.

**Activities:**
1. Identify less important sections (not just long sections)
2. Remove entire ideas/explanations, not just trim sentences
3. Maintain paper's voice and style while cutting
4. Focus on removing less important sections entirely rather than trimming everything equally
5. Verify core thesis is still clear and emphasized
6. Read condensed version aloud to check rhythm

**Key Principle:** Condensing is about scope reduction, not word efficiency. Remove ideas, not just words.

**What to Remove:**
- Less important sections or subsections
- Redundant explanations
- Examples that don't add new insight
- Tangential points

**What to Keep:**
- Core thesis and key arguments
- Essential examples
- Voice and style
- Logical flow

**Time Investment:** 30-60 minutes

**Quality Check:**
- Core thesis still clear?
- Voice and style maintained?
- Content still flows logically?
- Target word count achieved?

### Phase 7: Polish (Focus on Details)

**Purpose:** Check formatting, references, image paths, and technical details.

**Activities:**
1. Verify heading hierarchy is correct
2. Check that all images are properly referenced with correct paths
3. Ensure lists use parallel structure
4. Verify bold emphasis is used appropriately
5. Check that all external frameworks are cited in References
6. Confirm file naming follows conventions
7. Create or verify image directory structure
8. Add alt text to all images

**Deliverable:** Polished article ready for final review

**Technical Checklist:** See [Content Creation Workflow Checklist - Phase 7](../../checklists/content-creation-workflow-checklist.md#phase-7-polish-focus-on-details)

**Time Investment:** 30-45 minutes

### Phase 8: Template Validation

**Purpose:** Ensure content matches established templates before considering complete.

**Activities:**
1. Validate marketing post against `.cursor/templates/marketing-post-template.md`
2. Validate article header against `.cursor/templates/article-header-template.md`
3. Check README updated with new article entry
4. Verify all templates followed exactly (structure, not just theme)

**Template Matching:**
- Marketing post: LinkedIn + Medium sections in correct format
- Article header: Opening pattern, framework intro, diagram
- File organization: Correct directories and naming

**Time Investment:** 10-15 minutes

### Phase 9: Final Review (Read Aloud)

**Purpose:** Ensure natural rhythm, voice, and overall quality.

**Activities:**
1. Read the entire article aloud (or use text-to-speech)
2. Note anywhere you stumble or the rhythm feels off
3. Verify the voice is personal and experiential
4. Check that the tone is conversational yet professional
5. Ensure the article delivers on the promise of the opening
6. Confirm all quality standards are met

**Deliverable:** Publication-ready article

**Final Quality Check:** See [Content Creation Workflow Checklist - Phase 9](../../checklists/content-creation-workflow-checklist.md#phase-9-final-review-read-aloud)

**Time Investment:** 20-30 minutes

**Ready to Publish When:**
- Article follows standard structure
- Voice and style match existing articles
- All technical requirements met
- Quality standards achieved
- Reads naturally and provides practical value

## Editing Existing Content

Follow this 5-phase process when editing or improving existing articles:

### Phase 1: Understand Intent

**Purpose:** Deeply understand the author's intent and the article's current state.

**Activities:**
1. Read the full article without making changes
2. Identify the core message and framework
3. Note what's working well
4. Understand the target audience
5. Identify the author's voice and style

**Questions to Answer:**
- What problem is this article solving?
- What is the core insight or framework?
- What's the author's unique perspective?
- What voice and tone are being used?
- What's working well that should be preserved?

**Time Investment:** 15-30 minutes

### Phase 2: Identify Issues

**Purpose:** Note specific problems without jumping to solutions.

**Activities:**
1. Create a list of issues found
2. Categorize: clarity, flow, consistency, structure, technical
3. Prioritize: critical vs. nice-to-have
4. Note sections that need expansion or cutting
5. Identify missing elements per framework standards

**Common Issues:**
- Unclear framework element definitions
- Missing gap analysis or practical application
- Inconsistent terminology
- Weak examples or missing concrete scenarios
- Poor transitions between sections
- Technical issues (broken links, wrong image paths)
- Voice inconsistencies

**Deliverable:** Prioritized list of issues to address

**Time Investment:** 15-20 minutes

### Phase 3: Preserve Core

**Purpose:** Keep the author's voice and key insights intact while improving clarity.

**Activities:**
1. Identify sentences/paragraphs that capture the author's voice
2. Mark key insights that must be preserved
3. Note unique examples or scenarios
4. Preserve first-person narrative and experiential tone
5. Keep the core structure unless fundamentally flawed

**Principle:** Enhance, don't rewrite. The goal is to make the author's ideas clearer, not to impose your own voice.

**What to Preserve:**
- Personal anecdotes and experiences
- Unique insights and perspectives
- Distinctive voice and tone
- Core framework structure
- Effective examples and scenarios

**Time Investment:** 10-15 minutes

### Phase 4: Enhance Selectively

**Purpose:** Make targeted improvements without over-editing.

**Activities:**
1. Fix critical issues first (clarity, structure, technical)
2. Improve examples by adding concrete details
3. Strengthen transitions between sections
4. Ensure terminology is consistent
5. Add missing framework elements if needed
6. Improve formatting and technical details

**Editing Guidelines:**
- Make minimum necessary changes to achieve clarity
- Preserve the author's sentence structure when possible
- Add examples rather than removing content
- Simplify complex sentences without dumbing down concepts
- Fix technical issues (links, paths, formatting)

**What to Change:**
- Unclear or confusing sentences
- Inconsistent terminology
- Missing framework elements
- Technical errors
- Weak or vague examples
- Poor transitions

**What NOT to Change:**
- The author's distinctive voice
- Personal anecdotes and experiences
- Core framework structure (unless fundamentally flawed)
- Unique insights and perspectives

**Time Investment:** 30-60 minutes depending on scope

### Phase 5: Verify Consistency

**Purpose:** Ensure edits match the style of other articles in the repository.

**Activities:**
1. Compare edited article to other articles
2. Verify terminology matches repository standards
3. Check that formatting is consistent
4. Ensure voice and tone align with other articles
5. Verify all quality standards are met

**Consistency Checklist:** See [Editing Workflow Checklist - Phase 5](../../checklists/editing-workflow-checklist.md#phase-5-verify-consistency)

**Time Investment:** 15-20 minutes

## Extending Frameworks

Follow this 5-phase process when adding to or expanding existing frameworks:

### Phase 1: Study the Original

**Purpose:** Deeply understand the existing framework structure, voice, and intent.

**Activities:**
1. Read the original article multiple times
2. Map out the framework structure
3. Note terminology used for each element
4. Understand the sequence and dependencies
5. Identify the author's voice and style patterns

**Questions to Answer:**
- What is the core structure of the framework?
- What terminology is used consistently?
- What examples and scenarios are used?
- What's the author's perspective and voice?
- How are framework elements formatted and explained?

**Time Investment:** 30-45 minutes

### Phase 2: Identify Gaps

**Purpose:** Determine what's missing or what could be expanded.

**Activities:**
1. Compare framework to standards (origin story, definitions, sequence, gaps, measurement)
2. Look for missing elements or incomplete sections
3. Identify areas that need more examples
4. Note where additional depth would add value
5. Consider what questions readers might still have

**Potential Gaps:**
- Missing gap analysis examples
- Incomplete measurement approach
- Lack of practical application section
- Missing visual diagrams
- Insufficient examples
- Unclear sequence or dependencies

**Deliverable:** List of gaps and opportunities for extension

**Time Investment:** 15-20 minutes

### Phase 3: Maintain Consistency

**Purpose:** Ensure extensions use the same terminology, formatting, and style.

**Activities:**
1. Use exact terminology from original article
2. Match the formatting style (headings, lists, bold usage)
3. Maintain the same voice and tone
4. Follow the same structural patterns
5. Use similar examples and scenarios

**Consistency Requirements:**
- Use the same names for framework elements
- Follow the same heading hierarchy
- Use bold for element names consistently
- Match paragraph length and structure
- Use similar transition phrases
- Maintain first-person narrative style

**Time Investment:** Ongoing throughout writing

### Phase 4: Add Value

**Purpose:** Ensure extensions provide new insight, not just more words.

**Activities:**
1. Add concrete examples that illustrate new points
2. Expand gap analysis with additional scenarios
3. Provide more detailed measurement approaches
4. Include additional practical application guidance
5. Add visual diagrams if missing

**Value-Add Checklist:** See [Framework Extension Checklist - Phase 4](../../checklists/framework-extension-checklist.md#phase-4-add-value)

**What to Add:**
- Missing framework elements
- Additional gap examples
- More detailed measurement approaches
- Practical implementation guidance
- Visual diagrams
- Case studies or scenarios

**What NOT to Add:**
- Redundant explanations
- Unnecessary complexity
- Content that doesn't serve the framework
- Examples that don't add new insight

**Time Investment:** 1-3 hours depending on scope

### Phase 5: Update Cross-References

**Purpose:** Ensure any internal links or references are updated.

**Activities:**
1. Check if other articles reference this framework
2. Update table of contents if needed
3. Add cross-links to related articles
4. Update README with new content
5. Verify all links work

**Time Investment:** 15-20 minutes

## Repository Maintenance

### README Updates

**When to Update:**
- Adding a new article
- Significantly expanding an existing article
- Changing article focus or structure

**What to Include:**
- Article title (linked to file)
- 1-2 sentence description
- Key topics (bulleted list)

**Format:**
```markdown
### [Article Title](filename.md)

Brief description of what the article covers and the problem it solves.

**Key Topics:**
- Topic 1
- Topic 2
- Topic 3
```

### File Naming Conventions

**Standards:**
- Use lowercase letters only
- Use underscores to separate words
- Match the framework name
- Include "the" if it's part of the framework name

**Examples:**
- `the_enabling_team_framework.md`
- `the_four_cs_of_data_governance_measurement.md`
- `the_digital_transformation_framework.md`

### Image Organization

**Directory Structure:**
```
images/
  article_name/
    diagram_name.png
    another_diagram.png
```

**Naming Conventions:**
- Use lowercase with underscores
- Use descriptive names
- Match article name for main framework diagram

**Examples:**
- `images/the_enabling_team_framework/the_enabling_team_framework.png`
- `images/the_enabling_team_framework/the_enabling_team_work_types.png`

### Version Control

**Commit Message Format:**
```
[Type]: Brief description

Detailed explanation of what changed and why (if needed)
```

**Types:**
- `New`: New article or framework
- `Update`: Significant changes to existing article
- `Fix`: Corrections or bug fixes
- `Polish`: Minor improvements or formatting
- `Docs`: README or documentation updates

**Examples:**
```
New: Add The Realms of Projects Framework

Complete framework article covering the different types of work delivered by Centers of Excellence.
```

```
Update: Expand gap analysis in Enabling Team Framework

Added three additional gap examples with concrete scenarios to help readers diagnose common failure modes.
```

```
Fix: Correct image paths in Digital Transformation Framework

Updated relative paths to images after directory restructure.
```

## File Organization

### Article Creation Sequence

When creating a new article, follow this sequence:

1. **Create article content:** `the_framework_name.md` (root directory)
2. **Create Mermaid diagram:** `images/the_framework_name/the_framework_name.mmd`
3. **Generate PNG:** `mmdc -i input.mmd -o output.png -b transparent`
4. **Create marketing post:** `marketing/posts/the_framework_name.md`
5. **Update README:** Add entry with title, description, key topics
6. **Validate templates:** Check against `.cursor/templates/`
7. **Commit all together:** Article, diagram (.mmd + .png), marketing post, README

### Directory Structure

```
the_framework_name.md                           # Main article
images/the_framework_name/
  ├── the_framework_name.mmd                    # Mermaid source
  └── the_framework_name.png                    # Generated diagram
marketing/posts/
  └── the_framework_name.md                     # LinkedIn + Medium
plans/
  └── [YYYY-MM-DD]-framework-name.md            # Session reflection (delete after integrating)
```

### PowerShell Commands

For Windows users (PowerShell):
- Command chaining: Use semicolon (;) not &&
- Example: `cd directory; git commit -m "message"`
- Mermaid: `mmdc -i input.mmd -o output.png -b transparent`

## Best Practices

### Do's
- ✅ Start with artifacts (diagrams, drafts, presentations, voice notes)
- ✅ Use previous whitepapers as reference for style and voice
- ✅ Follow the standard 9-phase creation process
- ✅ Preserve the author's voice when editing
- ✅ Use concrete examples in every article
- ✅ Maintain consistent terminology across articles
- ✅ Validate against templates before considering complete
- ✅ Update README when adding new content
- ✅ Test all links and image paths
- ✅ Read articles aloud before publishing
- ✅ Focus on practical value over theoretical completeness

### Don'ts
- ❌ Start with a blank page (gather artifacts first)
- ❌ Skip the artifact gathering phase
- ❌ Skip template validation
- ❌ Rewrite existing articles in your own voice
- ❌ Add content without clear value
- ❌ Use inconsistent terminology
- ❌ Publish without final review
- ❌ Create articles without concrete examples
- ❌ Extend frameworks without studying the original
- ❌ Forget to update cross-references

## Quality Gates

See [Content Creation Workflow Checklist](../../checklists/content-creation-workflow-checklist.md) for detailed quality gates at each phase.

## Time Estimates

**Creating New Framework Article:**
- Research: 1-2 hours
- Gather Artifacts: 30-60 minutes
- Outline: 30-60 minutes
- Draft: 3-6 hours
- Revision: 1-2 hours
- Condensing (if needed): 30-60 minutes
- Polish: 30-45 minutes
- Template Validation: 10-15 minutes
- Final Review: 20-30 minutes
- **Total: 7-14 hours**

**Editing Existing Article:**
- Understand Intent: 15-30 minutes
- Identify Issues: 15-20 minutes
- Preserve Core: 10-15 minutes
- Enhance Selectively: 30-60 minutes
- Verify Consistency: 15-20 minutes
- **Total: 1.5-2.5 hours**

**Extending Framework:**
- Study Original: 30-45 minutes
- Identify Gaps: 15-20 minutes
- Add Value: 1-3 hours
- Update Cross-References: 15-20 minutes
- **Total: 2-4.5 hours**

## Key Principles

1. **Process Serves Quality**: Follow the process to ensure consistent, high-quality output
2. **Preserve Voice**: When editing, enhance clarity without erasing the author's voice
3. **Add Value**: Every change or addition should provide new insight or clarity
4. **Maintain Consistency**: Use consistent terminology, structure, and style across all articles
5. **Focus on Readers**: Every decision should serve the reader's understanding and ability to apply the framework

Remember: The goal is to help leaders solve real problems with practical frameworks. The workflow and process exist to ensure every article delivers on that promise.

