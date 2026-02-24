---
description: Technical writing STYLE guide for Thomas Bohn (TLB) - document structure, templates, formatting patterns, and organizational preferences for technical documentation
alwaysApply: false
category: style
phase: ["Phase 6"]
tags: ["style", "structure", "formatting", "templates", "technical-writing", "tlb", "authoring"]
version: "1.1.0"
lastUpdated: "2026-02-10"
---

# Technical Writing Style: TLB (Thomas Bohn)

## Role & Purpose

You structure technical documentation following TLB's document organization patterns, formatting conventions, and structural templates. This rule defines HOW TLB STRUCTURES DOCUMENTS.

**CRITICAL RULES:**
- MUST follow TLB's document templates and metadata structures
- MUST use TLB's section organization patterns
- MUST apply TLB's formatting conventions consistently
- MUST structure information architecture using progressive disclosure
- MUST use formal specification language (RFC 2119) when appropriate

This rule focuses exclusively on:
- **Document templates and metadata** - How to structure document headers, status fields, ownership
- **Section organization patterns** - Templates for roles, comparisons, decisions, rationales
- **Formatting conventions** - Lists, tables, code blocks, cross-references, examples
- **Information architecture** - Progressive disclosure, heading hierarchy, accessibility
- **Formal specification language** - When and how to use RFC 2119 keywords

**This rule does NOT cover:**
- Word choice, vocabulary, or phrasing (see `technical-writing/voice-tlb/RULE.md`)
- Sentence structure or flow patterns (see `technical-writing/voice-tlb/RULE.md`)
- Speaking patterns or dictation conversion (see `technical-writing/voice-tlb/RULE.md`)
- Tone, pace, or voice characteristics (see `technical-writing/voice-tlb/RULE.md`)

**The Test:** If you're asking "should this be a bulleted list or a table?" or "how do I structure a role definition?", this rule answers that. If you're asking "does this sentence sound like TLB?", use the voice rule instead.

───────────────────────────────────────────────────────────────────────────────

## Context

**Project:** This repository (articles, whitepapers, design frameworks)
**Work in:** Documentation writing
**Input:** Documentation requiring TLB style structure and formatting
**Output:** Documentation structured according to TLB's style preferences
**Related Rules:** `technical-writing/voice-tlb/RULE.md` (for voice and tone), `technical-writing/technical-writing-manager/RULE.md` (for workflow)

───────────────────────────────────────────────────────────────────────────────

---

## Document Metadata Templates

### Standard Document Header

Start documents with clear metadata section:

```markdown
**Document Type:** [Management Framework | Policy | Guidelines | Architecture Doc | Whitepaper]  
**Status:** [Draft | Review | Approved | Final]  
**Last Updated:** [YYYY-MM-DD]  
**Owner:** [Role or person]
```

**When to use:**
- Management frameworks and policies
- Architecture decision records
- Any document requiring version control or approval tracking

**When to skip:**
- Informal notes or working documents
- Internal team documentation without formal review
- Ephemeral planning documents

---

## Section Structure Patterns

### Role Definitions

Use this template when defining organizational roles, responsibilities, or positions:

```markdown
#### [Role Name]

**Purpose:** [One sentence describing why this role exists]

**Responsibilities:**
- [Specific responsibility 1]
- [Specific responsibility 2]
- [Specific responsibility 3]

**Ideal Candidate:** [Description of who should fill this role - optional]

**Nature:** [Character of the role - e.g., "Secondary role; individual continues to contribute to execution work."]
```

**Example:**

```markdown
#### Scrum Lead

**Purpose:** Ensure scrum ceremonies and processes run smoothly.

**Responsibilities:**
- Run daily stand-ups
- Facilitate sprint planning, reviews, and retrospectives
- Maintain ceremony schedules and team adherence to agendas

**Ideal Candidate:** Engineer with strong facilitation skills

**Nature:** Secondary role; individual continues to contribute to execution work.
```

---

### Comparison Frameworks (Options/Alternatives)

Use this template when presenting multiple options or alternatives:

```markdown
### Option 1: [Name]

**Structure:** [Brief description of the option]

**Advantages:**
- [Advantage 1]
- [Advantage 2]
- [Advantage 3]

**Challenges:**
- [Challenge 1]
- [Challenge 2]
- [Challenge 3]

**Best For:** [When to use this option - context, scenarios, constraints]

---

### Option 2: [Name]

**Structure:** [Brief description of the option]

**Advantages:**
- [Advantage 1]
- [Advantage 2]
- [Advantage 3]

**Challenges:**
- [Challenge 1]
- [Challenge 2]
- [Challenge 3]

**Best For:** [When to use this option - context, scenarios, constraints]
```

**Guidelines:**
- Keep comparison structures parallel across all options
- Use same section headers for each option
- List advantages and challenges in bulleted lists
- Always include "Best For" to provide decision guidance
- Separate options with horizontal rules for visual clarity

---

### Decision Frameworks

When presenting choices with decision criteria:

```markdown
### Decision Framework

The choice between [Option A] and [Option B] depends on:

1. **[Criterion 1]:** [Explanation of how this criterion affects the choice]
2. **[Criterion 2]:** [Explanation of how this criterion affects the choice]
3. **[Criterion 3]:** [Explanation of how this criterion affects the choice]

**Trade-offs:**
- [Explicit trade-off 1]
- [Explicit trade-off 2]

**Recommendation:** [Default recommendation with conditions, or "context-dependent"]
```

---

### Rationale Sections

When stating rules or requirements that need justification:

```markdown
**Rule:** [State the rule clearly and directly]

**Rationale:**
- [Reason 1 - why this rule exists]
- [Reason 2 - benefits or problems this prevents]
- [Reason 3 - alignment with principles or goals]
```

**Example:**

```markdown
**Rule:** No scrum team shall have fewer than two engineers.

**Rationale:**
- Prevents single points of failure when engineers are unavailable
- Enables pair programming, code reviews, and knowledge sharing
- Engineers feel part of a team, not isolated support functions
- Properly-staffed teams ship production work faster than fragmented individuals
```

---

### Current State → New Expectations

When describing organizational changes or transitions:

```markdown
### [Feature/Process Name]

**Current State:**
[Describe how things work now - present tense, factual]

**New Expectations:**
[Describe how things should work going forward - future tense or imperative]

**Expected Split/Outcome:**
[Anticipated result of the change - what will happen]
```

**Example:**

```markdown
### Decision Scientist Integration

**Current State:**
Historically, decision scientists have been staffed on scrum teams as business analysts running within the scrum team, but not co-committing code to production repositories.

**New Expectations:**
If a decision scientist is a member of a scrum team, their work must be committable, repeatable, discoverable, and documented in version-controlled repositories.

**Expected Split:**
This framework anticipates a split between scrum-embedded decision scientists (code contributors) and product-embedded decision scientists (requirements and research specialists).
```

---

### Principle Statements

State organizational or design principles as clear, memorable phrases:

```markdown
### [Principle Category]

**Principle:** [Short, memorable phrase]

**Explanation:**
[1-3 sentences explaining what this principle means and why it matters]
```

**Examples:**
- **Principle:** Consolidation over Fragmentation
- **Principle:** The Plan is the Single Source of Truth
- **Principle:** Engineering-First Culture
- **Principle:** One Phase at a Time

---

### Placeholder Annotations

For data to be filled in later:

```markdown
- **[Field Name]:** [Count to be added]
- **[Field Name]:** [Data to be populated]
- **[Field Name]:** [TBD]

*Note: This section will be updated with [specific data] once [condition or action].*
```

**Example:**

```markdown
### Resource Distribution

- **India Standard Time (IST):** [Resource count to be added]
- **United States (US):** [Resource count to be added]

*Note: This section will be updated with current headcount data once organizational charts are finalized.*
```

---

### Open Questions / Appendix

End documents with unresolved questions:

```markdown
## Appendix: Open Questions

- [Question 1 - direct question format]
- [Question 2 - direct question format]
- [Question 3 - direct question format]
```

**Guidelines:**
- Use actual question format with question marks
- Group related questions together
- Keep questions specific and actionable
- Signals areas requiring further investigation or decision-making

**Example:**

```markdown
## Appendix: Open Questions

- What is the optimal WIP limit for work items per engineer?
- How do we handle epics that span multiple teams?
- What is the escalation path when cross-team dependencies block progress?
```

---

### Living Document Statement

Close iterative documents with meta-statement:

```markdown
---

*This document is a living [framework/guide/specification] and will be updated as [context for updates].*
```

**Examples:**
- *This document is a living framework and will be updated as teams are formed and lessons are learned.*
- *This document is a living architecture guide and will be updated as new patterns emerge.*

---

## RFC 2119 Language (Formal Requirements)

### When to Use

**ONLY use RFC 2119 keywords in:**
- Formal requirements documents (`requirements.md`)
- Technical specifications with binding constraints
- Management frameworks with enforceable rules
- Policy documents requiring compliance

**DO NOT use in:**
- Whitepapers or narrative documentation
- Architecture overviews
- General technical writing
- Informal planning documents

### Keyword Usage

When writing formal requirements:

| Keyword | Meaning | When to Use | Formatting |
|---------|---------|-------------|------------|
| **MUST** | Absolute requirement | Mandatory, non-negotiable | Bold, ALL CAPS |
| **SHALL** | Absolute requirement (formal) | Contractual or legal contexts | Bold, ALL CAPS |
| **SHOULD** | Strong recommendation | Best practice, but exceptions allowed | Bold, ALL CAPS |
| **MAY** | Optional | Permissible but not required | Bold, ALL CAPS |

**Example:**

```markdown
Each scrum team **MUST** consist of 4-8 execution members.

The Scrum Lead **SHOULD** be an engineer or engineering manager.

Team members **MAY** specialize in one of the four skill areas.
```

### Alternative for General Writing

In non-requirements documents, use natural language:
- "We need..." (instead of MUST)
- "We should..." (instead of SHOULD)
- "This requires..." (instead of MUST)
- "Teams can..." (instead of MAY)

---

## Lists and Bullets

### When to Use Bulleted Lists

Use bulleted lists for:
- Parallel items without inherent order
- Characteristics or attributes
- Advantages, challenges, or trade-offs
- Related but independent concepts

**Guidelines:**
- Maintain parallel structure (all items same grammatical form)
- Use consistent punctuation (all periods or no periods)
- Keep items concise (1-2 sentences max)
- If an item needs multiple sentences, consider making it a paragraph or subsection

**Example (Good - Parallel Structure):**

```markdown
**Advantages:**
- Distributes senior engineers across teams
- Enables cross-geo collaboration
- Reduces knowledge silos
- Promotes distributed expertise
```

**Example (Bad - Mixed Structure):**

```markdown
**Advantages:**
- Distributes senior engineers across teams
- You can collaborate across geos
- There are fewer knowledge silos
- Promoting distributed expertise
```

---

### When to Use Numbered Lists

Use numbered lists for:
- Sequential steps or procedures
- Ordered priorities
- Phased approaches
- Instructions that must be followed in order

**Guidelines:**
- Each item should represent a distinct step
- Use clear action verbs to start each item
- Include context or rationale if steps aren't obvious
- Consider sub-numbering for complex multi-step processes

**Example:**

```markdown
### Next Steps

1. **Populate Resource Assessment:** Update headcount, seniority, and skill distribution data.
2. **Evaluate Scenarios:** Assess Option 1 (Blended) vs. Option 2 (Regionalized) against current product roadmap.
3. **Define WIP Limits:** Establish work-in-progress limits for epics and work items per team.
4. **Identify Roles:** Source Scrum Lead and Product Owner candidates from engineering.
```

---

## Tables

### When to Use Tables

Use tables for:
- Comparing multiple attributes across items
- Showing structured data with clear categories
- Mapping relationships between concepts
- Presenting option matrices

**Guidelines:**
- Include clear, descriptive column headers
- Keep tables simple - if too complex, break into multiple tables
- Align data appropriately (left for text, right for numbers)
- Don't use tables for simple lists (use bullets instead)
- Ensure tables are readable in markdown format

**Example:**

```markdown
| Agent | Primary Phase | Document | Action | Role |
|-------|---------------|----------|--------|------|
| Requirements Engineer | Phase 1, 4 | `requirements.md` | Write | Authors requirements with RFC 2119 |
| Requirements Reviewer | Phase 1 | `requirements.md` | Review | Validates against rubric |
| Plan Engineer | Phase 5 | `plan.md` | Write | Decomposes into phases |
```

---

## Code, Technical Terms, and Formatting

### Code Blocks and Inline Code

**Inline code** (backticks):
- Use for code snippets: `EventLogFile`, `getRecord()`
- Use for technical terms: `dbt`, `GraphQL`, `JSON`
- Use for API names, object names, field names
- Use for file paths: `requirements.md`, `src/main.py`
- Use for technical constants or values: `true`, `null`, `200`

**Code blocks** (triple backticks):
- Use for multi-line code examples
- Always specify language for syntax highlighting
- Include context before the code block

**Example:**

```markdown
The `AccountService` class provides methods for account management:

```python
class AccountService:
    def get_account(self, account_id: str) -> Account:
        return self.repository.find_by_id(account_id)
```
```

### Technical Term Formatting

**Capitalization:**
- Capitalize product names: Salesforce, Platform, Product Data Platform
- Capitalize proper nouns: Apex, Lightning Web Components
- Use consistent casing: camelCase for methods, PascalCase for classes
- Don't capitalize generic technical terms: "the database", "the API"

**Bold:**
- Use for terms being defined: "**Telemetry Pattern:** A specific implementation approach..."
- Use for emphasis sparingly
- Use for section labels: "**Purpose:**", "**Rationale:**"

**Italics:**
- Use for introducing new terms on first use (optional)
- Use for emphasis very sparingly
- Avoid using italics as a substitute for clear writing

---

## Cross-References and Links

### Internal Cross-References

**Within same document:**
```markdown
As discussed in the [Decision Framework](#decision-framework) section...
See [Resource Assessment](#resource-assessment) for details.
```

**To other documents:**
```markdown
See [The Telemetry Grid](frame_telemetry_grid.md) for more details.
For architecture context, refer to [System Architecture](../architecture/system_overview.md).
```

**Guidelines:**
- Use descriptive link text (not "click here" or "see this")
- Use section headings for same-document references
- Use relative paths for project-internal documents
- Verify links remain current (use automated link checking if available)

---

## Examples and Illustrations

### Structuring Examples

**Pattern:**
1. Introduce the concept
2. Provide the example immediately after
3. Label examples clearly
4. Explain the example if not self-evident

**Label examples with:**
- "Example:"
- "For instance:"
- "Consider:"

**Example structure:**

```markdown
Each scrum team must have a clear sprint theme.

**Example:**

**Sprint Theme (Sprint 23):** "Enable real-time scoring updates for Enterprise tier customers"

This theme clearly communicates what the team will demonstrably advance during the sprint.
```

### Good vs. Bad Examples

When showing contrasts:

```markdown
**Good:**
- [Example of correct approach]

**Bad:**
- [Example of incorrect approach]

**Why:**
[Explanation of what makes the good example good and the bad example bad]
```

---

## Definitions and Glossaries

### Defining Terms

**First use in document:**
```markdown
**[Term]:** [Clear, concise definition]
```

**Example:**
```markdown
**Telemetry Pattern:** A specific implementation approach for capturing and transmitting user behavior data to analytics systems.
```

**Guidelines:**
- Bold the term being defined
- Use a colon after the term
- Define on first use, then use consistently
- Don't assume readers know domain-specific terminology

### Glossary Sections

For documents with many technical terms:

```markdown
## Glossary

**[Term 1]:** [Definition]

**[Term 2]:** [Definition]

**[Term 3]:** [Definition]
```

**When to create a glossary:**
- Document uses 10+ domain-specific terms
- Terms are used throughout the document
- Audience may include readers unfamiliar with terminology

---

## Information Architecture

### Progressive Disclosure

Structure documents to reveal complexity gradually:

1. **Start with high-level overview** - What is this document about? Why does it matter?
2. **Provide core concepts** - Essential definitions and frameworks
3. **Drill into details** - Specific implementations, edge cases, technical depth
4. **Reference appendices** - Supporting details, open questions, additional resources

**Don't:**
- Overwhelm with detail upfront
- Assume readers have full context
- Skip foundational concepts

---

### Heading Hierarchy

Use proper heading structure:

```markdown
# Document Title (H1 - use once)

## Major Section (H2)

### Subsection (H3)

#### Sub-subsection (H4)

##### Minor subsection (H5 - use sparingly)
```

**Guidelines:**
- Don't skip heading levels (H2 → H4)
- Keep hierarchy consistent
- Use descriptive headings that indicate section content
- Capitalize consistently (choose Title Case or Sentence case)

**Heading Naming:**
- Be specific: "Resource Distribution by Geography" not "Resources"
- Be descriptive: "Blended Cross-Geo Teams" not "Option 1"
- Be consistent: use parallel structure for related sections

---

### Consistency

**Terminology:**
- Pick one term and stick with it (don't alternate "pattern" and "approach")
- Create a terminology table if needed for complex documents
- Use consistent capitalization for product/feature names

**Tense:**
- Present tense for general descriptions: "The framework enables..."
- Past tense for historical context: "Historically, we used..."
- Future tense for plans: "This will require..."

**Voice:**
- Prefer active voice: "The framework enables X" not "X is enabled by the framework"
- Use passive voice sparingly, only when actor is unknown or unimportant

---

## Accessibility

### Screen Reader Compatibility

**Heading structure:**
- Use semantic heading hierarchy (H1 → H2 → H3)
- Don't use headings for formatting (use bold instead)
- Don't skip levels

**Links:**
- Use descriptive link text: "See the Resource Assessment section" not "Click here"
- Ensure links make sense out of context

**Images:**
- Provide alt text for all images and diagrams
- Describe what the image conveys, not just what it shows
- For complex diagrams, consider a text-based description in addition to alt text

**Tables:**
- Use proper table headers
- Keep tables simple and linear
- Consider whether a list might be more accessible

---

## Document-Type-Specific Patterns

### Framework Documentation

**Structure:**

1. **Executive Summary:** High-level overview capturing essence and strategic value
2. **Visual Walkthrough:** Explain diagrams and frameworks step-by-step
3. **Definition Sections:** Clear definitions with examples, building understanding incrementally
4. **Pattern Sections:** For each pattern - Definition, Characteristics, Use Cases, Data Sources, Technical Implementation, Strategic Value
5. **Strategic Implications:** Connect to business strategy and decision-making

---

### Architecture Documentation

**Structure:**

1. **Context:** What system/component is this about? Why does it exist?
2. **High-Level Architecture:** Diagrams and overviews
3. **Component Descriptions:** Each major component with purpose, responsibilities, dependencies
4. **Data Flow:** How information moves through the system
5. **Technical Decisions:** ADRs (Architecture Decision Records) for key choices
6. **Constraints:** Technical, business, or operational limitations

---

### Management Frameworks

**Structure:**

1. **Document Metadata:** Status, owner, last updated
2. **Overview:** Purpose and scope of the framework
3. **Principles:** Core guiding principles as memorable statements
4. **Structure Definitions:** Roles, responsibilities, processes
5. **Decision Frameworks:** How to choose between options
6. **Open Questions:** Unresolved issues requiring decisions
7. **Living Document Statement:** Meta-commentary on iteration

---

───────────────────────────────────────────────────────────────────────────────

## Rules Summary

* Follow TLB's document templates and metadata structures
* Use TLB's section organization patterns (role definitions, comparison frameworks, decision frameworks)
* Apply TLB's formatting conventions (lists, tables, code blocks, cross-references)
* Structure information architecture using progressive disclosure
* Use RFC 2119 language (MUST/SHOULD/MAY) for formal requirements
* Match formatting choices to content type and audience
* Maintain consistency with TLB's style preferences throughout documentation

───────────────────────────────────────────────────────────────────────────────

## Usage

This style guide applies when:
- Structuring technical documentation
- Creating document templates
- Formatting management frameworks
- Organizing information architecture
- Authoring any technical content in Phase 6

**Reference:** When Technical Writing Author is invoked in Phase 6, use this style guide for document structure and formatting. Combine with `technical-writing/voice-tlb/RULE.md` for complete writing guidance.

**Relationship to Voice Rule:**
- **This rule (style):** "Should this be a table or a list?" "How do I structure a role definition?"
- **Voice rule:** "Does this sentence sound like TLB?" "What words would TLB use here?"
