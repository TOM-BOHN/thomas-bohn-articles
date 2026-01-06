---
description: "Apply when structuring articles or checking completeness - defines 8-part structure and quality standards. Keywords: structure, organization, sections, outline, format, quality, completeness, hook, introduction, conclusion, references, formatting, headings, whitepaper, case study, measurement guide"
alwaysApply: false
---

# Article Structure and Quality Standards

This rule defines the standard structure for all articles in this repository and establishes quality standards to ensure consistency, clarity, and practical value.

## Standard Article Structure

Every article should follow this 8-part structure with a Table of Contents at the top:

### Table of Contents (Required)

**Purpose:** Provide navigation and overview of article structure.

**Requirements:**
- Place immediately after article title
- Include all major sections (##) with anchor links
- Include key subsections (###) for major components
- Use proper anchor link format: `#lowercase-with-hyphens`

**Example:**
```markdown
# The Framework Name: Subtitle

## Table of Contents

- [The Framework Name](#the-framework-name)
- [Understanding the Core Components](#understanding-the-core-components)
  - [Component 1](#component-1)
  - [Component 2](#component-2)
- [Common Failure Modes](#common-failure-modes)
- [Measuring Success](#measuring-success)
- [Putting It Into Practice](#putting-it-into-practice)
- [References](#references)
```

### Article Sections

The 8-part structure:

### 1. Opening Hook (2-4 paragraphs)

**Purpose:** Grab attention and establish relevance by identifying the pain point readers face.

**Required Elements:**
- Start with relatable questions or frustrations that leaders commonly experience
- Establish personal credibility through experience ("Throughout my career," "I've been asked")
- Introduce the pattern that led to the framework
- Create immediate recognition: "Yes, that's exactly my problem!"

**Example Pattern:**
```markdown
Throughout my career, I've been asked the same questions by leaders facing the same frustrations: [Question 1]? [Question 2]? [Question 3]?

These conversations always follow a familiar pattern. The organization has tried before—[describe failed attempts]—but nothing stuck. Leaders are left wondering what went wrong and, more importantly, what they should do differently this time.

Time and time again, I've used this framework to diagnose the gaps... [transition to framework introduction]
```

**Common Mistakes to Avoid:**
- Starting with abstract theory instead of concrete problems
- Being too academic or formal in tone
- Not establishing personal credibility
- Failing to create emotional resonance with the reader's pain

### 2. Framework Introduction (2-3 paragraphs)

**Purpose:** Provide a high-level overview of the framework and its value.

**Required Elements:**
- Clear statement of what the framework is
- Explanation of why it matters and what problems it solves
- Description of how it emerged from practice (not theory)
- Brief overview of main components (detailed breakdown comes later)

**Structure:**
```markdown
## [Framework Name]

[1-2 sentences defining the framework]

The framework's value lies in [key benefit]. [Explain the main problem it solves and how it prevents common failure modes].

By following this framework, [describe the outcome teams can achieve].
```

**Best Practices:**
- Keep it high-level—don't dive into details yet
- Focus on value proposition
- Set expectations for what's coming
- Make it clear this is practice-derived

### 3. Core Framework Elements (Multiple sections)

**Purpose:** Break down each component of the framework systematically.

**Required Elements:**
- Dedicated section (## or ###) for each major framework component
- Clear definition of each element (bold on first mention)
- 2-4 paragraphs explaining each element
- Concrete examples for each element
- Visual diagrams where appropriate

**Structure for Each Element:**
```markdown
### Element Name

**Element Name** is [one-sentence definition].

[Paragraph explaining the element's purpose and role]

[Paragraph providing context and examples]

[Optional: Additional paragraphs with details, scenarios, or nuances]
```

**Formatting Standards:**
- Use consistent heading levels (### for main elements, #### for sub-elements)
- Number elements if they're sequential (1, 2, 3...)
- Use bold for element names throughout the article
- Use parallel structure for lists of elements
- Include visual diagrams with proper alt text and captions

**Example:**
```markdown
### The Advising Elements: Policy to Architecture

When the team is thinking about advising, it should consider the following topics:

1. **Policy:** Why is the work important and why do we want this business capability to mature?
2. **Standards:** What must be done by teams to reach the desired level of maturity?
3. **Methodology:** What are the common best practices, rules, and definitions of done?
...
```

### 4. Integration and Interaction (1-2 sections)

**Purpose:** Explain how framework elements work together as a system.

**Required Elements:**
- Show relationships between elements
- Address sequence and dependencies
- Explain how elements reinforce or build on each other
- Discuss common misconceptions or fallacies

**Possible Section Titles:**
- "Why Sequence Matters"
- "Integration of the [Framework Elements]"
- "How the Elements Work Together"
- "Balancing the [Framework Elements]"

**Structure:**
```markdown
## Why Sequence Matters

The framework follows a deliberate sequence that builds from [concept] to [concept].

**The [Category] Sequence:** Element A → Element B → Element C

This sequence moves from [concept] to [concept]. **Element A** establishes [purpose]. **Element B** defines [purpose]...

Jumping directly to [later element] without establishing [earlier element] often results in [failure mode].
```

**Common Patterns:**
- Sequential dependencies (A must come before B)
- Multiplicative effects (A × B > A + B)
- Feedback loops (A improves B which improves A)
- Fallacies (common misconceptions about relationships)

### 5. Practical Application (1-2 sections)

**Purpose:** Show how to use the framework in real-world situations.

**Options (choose at least one):**

**Option A: Gap Analysis**
- Show how to diagnose problems using the framework
- Provide 3-5 concrete examples of common gaps
- Explain what each gap reveals and how to address it

**Option B: Case Study**
- Detailed real-world scenario (can be anonymized)
- Company overview, data landscape, strategy
- Current state and problems
- Solution using the framework
- Outcomes and lessons learned

**Option C: Implementation Guide**
- Step-by-step approach to applying the framework
- Practical considerations for each step
- Common pitfalls to avoid
- Tips for success

**Structure for Gap Analysis:**
```markdown
## Diagnosing Gaps in [Capability]

Gaps in the framework are diagnostic indicators that reveal why [outcome] is failing or struggling.

Consider a few common examples:

**Gap in [Element] ([Category]):** [Scenario]. The gap? [What's missing]. [Consequence].

**Gap in [Element] ([Category]):** [Scenario]. The gap? [What's missing]. [Consequence].

[Continue for 3-5 examples]

The framework's power lies in making these gaps visible.
```

### 6. Measurement and Success (1 section)

**Purpose:** Define how to measure progress and success with the framework.

**Required Elements:**
- Clear definition of what success looks like
- Specific metrics or KPIs where relevant
- Explanation of how to track progress
- Guidance on interpretation and action

**Structure:**
```markdown
## Measuring Success

The driving goal of [Framework Name] is to [primary objective].

By [approach], teams can measure key KPIs:
- [Metric 1]: [Description and interpretation]
- [Metric 2]: [Description and interpretation]
- [Metric 3]: [Description and interpretation]

[Additional context on measurement approach, cadence, and continuous improvement]
```

**Best Practices:**
- Focus on outcomes, not just outputs
- Provide both leading and lagging indicators
- Make metrics actionable
- Explain how to collect the data
- Connect to business value

### 7. Actionable Conclusion (2-3 paragraphs)

**Purpose:** Summarize key insights and provide specific next steps.

**Required Elements:**
- Brief summary of the key insight (not just recap of content)
- Specific, actionable next steps readers can take
- Encouragement or call to action
- Connection back to the opening hook

**Structure:**
```markdown
## Putting It Into Practice

The next time [scenario from opening], use this framework as your [tool type].

Ask the hard questions: [List 3-5 key diagnostic questions from the framework]

The framework won't guarantee success, but it will reveal the gaps that predict failure. And by systematically addressing each element in the right order, you dramatically increase the likelihood that [desired outcome].

That's the difference between [failure state] and [success state].
```

**Tone:**
- Confident but not arrogant
- Encouraging but realistic
- Practical and actionable
- Connected to the reader's journey

### 8. References (if applicable)

**Purpose:** Properly cite sources and give credit to established frameworks.

**Required Elements:**
- Proper citation format for books, articles, frameworks
- Include author, year, title, publisher
- Use consistent citation style
- Include URLs for online resources

**Reference Quality Standards:**
- **Authoritative sources only**: Official blog posts, whitepapers, documentation, academic papers
- **No marketing materials**: Avoid paid workshops, course advertisements, promotional content
- **Prefer official sources**: GitHub blog over third-party tutorials, official documentation over blog posts
- **Verify links work**: All URLs should be accessible and current

**Format:**
```markdown
## References

- Author, A., & Author, B. (Year). *Book Title*. Publisher.
- "Article Title." Website Name, Date, URL.
```

**When to Include:**
- When referencing established frameworks (Team Topologies, DAMA, etc.)
- When citing research or statistics
- When building on others' work
- When providing additional reading resources

**Examples of Good vs Poor References:**

✅ **Good:**
- GitHub Blog: "Spec-Driven Development with AI" (official source)
- *Team Topologies* by Skelton & Pais (established book)
- DAMA-DMBOK: Data Management Body of Knowledge (official framework)

❌ **Poor:**
- "Agentic AI Workshop" (marketing for paid workshop)
- Random blog post without authority
- Broken or outdated links

## Quality Standards

### 1. Clarity Over Cleverness
- Prioritize clear communication over stylistic flourishes
- Use simple words when they work as well as complex ones
- Avoid unnecessary jargon
- Make every sentence earn its place

**Test:** Can a busy leader understand this on first read?

### 2. Evidence-Based
- Ground claims in experience, research, or established frameworks
- Use "I've observed" or "In my experience" for personal insights
- Cite sources for established frameworks and methodologies
- Avoid unsubstantiated assertions

**Test:** Can you back up this claim with evidence or experience?

### 3. Practical Value
- Every section should provide actionable insight or diagnostic value
- Avoid purely theoretical discussions
- Connect concepts to real-world application
- Give readers tools they can use immediately

**Test:** What can the reader do differently after reading this section?

### 4. Consistent Terminology
- Define terms clearly on first use
- Use the same term consistently throughout
- Don't switch between synonyms for key concepts
- Create a glossary if needed for complex frameworks

**Test:** Are you using the same term for the same concept throughout?

### 5. Logical Flow
- Each paragraph should connect naturally to the next
- Use transition phrases to guide readers
- Build arguments progressively
- Avoid jarring topic shifts

**Test:** Does each paragraph follow logically from the previous one?

### 6. Avoid Redundancy
- Don't repeat the same point unless building on it with new insight
- Each paragraph should add new information
- Summarize when appropriate, but don't just restate
- Respect the reader's time and attention

**Test:** Does this paragraph add new value or just repeat what's already been said?

## Common Quality Issues and Prevention

### Issue: Em Dashes Disrupt Rhythm
**Problem:** Em dashes (—) create jarring pauses when read aloud
**Prevention:** Use periods (full stops), commas (pauses), or parentheses (asides) instead
**Validation:** Read article aloud to catch rhythm problems

### Issue: Corporate Jargon Sounds Generic
**Problem:** Phrases like "diagnostic tools for organizational transformation" lose personal voice
**Prevention:** Use plain language, avoid "work-words" and buzzwords
**Validation:** Check for jargon before considering article complete

### Issue: Overuse of Vague Academic Words
**Problem:** Words like "systematic," "comprehensive," "holistic" weaken writing
**Prevention:** Use specific, concrete language
**Validation:** Search for these words and replace with specific descriptions

### Issue: First Drafts Too Long
**Pattern:** First drafts typically need ~25% reduction
**Prevention:** Plan for condensing phase after drafting
**Solution:** Remove ideas and explanations, not just trim sentences

### Issue: Core Thesis Not Clear
**Problem:** Main argument buried or not emphasized enough
**Prevention:** State thesis clearly in introduction and reinforce throughout
**Validation:** Can reader state the main point after reading introduction?

### Issue: Starting with Blank Page
**Problem:** Writing from scratch is slow and lacks grounding
**Prevention:** Start with artifacts (diagrams, drafts, presentations, voice notes)
**Solution:** Shape existing materials into comprehensive content

## Formatting Standards

### Headings
- Use proper heading hierarchy (# for title, ## for main sections, ### for subsections)
- Make headings descriptive and scannable
- Use parallel structure for headings at the same level
- Don't skip heading levels

### Lists
- Use `-` for unordered lists
- Use numbers for ordered lists (when sequence matters)
- Keep list items parallel in structure
- Use sub-bullets (indented) for hierarchical information

### Emphasis
- Use **bold** for key terms on first introduction
- Use **bold** for framework element names
- Use *italics* sparingly for emphasis
- Don't overuse emphasis—it loses impact

### Links
- Use descriptive link text, not "click here"
- Link to related articles using relative paths
- Include external links in References section
- Ensure all links work

### Code Blocks
- Use fenced code blocks with language specification
- Include code examples when relevant
- Keep code examples concise and focused
- Explain what the code does

### Images
- Store in `images/article_name/` subdirectories
- Use descriptive filenames with underscores
- Always use relative paths
- Provide descriptive alt text
- Reference images in body text

## Content Types

### Framework Articles
**Purpose:** Comprehensive explanation of an organizational or technical framework

**Key Sections:**
- Origin story and problem statement
- Framework overview
- Detailed element breakdown
- Integration and sequence
- Gap analysis
- Measurement approach
- Practical application

**Length:** Typically 3,000-6,000 words

### Whitepapers
**Purpose:** In-depth exploration of a specific problem and solution

**Key Sections:**
- Problem definition and context
- Current state analysis
- Solution approach
- Implementation details
- Case studies or examples
- Measurement and outcomes
- Next steps

**Length:** Typically 2,500-5,000 words

### Case Studies
**Purpose:** Real-world application of frameworks (can be anonymized)

**Key Sections:**
- Company overview
- Data landscape or current state
- Strategy and goals
- Problems encountered
- Solution implemented
- Outcomes and lessons learned
- Conclusion

**Length:** Typically 2,000-4,000 words

### Measurement Guides
**Purpose:** Approaches to tracking maturity, adoption, or transformation

**Key Sections:**
- What's being measured and why
- Measurement framework
- Specific metrics and KPIs
- Data collection methods
- Interpretation guidance
- Action based on results
- Continuous improvement

**Length:** Typically 2,500-4,500 words

## Pre-Publication Checklist

Before publishing an article, use the comprehensive checklist:

**Checklist:** [Pre-Publication Checklist](../../checklists/pre-publication-checklist.md)

This checklist covers:
- **Structure:** All 8 sections complete and properly organized
- **Quality:** Voice, tone, evidence, terminology, examples, flow
- **Formatting:** Headings, lists, bold, images, links, code blocks
- **Technical:** File naming, image paths, README updates, linter checks

## Key Principles

1. **Structure Serves the Reader**: Follow the standard structure to make articles scannable and predictable
2. **Quality Over Quantity**: Better to have fewer, high-quality articles than many mediocre ones
3. **Practical Value First**: Every article should solve a real problem for readers
4. **Consistency Builds Trust**: Maintain consistent structure, voice, and quality across all articles
5. **Clarity Serves the Mission**: The goal is to help leaders solve problems, not to showcase writing skill

Remember: You're providing diagnostic tools and practical roadmaps for organizational transformation. Structure and quality standards ensure readers can find, understand, and apply the insights you're sharing.

