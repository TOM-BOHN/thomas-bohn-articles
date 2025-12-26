---
description: "Apply when creating or extending frameworks - ensures frameworks are practical, measurable, and grounded in real-world patterns. Keywords: framework, model, structure, elements, components, origin story, definitions, diagrams, sequence, gap analysis, failure modes, measurement, maturity, capability, assessment"
alwaysApply: false
---

# Framework Development Standards

This rule defines the standards for developing new frameworks or extending existing ones in this repository. All frameworks must be practical, diagnostic, and grounded in real-world observation.

## Core Framework Requirements

### 1. Origin Story
Every framework must explain how it emerged from real-world observation and repeated patterns.

**Required Elements:**
- Describe the recurring problem or question that led to the framework
- Explain the pattern of failures you observed
- Show how the framework crystallized from these observations
- Establish that this is practice-derived, not theory-first
- **Start with artifacts**: Emphasize if framework began with diagrams, presentations, or other materials

**Example Pattern:**
> Time and time again, I've used this framework to diagnose the gaps... The framework reveals the missing pieces with remarkable consistency: a team built sophisticated tooling without establishing clear policy...

**Why This Matters:**
- Establishes credibility through lived experience
- Shows the framework solves real problems, not theoretical ones
- Helps readers trust that this has been tested in practice
- Differentiates from academic or purely theoretical frameworks
- Demonstrates frameworks emerge from artifacts and observation, not blank-page theory

### 2. Clear Definitions
Define each component of the framework explicitly with its own subsection.

**Standards:**
- Each framework element gets its own heading (### level)
- Start with a one-sentence definition in bold
- Expand with 2-4 paragraphs of explanation
- Provide context for why this element matters
- Show how it relates to other elements

**Template:**
```markdown
### Element Name

**Element Name** is [one-sentence definition].

[2-4 paragraphs explaining the element, its purpose, and its role in the framework]
```

**Example:**
> ### Policy
> 
> **Policy:** Why is the work important and why do we want this business capability to mature? Policy establishes the business rationale and drives organizational alignment around the capability.

### 3. Visual Diagrams
Include visual diagrams that illustrate the framework structure and relationships.

**Requirements:**
- Store images in `images/article_name/` subdirectories
- Use descriptive, lowercase names with underscores (e.g., `the_framework_overview.png`)
- Always use relative paths: `images/article_name/diagram.png`
- Provide descriptive alt text for accessibility
- Reference diagrams in body text before or after they appear

**Image Reference Pattern:**
```markdown
The framework follows a deliberate sequence that builds from foundational understanding to practical implementation.

![The Enabling Team Framework](images/the_enabling_team_framework/the_enabling_team_framework.png)

As shown in the diagram, the framework consists of...
```

**Best Practices:**
- Create diagrams that are clear and uncluttered
- Use consistent visual language across all framework diagrams
- Label all components clearly
- Show relationships and flows with arrows or connections
- Keep diagrams simple enough to understand at a glance

### 4. Sequence and Order
If framework elements have dependencies, explicitly explain why sequence matters.

**Required Section:**
Include a "Why Sequence Matters" section when elements are sequential.

**What to Cover:**
- Explain the logical progression from one element to the next
- Show what happens when sequence is violated
- Describe the dependencies between elements
- Provide rationale for the specific order

**Example Structure:**
```markdown
### Why Sequence Matters

The framework follows a deliberate sequence that builds from foundational understanding to practical implementation.

**The [Category] Sequence:** Element A → Element B → Element C → Element D

This sequence moves from [concept] to [concept] to [concept]. **Element A** establishes [purpose]. **Element B** defines [purpose]...

Jumping directly to [later element] without establishing [earlier element] often results in [failure mode]. The order ensures each decision is informed by the appropriate level of context.
```

**Key Points:**
- Make dependencies explicit
- Explain the logic of the progression
- Show failure modes when sequence is violated
- Use bold text for element names
- Use arrows (→) to show flow

### 5. Failure Modes and Gap Analysis
Include a section on common gaps or failure patterns when elements are missing.

**Required Section:**
"Diagnosing Gaps" or "Common Failure Modes" section

**Structure:**
- Introduce the concept that gaps are diagnostic
- Provide 3-5 concrete examples of common gaps
- For each gap, describe: the scenario, the missing element, and the consequence
- Show how the framework makes gaps visible

**Template for Each Gap:**
```markdown
**Gap in [Element Name] ([Category]):** [Brief scenario description]. The gap? [What's missing]. [Consequence of the gap].
```

**Example:**
> **Gap in Policy (Advising):** A team builds an elegant CI/CD toolkit and begins facilitating adoption, but struggles to gain traction. The gap? No executive policy establishing why automated deployment matters to the business. Without the "why," teams view the capability as optional overhead rather than strategic priority.

**Why This Matters:**
- Makes the framework immediately practical and diagnostic
- Shows readers how to identify problems in their own organizations
- Demonstrates the framework's predictive power
- Provides actionable insights, not just theory

### 6. Measurement and Success Criteria
Address how to measure success or progress with the framework.

**Required Section:**
"Measuring Success" or similar heading

**What to Include:**
- Define what success looks like when the framework is properly implemented
- Provide specific metrics or KPIs where relevant
- Explain how to track progress over time
- Describe leading and lagging indicators
- Address both quantitative and qualitative measures

**Example Structure:**
```markdown
## Measuring Success

The driving goal of [Framework Name] is to [primary objective].

By [approach], teams can measure key KPIs:
- [Metric 1]: [Description]
- [Metric 2]: [Description]
- [Metric 3]: [Description]

[Additional context on measurement approach, cadence, and interpretation]
```

**Best Practices:**
- Make metrics practical and measurable
- Avoid vanity metrics
- Connect metrics to business outcomes
- Explain how to collect the data
- Provide guidance on interpretation

## Framework Structure Standards

### High-Level Overview Section
Every framework needs a high-level overview section that comes before detailed elements.

**Required Content:**
- 2-3 paragraphs introducing the framework
- Clear statement of what problem it solves
- Brief description of main components
- Statement of the framework's value proposition

**Example:**
> The Enabling Team Framework is a structured approach for how enabling teams should think about, organize, and deliver capability transformation work across an organization. While the concept of an enabling team is well-established in Team Topologies, this framework provides the practical "how"...

### Framework Elements Section
Break down each component systematically.

**Standards:**
- Use consistent heading levels (### for main elements)
- Number elements if they're sequential (1, 2, 3...)
- Use bold for element names on first mention
- Provide 2-4 paragraphs per element
- Include concrete examples for each element

### Integration Section
Explain how elements work together.

**Required Content:**
- Show relationships between elements
- Explain how they reinforce each other
- Address common misconceptions
- Discuss multiplicative vs. additive effects

**Example:**
> Through the integration of the 4 Cs, businesses can achieve a comprehensive perspective on the transformation of data culture fueled by investments in data management capabilities.

### Practical Application Section
Show how to use the framework in practice.

**Options:**
- Detailed case study with company overview, problem, and solution
- Multiple shorter scenarios showing different applications
- Step-by-step implementation guide
- Diagnostic checklist

**Best Practices:**
- Use realistic scenarios
- Provide enough detail to be credible
- Show both what to do and what to avoid
- Make it actionable

## Framework Naming Conventions

### Framework Names
- Use descriptive names that indicate purpose
- Include "Framework" in the title
- Use title case: "The Enabling Team Framework"
- Keep names concise but clear

### File Names
- Use lowercase with underscores
- Match the framework name: `the_enabling_team_framework.md`
- Be consistent across files and image directories

### Element Names
- Use clear, descriptive names for each element
- Keep names concise (1-3 words typically)
- Use consistent terminology throughout
- Bold element names on first introduction

## Integration with Existing Frameworks

### Citing Established Frameworks
When building on established frameworks (Team Topologies, DAMA, CMMI, etc.):

**Requirements:**
- Cite the source in a References section
- Explain how your framework extends or applies the established one
- Use proper citation format
- Don't claim credit for others' work

**Example:**
> An **Enabling Team** is a fundamental team type that has a primary focus to reduce intrinsic cognitive load and increase flow in Stream-aligned teams. [Later in article, References section includes: Skelton, M., & Pais, M. (2019). *Team Topologies*...]

### Building on Your Own Frameworks
When one framework references another in this repository:

**Standards:**
- Link to the other article using relative paths
- Briefly explain the referenced framework
- Show how the frameworks complement each other
- Don't assume readers have read the other article

## Common Framework Patterns

### Maturity Models
If creating a maturity model:
- Define clear levels (typically 3-5)
- Describe characteristics of each level
- Provide progression path
- Include assessment criteria

### Process Frameworks
If creating a process framework:
- Define clear steps or stages
- Explain inputs and outputs for each step
- Show decision points
- Provide examples of execution

### Capability Frameworks
If creating a capability framework:
- Define capability areas clearly
- Show relationships between capabilities
- Provide assessment approach
- Link to business outcomes

### Measurement Frameworks
If creating a measurement framework:
- Define what's being measured and why
- Provide specific metrics
- Explain data collection methods
- Show how to interpret results

## Language and Emphasis

### Literal vs Metaphorical Language

**Prefer literal descriptions over metaphorical ones:**

✅ **Literal (Strong):**
- "I use GitHub for version control"
- "We run agents on markdown files"
- "The team uses Mermaid to create diagrams"

❌ **Metaphorical (Weak):**
- "Imagine using GitHub for version control"
- "One might run agents on markdown files"
- "Think of it like using Mermaid"

**When describing processes:**
- Name specific tools and actions
- Use first-person when appropriate ("I use," "We implement")
- Avoid hypotheticals when you can state facts
- If claiming "X is like Y," consider if it's actually "X IS Y"

**Example:**
- Weak: "Treating writing as software engineering"
- Strong: "Writing IS software engineering when you use GitHub, Cursor, and git"

### Emphasizing Core Thesis

**Make your main argument clear and repeat it:**
- State thesis clearly in introduction
- Reinforce throughout article
- Use direct statements, not hedging
- Emphasize with structure (headings, sections)

**Example patterns:**
- "This isn't a metaphor. This is X."
- "Not 'like' X, but actually IS X"
- Repeat key phrases for emphasis

**Avoid weak intensifiers:**
- ❌ "I literally use the same tools" (weak emphasis)
- ✅ "I use the same tools" (direct statement)
- ❌ "It's literally a GitHub repository" (unnecessary)
- ✅ "It's a GitHub repository" (clear fact)

**When to emphasize:** Use structural emphasis (bold, repetition, positioning) rather than word-level intensifiers like "literally" or "actually" that weaken rather than strengthen claims.

## Quality Checklist for Frameworks

Before publishing a framework, use the comprehensive checklist:

**Checklist:** [Framework Quality Checklist](../../checklists/framework-quality-checklist.md)

This ensures all framework-specific requirements are met: origin story, element definitions, visual diagrams, sequence explanation, gap analysis, measurement approach, and diagnostic value.

## Key Principles

1. **Frameworks Emerge from Practice**: All frameworks must be grounded in real-world observation and repeated patterns
2. **Sequence Matters**: When elements have dependencies, make the order explicit and explain why
3. **Gaps Are Diagnostic**: Missing framework elements should predict specific failure modes
4. **Theory Meets Practice**: Always connect abstract concepts to concrete scenarios
5. **Sustainable Change Requires Systems Thinking**: Address the entire system, not just one piece
6. **Measurement Enables Management**: Include approaches for tracking progress and success

Remember: You're not creating academic theories—you're providing practical tools that leaders can use to diagnose problems and drive organizational change.

