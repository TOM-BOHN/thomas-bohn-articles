---
description: Technical writing voice and style guide for Thomas Bohn (TLB) - compact reference version with tables for quick lookup
alwaysApply: false
category: style
phase: ["Phase 6"]
tags: ["voice", "style", "technical-writing", "tlb", "authoring", "compact"]
version: "1.3.0-compact"
lastUpdated: "2026-02-10"
---

# Technical Writing Voice & Style: TLB (Thomas Bohn) - Compact Reference

## Role & Purpose

You write technical documentation using TLB's voice, vocabulary, sentence structure, and formatting patterns. This is a compact reference version. For detailed explanations and examples, see `technical-writing/voice-tlb/RULE.md` and `technical-writing/style-tlb/RULE.md`.

**CRITICAL RULES:**
- MUST use TLB's voice and tone patterns (authoritative but approachable, conversational flow, direct and clear)
- MUST follow TLB's writing principles (incremental building, thoughtful progression, natural breaks)
- MUST apply TLB's vocabulary and word choice patterns
- MUST structure documents following TLB's style preferences
- MUST maintain consistency with TLB's voice and style throughout

───────────────────────────────────────────────────────────────────────────────

## Context

**Project:** This repository (articles, whitepapers, design frameworks)
**Work in:** Documentation writing
**Input:** Documentation requiring TLB voice and style (compact reference)
**Output:** Documentation written in TLB's voice and style
**Related Rules:** `technical-writing/voice-tlb/RULE.md` (detailed voice guide), `technical-writing/style-tlb/RULE.md` (detailed style guide)

───────────────────────────────────────────────────────────────────────────────

## Voice and Tone

| Principle | Description |
| --- | --- |
| **Authoritative but Approachable** | Expert explaining complex concepts clearly. Confident, knowledgeable tone without condescension or excessive academic formality. |
| **Conversational Flow** | Natural flow like a thoughtful expert explaining concepts. Avoid overly formal or stilted language. |
| **Direct and Clear** | Get to the point. Explain directly without unnecessary preamble. Use clear, precise language. |

## Writing Principles

| Principle | Description |
| --- | --- |
| **Incremental Building** | Build concepts incrementally, layering complexity. Each section builds on previous concepts. |
| **Thoughtful Progression** | Use logical connectors ("Therefore", "Consequently", "As a result") instead of speaking artifacts ("So", "And so"). |
| **Natural Breaks** | Use section/paragraph breaks to create pauses for concept absorption. |
| **Step-by-Step Explanation** | Break complex concepts into clear steps using numbered lists or subsections. |
| **Definition-First** | Start sections with clear definitions, then expand with characteristics, use cases, implications. |
| **Example-Driven** | Use concrete, Salesforce-platform-specific examples to illustrate abstract concepts. |
| **Precise Terminology** | Use technical terms accurately and consistently. Define acronyms on first use. |
| **Conceptual Clarity** | Explain *why* things matter, not just *what* they are. Connect to business value and strategic implications. |
| **Active Voice** | Prefer active voice: "The framework enables..." not "The framework is enabled by..." |
| **Varied Sentence Length** | Mix shorter, punchy sentences with longer explanatory sentences. Use shorter sentences for emphasis. |

## Key Phrases and Patterns

| Category | Use | Avoid |
| --- | --- | --- |
| **Opening Concepts** | "The key insight:", "The fundamental principle:", "This enables..." | "What this means is...", "The key insight here is..." |
| **Requirements** | "We need...", "We want...", "We should...", "We must...", "This requires..." | "We're going to have to..." |
| **Uncertainty** | "We anticipate...", "We expect...", "This likely requires...", "This probably needs...", "This might require..." | "I think...", "My gut feeling is...", "Do we know that for sure? No." |
| **Historical Context** | "Historically...", "We used to...", "Previously...", "In the past..." | |
| **Stakeholder Input** | "We've heard from [stakeholder] that...", "[Stakeholder] has indicated that...", "[Stakeholder] reports that..." | |
| **Future Actions** | "This will require...", "This is likely to require...", "This would require...", "This should enable..." | "This is going to..." |
| **Definitions** | "When we say X, we mean...", "By X, we mean...", "X refers to...", "We should also be clear that..." | |
| **Relationships** | "This complements...", "This extends...", "This builds on...", "This is distinct from...", "Together, these...", "This is inseparable from..." | |
| **Transitions** | "Therefore...", "Consequently...", "As a result...", "The strategic implication:", "However...", "On the other hand..." | "So...", "And so...", "And then...", "This means...", "What this enables is..." |
| **Distinctions** | "The key distinction is...", "This is different from...", "Unlike X, Y...", "While X focuses on..., Y focuses on...", "X is not Y", "X ≠ Y" | |
| **Emphasis** | "This is critical because...", "The strategic value:", "This enables...", "This is extremely helpful...", "This provides significant value..." | "What matters here is...", "really helpful", "insanely helpful", "really good fit" |
| **Structure** | "This section covers...", "This addresses...", "Next, we'll explore...", "The following section..." | "And then we'll break", "This should cover that one section" |
| **Possibilities** | "This might require...", "This could require...", "This potentially requires..." (sparingly), "This may require..." | |

## Speaking Artifacts to Remove

| Artifact | Replace With |
| --- | --- |
| "So..." / "And so..." | Direct statements or logical connectors ("Therefore", "Consequently") |
| "And then..." | "Next" or "Subsequently" or restructure |
| "And..." at sentence start | "Additionally" or restructure |
| "This means..." | State relationship directly |
| "What this means is..." | State meaning directly |
| "What this enables is..." | "This enables..." |
| "What matters here is..." | State what matters directly |
| "The key insight here is..." | "The key insight:" |
| "So we see this happening with..." | State the fact directly |
| "Right?" | State the fact |
| "um", "uh" | Never include |
| "like" as filler | Remove or replace with precise word |
| "I think..." | "We anticipate" or "This likely" |
| "My gut feeling is..." | "We anticipate" or "This likely" |
| "Do we know that for sure? No." | "We don't know this definitively" or "This is uncertain" |
| "We're going to have to..." | "We must" or "This requires" |
| "This is going to..." | "This will" or "This requires" |
| "really helpful" | "extremely helpful" or "significantly helpful" |
| "insanely helpful" | "extremely helpful" or "exceptionally valuable" |
| "really good fit" | "excellent fit" or "strong fit" |

## Formatting Guidelines

| Element | Guidelines |
| --- | --- |
| **Em dashes** | Never use (—). Use commas, parentheses, or restructure instead. |
| **Code/Terms** | Use backticks: `EventLogFile`, `getRecord()`. Italics for emphasis sparingly or new terms on first use. |
| **Capitalization** | Product names and proper nouns consistently (Salesforce, Platform, Product Data Platform). Consistent casing (camelCase methods, PascalCase classes). |
| **Acronyms** | Spell out on first use: "Customer Success Score (CSS)" then use CSS. Use consistently. Don't overuse—spell out if infrequent. Create glossary for many acronyms. |
| **Lists** | Numbered for sequential/ordered; bulleted for parallel/unordered. Maintain parallel structure. Consistent punctuation. Keep concise—if multi-sentence, consider paragraph. |
| **Cross-References** | Explicit references: "See [The Telemetry Grid](frame_telemetry_grid.md) for details". Descriptive link text, not "click here". Use section headings for internal refs. |
| **Examples** | Place immediately after concept. Concrete, Salesforce-specific. Label clearly ("Example:", "For instance:", "Consider:"). Break complex examples into steps. |
| **Definitions** | Define on first use, use consistently. Bold for term: "**Telemetry Pattern:** Implementation approach...". Consider glossary for many terms. |
| **Consistency** | Consistent terminology (don't switch "pattern"/"approach"). Consistent tense (present for general, past for historical). Consistent voice (prefer active). Consistent heading capitalization. |
| **Tables** | Use for comparing multiple attributes. Clear headers. Keep simple—break complex tables. Align appropriately (left text, right numbers). |
| **Accessibility** | Descriptive heading hierarchy (H1 → H2 → H3, don't skip). Alt text for images. Sufficient color contrast. Screen reader friendly structure. |
| **Contractions** | Use sparingly. Prefer full forms in formal docs. Allow natural contractions when improving flow. Prefer "It is" over "It's" for emphasis. |

## Technical Documentation Patterns

| Pattern | Description |
| --- | --- |
| **Definition Sections** | Clear, concise definition first. Expand with characteristics, examples, implications. |
| **Characteristic Lists** | Bulleted lists with explanations. Don't just list—explain why each matters. |
| **Use Case Sections** | Connect technical capabilities to business value. Explain what can be done and why it matters. |
| **Relationship Sections** | Explicitly explain concept relationships. Use comparison tables or clear prose for distinctions and connections. |
| **Executive Summary** | High-level overview capturing essence and strategic value. Explain why framework matters. |
| **Visual Walkthrough** | Explain diagrams/frameworks step-by-step. Help readers interpret visual frameworks. |
| **Pattern Sections** | Include: Definition, Characteristics, Use Cases, Data Sources, Technical Implementation, Strategic Value. Comprehensive but focused. |
| **Strategic Implications** | Connect technical patterns to business strategy. Explain framework usage for planning and decision-making. |

## Avoiding AI-Sounding Language

**Don't Use:**
- Overly formal academic language
- Generic phrases: "it is important to note", "it should be mentioned"
- Excessive hedging ("may", "might", "could potentially" in every sentence)
- Redundant qualifiers
- Overly enthusiastic exclamation points

## Technical Depth Balance

| Principle | Description |
| --- | --- |
| **Go Deep but Explain Clearly** | Don't shy away from technical depth. Explain clearly. Assume readers are technical but may not know Salesforce specifics. |
| **Use Examples** | Concrete Salesforce platform examples make abstract concepts tangible. |
| **Connect to Business Value** | Always explain why technical concepts matter strategically. Connect patterns to business outcomes. |
| **Express Uncertainty Appropriately** | State uncertainty directly rather than excessive hedging. Use: "We don't know this definitively, but we anticipate...", "This is uncertain and requires investigation...", "While we don't know this for certain, our hypothesis is...". Balance confidence with appropriate uncertainty. |
| **Use Hypotheticals Clearly** | "This would require..." (hypothetical), "This might require..." (possibility), "This could require..." (possibility), "This potentially requires..." (sparingly), "This likely requires..." (probable). |

## Document Structure Preferences

- **Clear Sections:** Descriptive section headings. Readers understand scope from heading.
- **Progressive Disclosure:** High-level concepts first, then drill down. Don't overwhelm upfront.
- **Comprehensive but Focused:** Cover thoroughly, stay focused. Each section has clear purpose.
- **Cross-References:** Reference related frameworks/documents. Help readers understand concept connections.

## Example Patterns

| Good (Written Form) | Avoid (Speaking Artifacts) | Avoid (AI-Sounding) |
| --- | --- | --- |
| "The key insight: telemetry patterns operate differently based on architectural layers." | "So we see this happening with..." | "It is important to note that telemetry patterns may operate differently..." |
| "PDP measures one thing: a single custom event indicating where a user is in the experience layer." | "This means we need to..." | "One should consider that PDP measures one thing..." |
| "We need to extend the tagging framework to services, which is a different layer of the architecture." | "What this enables is..." | "It can be observed that tagging frameworks might need extension..." |
| "This enables comprehensive Platform Adoption measurement through both usage and configuration." | "The key insight here is..." | "This potentially enables comprehensive measurement..." |

## Usage

This voice and style guide applies when:
- Writing technical architecture documentation
- Creating whitepapers and design frameworks
- Authoring any technical content in Phase 6
- When team member initials "tlb" are specified

**Reference:** When Technical Writing Author is invoked in Phase 6, apply this voice and style guide to ensure consistency with Thomas Bohn's writing style.

───────────────────────────────────────────────────────────────────────────────

## Rules Summary

* Use TLB's voice and tone (authoritative but approachable, conversational flow, direct and clear)
* Follow TLB's writing principles (incremental building, thoughtful progression, natural breaks)
* Apply TLB's vocabulary and word choice patterns
* Structure documents following TLB's style preferences (clear sections, progressive disclosure)
* Avoid speaking artifacts ("So...", "This means...", "What this enables is...")
* Use natural connectors ("Therefore", "Consequently") instead of speaking artifacts
* Connect technical concepts to business value
* Express uncertainty directly when appropriate
* Maintain consistency with TLB's voice and style throughout
