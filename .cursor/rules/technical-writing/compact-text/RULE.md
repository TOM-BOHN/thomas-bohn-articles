---
description: Technical writing compaction function - reduces document size by 50%+ while preserving clarity and essential information through efficient language, structural optimization, and strategic depth reduction
alwaysApply: false
category: function
phase: ["Phase 6"]
tags: ["compaction", "optimization", "technical-writing", "architecture-docs"]
version: "1.1.0"
lastUpdated: "2026-02-10"
---

# Technical Writing Compaction Function

## Role & Purpose

You compact technical writing and architecture documentation to reduce token count, word count, and line count by **50% or more** while maintaining clarity, precision, and essential information. Goal: describe concepts more efficiently, not just remove words.

**CRITICAL RULES:**
- MUST reduce document size by 50% or more
- MUST preserve clarity and essential information
- MUST align compaction strategy with document's target audience and medium
- MUST use efficient expression techniques
- MUST maintain readability throughout compaction

───────────────────────────────────────────────────────────────────────────────

## Context

**Project:** This repository (articles, whitepapers, design frameworks)
**Work in:** Documentation compaction (reducing length while preserving clarity)
**Input:** Technical documentation requiring size reduction
**Output:** Compacted documentation maintaining clarity and essential information

───────────────────────────────────────────────────────────────────────────────

## Core Principles

- **Audience and Medium Alignment** - Match compaction strategy to target audience and document medium/purpose
- **Efficient Expression** - Use fewer words to convey the same meaning
- **Strategic Depth Reduction** - Remove unnecessary detail levels without losing essential information
- **Structural Streamlining** - Optimize document organization (when appropriate for medium)
- **Preserve Clarity** - Maintain readability and precision throughout
- **Information Preservation** - Retain all essential facts, decisions, and insights

## Audience and Medium Considerations

**Critical:** Compaction strategy MUST align with document's target audience, medium, and purpose.

### Document Types and Strategies

| Document Type | Appropriate Strategies | Avoid |
| --- | --- | --- |
| **Technical Docs & Architecture** | ✅ Prose to tables, structured formats, streamline definitions | ❌ None |
| **Whitepapers & Articles** | ✅ Language efficiency, depth reduction, consolidate concepts | ❌ Prose to tables, excessive bullets (maintain narrative) |
| **Blog Posts** | ✅ Language efficiency, streamline explanations | ⚠️ Tables sparingly, ❌ Over-structuring |
| **Marketing Materials** | ✅ Language efficiency, streamline messaging | ❌ Tables, technical formatting (maintain brand voice) |
| **Slack Messages** | ✅ Extreme language efficiency, direct statements, short sentences | ❌ Tables, complex formatting (platform limitations) |
| **Reference Docs** | ✅ Prose to tables, structured formats extensively, remove narrative | ❌ None |

### Formatting Guidelines

| Format | Use When | Avoid When |
| --- | --- | --- |
| **Tables** | Technical docs comparing items, reference docs, architecture docs, config guides | Whitepapers, marketing, Slack, articles requiring narrative |
| **Bullet Points** | Reference docs (extensively), technical docs (sparingly), internal comms | Marketing, whitepapers (sparingly for emphasis only), articles |

## Optimization Strategies

### 1. Language Efficiency

**Remove Redundancy:**
- Eliminate repeated information (consolidate to one explanation)
- Remove filler phrases ("it is important to note", "what this means is")
- Eliminate verbose qualifiers ("may potentially" → "may")
- Remove unnecessary hedging (use direct statements when facts are certain)

**Use Precise Language:**
- Replace verbose phrases: "in order to" → "to", "due to the fact that" → "because", "at this point in time" → "now", "for the purpose of" → "for", "in the event that" → "if", "with regard to" → "about", "as a result of" → "because"
- Use active voice: "The framework enables..." not "The framework is enabled by..."
- Eliminate unnecessary words: "very", "quite", "actually", "really", "basically", "in general"

**Consolidate Related Concepts:**
- Merge similar explanations
- Use parallel structure in lists
- Combine related sentences into single efficient sentences

### 2. Structural Optimization

**⚠️ Medium Awareness Required:** Only apply structural transformations (prose to tables, lists to tables) when appropriate for document medium.

**Prose to Tables** (technical docs, reference docs, architecture docs only):

**Before:**
```markdown
Platform Service Events are triggered by service execution, API calls, and backend processes. 
They generate very high data volume, with millions of events per day. The temporal pattern 
is continuous event streams. Primary users are architects, SREs, and developers.
```

**After:**
```markdown
| Work Stream | Trigger | Volume | Temporal Pattern | Primary Users |
| --- | --- | --- | --- | --- |
| Platform Service Events | Service execution, API calls | Very High (millions/day) | Continuous streams | Architects, SREs, Developers |
```

**Optimize Section Structure:**
- Merge related sections
- Reduce unnecessary nesting levels
- Remove verbose section introductions ("This section covers...")

### 3. Depth Reduction

**Remove Unnecessary Detail:**
- Eliminate over-explanation beyond document's purpose
- Remove redundant examples (keep most illustrative)
- Cut excessive background context

**Focus on Essentials:**
- Lead with essential information
- Move detailed explanations to appendices
- Remove tangential information and verbose edge cases

### 4. Content Streamlining

**Optimize Definitions:**
- Use direct definitions without verbose setup
- Remove redundant explanations
- Combine related definitions

**Before:**
```markdown
**Telemetry Pattern:** A telemetry pattern is a specific implementation approach that defines 
how telemetry data is collected, structured, and transmitted. This pattern establishes the 
methodology for capturing information about system behavior and performance.
```

**After:**
```markdown
**Telemetry Pattern:** Implementation approach defining how telemetry data is collected, 
structured, and transmitted to capture system behavior and performance.
```

**Optimize Explanations:**
- Replace "What this means is..." with direct statements
- Remove "The key insight here is..." - just state the insight
- Eliminate "This enables..." redundancy when relationship is obvious

**Before:**
```markdown
The key insight here is that telemetry patterns operate differently based on architectural 
layers. What this means is that we need to consider the specific layer when designing 
telemetry collection strategies.
```

**After:**
```markdown
Telemetry patterns operate differently by architectural layer, requiring layer-specific 
collection strategies.
```

### 5. Visual Optimization

**Streamline Diagram Descriptions:**
- Remove verbose explanations
- Use concise captions
- Reference diagrams rather than describing in detail

**Before:**
```markdown
The following diagram illustrates the three work streams and how they relate to each other. 
As you can see, Platform Service Events are shown on the left, Platform State Details in 
the center, and Platform Interaction Events on the right.
```

**After:**
```markdown
The diagram below shows three work streams, their telemetry tools, and metric class mappings.
```

## Compaction Process

### Phase 1: Analysis
1. **Identify medium and audience** - Determine document type, target audience, purpose; select appropriate strategies
2. **Read entire document** - Understand structure, content, purpose
3. **Identify opportunities** - Long paragraphs, repeated explanations, verbose transitions, over-explained concepts
4. **Categorize content** - Essential (keep), Important (condense), Nice-to-have (remove), Redundant (remove)
5. **Measure baseline** - Word count, line count, token count, section count (see Exclusions below)

### Exclusions from Compaction Metrics

When calculating word count, line count, and token count for compaction targets, **exclude the following elements**:

- **URL hyperlink text** - Do not count the text content inside markdown link syntax `[link text](url)` when calculating compaction metrics
- **Review request headers** - Do not count headers that request review or approval (e.g., "Please review", "Review requested")
- **Image connection footers** - Do not count footers that outline images to connect to Slack posts or other external references
- **Hidden/non-rendering text** - Do not count any text that will not render in the final markdown output (HTML comments, hidden markdown blocks, etc.)

**Rationale:** These elements are structural/metadata and do not contribute to the substantive content being compacted. Excluding them ensures compaction metrics accurately reflect the reduction of actual readable content.

### Phase 2: Structural Planning
1. **Plan reorganization** - Merge sections, optimize order, plan table conversions (if medium-appropriate)
2. **Design table structures** (technical/reference docs only) - Identify prose for tables, plan comparisons
3. **Plan depth reduction** - Identify unnecessary detail, plan example consolidation
4. **Verify medium alignment** - Confirm structural changes match medium, preserve narrative flow for prose docs

### Phase 3: Language Optimization
1. **Remove redundancy** - Eliminate repeated information, filler phrases, verbose qualifiers
2. **Replace verbose phrases** - Use concise alternatives, apply active voice, eliminate unnecessary words
3. **Consolidate concepts** - Merge similar explanations, combine related sentences, use parallel structure

### Phase 4: Structural Transformation
1. **Convert prose to tables** (appropriate mediums only) - Transform comparisons, convert property lists, tabularize data
2. **Optimize sections** - Merge related sections, streamline hierarchies, remove redundant introductions, preserve narrative flow
3. **Streamline lists** - Consolidate items, convert to tables when medium-appropriate, use parallel structure

### Phase 5: Depth Reduction
1. **Remove unnecessary detail** - Eliminate over-explanation, remove redundant examples, cut excessive context
2. **Focus on essentials** - Prioritize core concepts, move details to appendices, highlight critical information

### Phase 6: Validation
1. **Verify completeness** - All essential information retained, no critical details lost
2. **Check accuracy** - Information correct, no meaning changed, technical accuracy validated
3. **Validate clarity** - Readability maintained, precision preserved, structure supports understanding
4. **Measure reduction** - Calculate word/line/token count reduction (target: 50%+), excluding URL hyperlink text, review headers, image footers, and hidden text (see Exclusions above)

## Quality Checklist

- [ ] **Medium alignment verified** - Strategy matches document type and audience
- [ ] **Structural changes appropriate** - Tables/bullets only when appropriate for medium
- [ ] **Narrative flow preserved** - Prose structure maintained for whitepapers/articles/marketing
- [ ] All essential information retained, no critical details lost
- [ ] Clarity and precision maintained
- [ ] Word/line/token count reduced by 50%+ (excluding URL hyperlink text, review headers, image footers, hidden text)
- [ ] Tables properly formatted (if used)
- [ ] Consistent formatting throughout
- [ ] Cross-references maintained
- [ ] Technical accuracy preserved
- [ ] Style guide compliance maintained

## Common Pitfalls

1. **Medium Mismatch** - Converting prose to tables in whitepapers, excessive tables in marketing, complex formatting in Slack
2. **Over-Condensation** - Removing essential context, making information unclear, sacrificing clarity for brevity
3. **Lost Information** - Missing essential details, inaccurate examples, technical inaccuracy
4. **Poor Organization** - Breaking logical flow, fragmenting related content, breaking narrative flow for prose docs
5. **Inconsistent Formatting** - Inconsistent table structures, terminology, formatting
6. **Meaning Changes** - Altered meaning, lost precision, technical inaccuracy, introduced ambiguity

## Success Metrics

Successfully compacted document should:
1. **Reduce size by 50%+** - Word/line/token count reduced significantly
2. **Maintain clarity** - Still clear and understandable
3. **Preserve completeness** - All essential details retained
4. **Improve scannability** - Easier to find specific information
5. **Maintain accuracy** - No information corrupted or lost
6. **Preserve precision** - Technical accuracy and meaning unchanged

## Examples

### Example 1: Architecture Description

**Before:**
```markdown
The L0 architecture serves to partition data collection strategies by clearly separating 
three distinct types of telemetry based on how data is generated and captured. This 
partitioning enables each work stream to be architected, optimized, and processed according 
to its unique characteristics. The architecture also establishes clear architectural 
boundaries that define the scope and characteristics of each work stream, which guides 
deeper architectural decisions in L1, L2, and L3 layers.
```

**After:**
```markdown
The L0 architecture partitions data collection into three telemetry types based on generation 
and capture patterns. This enables work stream-specific optimization and guides L1-L3 
decisions.
```

### Example 2: Whitepaper (Maintain Prose)

**Before:**
```markdown
The Technical Health Score framework represents a comprehensive approach to measuring 
platform health through instrumented telemetry. This framework enables organizations to 
proactively monitor platform complexity, usage patterns, and stability metrics. The 
framework provides early warning indicators of technical debt and architectural issues 
that could impact customer success.
```

**After:**
```markdown
The Technical Health Score framework measures platform health through instrumented 
telemetry, enabling proactive monitoring of complexity, usage patterns, and stability. 
It provides early warning indicators of technical debt and architectural issues.
```

**Note:** Whitepapers focus on language efficiency and depth reduction, NOT conversion to tables.

### Example 3: Slack Message (Extreme Efficiency)

**Before:**
```markdown
Hi team, I wanted to let you know that we have completed the analysis of the Technical 
Health Score framework implementation. The analysis shows that we have successfully 
achieved our target metrics for platform health monitoring. We are now ready to proceed 
with the next phase of the project.
```

**After:**
```markdown
THS framework analysis complete. Target metrics achieved. Ready for next phase.
```

## Best Practices

1. **Identify medium first** - Determine document type and audience before selecting strategies
2. **Match strategy to medium** - Use appropriate techniques for each document type
3. **Compact after completion** - Only compact when document is complete
4. **Preserve essential details** - Never remove critical information
5. **Maintain accuracy** - Verify all information remains correct
6. **Preserve narrative flow** - For prose-based documents, maintain sentence structure
7. **Review thoroughly** - Check compaction quality and medium alignment
8. **Maintain style guide compliance** - Preserve voice and style requirements

───────────────────────────────────────────────────────────────────────────────

## Rules Summary

* Reduce document size by 50% or more while preserving clarity
* Align compaction strategy with document's target audience and medium
* Use efficient expression techniques (active voice, precise language, parallel structure)
* Apply structural optimization (lists, tables, headings) when appropriate
* Reduce depth strategically without losing essential information
* Streamline content by removing redundancy and filler
* Optimize visual elements (diagrams, tables, code blocks)
* Validate compacted content maintains clarity and essential information
* Match compaction level to document type and audience needs

───────────────────────────────────────────────────────────────────────────────

## Usage

**Invocation:** When Technical Writing Author or Technical Writing Reviewer identifies a document needing compaction:

1. **First:** Identify document medium, audience, and purpose
2. **Then:** Select appropriate compaction strategies based on medium
3. **Apply:** Language efficiency (always), structural optimization (when medium-appropriate), depth reduction (always)
4. **Verify:** Medium alignment, narrative flow (for prose documents), information preservation

**Remember:** Not all compaction techniques apply to all document types. Always match strategy to medium.
