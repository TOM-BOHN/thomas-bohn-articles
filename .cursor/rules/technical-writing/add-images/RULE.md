---
description: Guide for adding images to technical documentation with hidden HTML comment descriptions for NotebookLM infographic generation
alwaysApply: false
category: implementation
phase: ["Phase 6"]
tags: ["authoring", "technical", "documentation", "images", "accessibility", "notebooklm"]
version: "1.0.0"
lastUpdated: "2026-01-27"
---

# Technical Writing: Adding Images with Hidden Descriptions

## Role & Compliance

This rule guides the process of adding images to technical documentation with hidden HTML comment descriptions that will be used by NotebookLM to generate infographics. The descriptions serve dual purposes: (1) as hidden text blocks describing the image for accessibility and documentation maintenance, and (2) as prompts for NotebookLM to generate the actual infographic.

**CRITICAL RULES:**
- MUST ensure images are mutually exclusive (no duplicate visualizations)
- MUST include comprehensive HTML comment descriptions for NotebookLM
- MUST place images immediately after contextual introduction text
- MUST follow project naming conventions for image files and paths
- MUST validate that descriptions include all required components (diagram type, layout, elements, visual connections, communication goal)

## Context

**Project:** This repository (articles, whitepapers, design frameworks)
**Work in:** When Technical Writing Author (or any author) adds images to documentation
**Input:** Documentation content requiring visual representation
**Output:** Markdown image syntax with unified hidden HTML comment block (Image Description + Visual Strategy)
**Tool Integration:** NotebookLM uses descriptions to generate infographics
**Visualization Strategies:** Multiple strategies may exist (e.g., Simple Whiteboard Style in `.cursor/resources/technical-writing/add-images/visualization-strategy-simple.md`)

───────────────────────────────────────────────────────────────────────────────

## When to Add Images

### Strategic Placement Criteria

Add images when the content would benefit from visual representation:

1. **Framework Introductions** - When introducing a new framework, model, or conceptual structure
   - Example: After introducing the Telemetry Grid Framework, add a 2×2 matrix diagram
   - Example: After introducing the Problem Space Framework, add a diagram showing the four questions

2. **Complex Relationships** - When explaining relationships between multiple concepts, systems, or components
   - Example: Venn diagrams showing overlapping concepts (Product Adoption vs Technical Health)
   - Example: Comparison diagrams showing side-by-side differences (Traditional Focus vs New Exploration)

3. **Process Flows** - When describing workflows, timelines, or sequential processes
   - Example: Customer lifecycle phases showing progression over time
   - Example: Four-wave evolution roadmap with overlapping timelines

4. **Architectural Diagrams** - When explaining system architecture, component relationships, or technical structures
   - Example: Three initiatives diagram showing interconnected pillars
   - Example: Telemetry toolkit ecosystem showing unified governance

5. **Value Propositions** - When demonstrating value to multiple stakeholders or showing benefits
   - Example: Platform Adoption value proposition showing three stakeholder sections
   - Example: Organizational enablers quadrant layout

6. **Strategic Choices** - When comparing options or showing decision frameworks
   - Example: Strategic choice diagram comparing "Bigger Tent" vs "Specialized Tools"

### Mutual Exclusivity Principle

**CRITICAL:** Images must be mutually exclusive—they should not repeat topics or aspects already visualized elsewhere in the document.

**Before adding an image:**
- Review existing images in the document to ensure no overlap
- Each image should address a unique aspect or perspective
- If a concept is already visualized, find a different angle or skip visualization
- Consider the document holistically—images should complement each other, not duplicate

**Example of good mutual exclusivity:**
- Image 1: Telemetry Grid Framework (2×2 matrix showing service types and usage patterns)
- Image 2: Platform Adoption vs Technical Health comparison (distinct concepts comparison)
- Image 3: Three Initiatives overview (solution architecture)
- Each addresses a different aspect without overlap

───────────────────────────────────────────────────────────────────────────────

## Image Format Structure

### Standard Format

```markdown
![Alt Text](path/to/image.png)

<!-- Image Description: [Detailed description for NotebookLM] Visual Strategy: [Style instructions if visualization strategy is defined] -->
```

### Format Rules

1. **Markdown Image Syntax** - Use standard markdown image syntax: `![Alt Text](path/to/image.png)`
   - Alt text should be descriptive and match the image's purpose
   - Path should follow project conventions (typically `images/article_name/image_name.png`)

2. **Unified HTML Comment Block** - Immediately follow the image with a single unified HTML comment block containing:
   - **Image Description first** - Describes what to visualize (content, layout, elements, communication goal)
   - **Visual Strategy second** - Describes how to visualize it (style, colors, aesthetic) - only if visualization strategy is defined
   - Format: `<!-- Image Description: [description] Visual Strategy: [strategy instructions] -->`
   - If no visualization strategy is defined, use only: `<!-- Image Description: [description] -->`
   - The unified block will be used by NotebookLM to generate the infographic
   - The block remains as hidden text for accessibility and documentation maintenance

3. **Placement** - Place images immediately after the text that introduces the concept
   - Images should appear right after the paragraph or section that introduces the visual concept
   - Don't separate the image from its contextual introduction with intervening text

### Visualization Strategy Detection

**BEFORE adding images, you MUST:**

1. **Check Document Header** - Look for hidden HTML comment blocks in the document header:
   - `<!-- Visualization Strategy: ... -->` - Indicates which strategy the document uses
   - `<!-- Visual Strategy: ... -->` - Contains the style instructions to apply

2. **If Strategy Found:**
   - Extract the Visual Strategy block content
   - Include it in each image's unified HTML comment block (after Image Description)

3. **If Strategy NOT Found:**
   - **ASK THE USER:** "What visualization style should be used for images in this document? (e.g., Simple Whiteboard Style, Professional Technical Style, etc.)"
   - **DO NOT proceed** until the user specifies a visualization strategy
   - If user indicates no specific style needed, proceed without Visual Strategy block

4. **Multiple Strategies Support:**
   - Different documents may use different visualization strategies
   - Check `.cursor/resources/technical-writing/add-images/` for available strategy files (e.g., `visualization-strategy-simple.md`)
   - Each strategy may have different style instructions
   - Always use the strategy specified in the document header

───────────────────────────────────────────────────────────────────────────────

## Description Structure for NotebookLM

### Character Limit

**CRITICAL:** Image descriptions MUST stay within character limits to ensure they fit in context windows. **Tool/system limitations enforce a hard cutoff at 5,000 characters for HTML comment blocks.**

- **Image Description:** Maximum ~3,500 characters (when Visual Strategy is included)
- **Visual Strategy:** Standard block (~1,200 characters) - included separately when strategy is defined
- **Total Combined:** Maximum 5,000 characters per image comment block (Image Description + Visual Strategy) - **HARD LIMIT**

**MANDATORY VALIDATION PROCESS:**
After drafting the Image Description block, the rule MUST:
1. **Count characters** in the complete unified HTML comment block (including `<!--` and `-->` markers)
2. **If character count exceeds 5,000 characters:** Redraft the Image Description block to be more concise
3. **Continue redrafting** until the total character count falls below 5,000 characters
4. **Verify final count** before finalizing the image addition

**Guidelines for staying within limits:**
- Focus on essential elements and relationships
- Use concise language; avoid redundant descriptions
- Reference the source document for detailed context (NotebookLM will have access to the document)
- Prioritize layout, key elements, and communication goal over exhaustive detail
- Use abbreviations where clear (e.g., "L0-L3" instead of "Level 0 through Level 3")
- When Visual Strategy is included (~1,200 chars), Image Description should be ~3,500 chars or less
- When no Visual Strategy, Image Description can be up to 5,000 characters
- **Remove redundant details** that are already covered in the Visual Strategy block
- **Condense repetitive phrasing** while maintaining clarity

### Description Components

The image description must be comprehensive enough for NotebookLM to generate an accurate infographic while staying within the character limit. Include:

1. **Diagram Type** - Start with the type of diagram
   - Examples: "A 2×2 matrix diagram...", "A timeline diagram...", "A comparison diagram...", "A Venn diagram..."

2. **Layout and Organization** - Describe how elements are arranged
   - Examples: "organized as three connected boxes", "arranged horizontally", "showing four quadrants", "flowing from left to right"

3. **Specific Elements** - List all key elements, labels, and text that must appear
   - Include exact labels, section names, and text content
   - Specify positioning (left, right, top, bottom, center)
   - Include numbered items or lists if applicable

4. **Visual Elements** - Describe visual connections and relationships
   - Arrows, connections, flow directions
   - Color coding or visual distinctions
   - Grouping or containment relationships
   - Icons or visual symbols

5. **Communication Goal** - Explain what the diagram communicates
   - The key message or insight
   - The relationship or comparison being shown
   - The strategic or conceptual purpose

### Description Template

**Without Visualization Strategy:**
```
<!-- Image Description: A [diagram type] showing [main concept]. The diagram is organized as [layout description]. [Element 1] positioned [location] showing [content] with [visual details]. [Element 2] positioned [location] showing [content] with [visual details]. [Connections/relationships] show [what they communicate]. [Visual elements] emphasize [key message]. The overall visual communicates [communication goal]. -->
```

**With Visualization Strategy:**
```
<!-- Image Description: A [diagram type] showing [main concept]. The diagram is organized as [layout description]. [Element 1] positioned [location] showing [content] with [visual details]. [Element 2] positioned [location] showing [content] with [visual details]. [Connections/relationships] show [what they communicate]. [Visual elements] emphasize [key message]. The overall visual communicates [communication goal]. Visual Strategy: [Insert the Visual Strategy block content from document header here] -->
```

**Note:** Image Description comes FIRST, Visual Strategy comes SECOND. This order ensures the content/subject matter is established before style constraints are applied.

### Description Examples

**Note:** These examples demonstrate various diagram types and layout patterns. Examples 6-9 are sourced from `docs/resources/external_resources/technical_health_score/salesforce_blog__technical_health_interview.md` and demonstrate the Simple Whiteboard Visual Style strategy with full consistency standards compliance. These examples showcase:
- **Problem-Solution Framework** (Example 6): Vertical stacking layout pattern
- **Layered Architecture** (Example 7): Bottom-to-top layered architecture pattern
- **ML Pipeline** (Example 8): Horizontal flow layout pattern for processes
- **Before-After Results** (Example 9): Three-section layout pattern for comparisons

#### Example 1: Framework Matrix (Without Visualization Strategy)

```markdown
![Telemetry Grid Framework](images/1_1_defining_technical_health/1_1_02_telemetry_grid.png)

<!-- Image Description: A 2x2 matrix diagram illustrating different dimensions of product and platform usage, categorized by Service Type and Usage focus. The vertical axis, labeled "Service Type," divides into two rows: "SaaS (Software)" at the top and "PaaS (Platform)" at the bottom. The horizontal axis, labeled "Usage," divides into two columns: "Adoption" on the left and "Health" on the right. The four quadrants of the matrix are as follows: Top-Left (SaaS × Adoption) labeled "Product Adoption" with a light green background; Top-Right (SaaS × Health) labeled "Delivery Quality" with a light beige/yellow background; Bottom-Left (PaaS × Adoption) labeled "Platform Adoption" with a light pink background; Bottom-Right (PaaS × Health) labeled "Technical Health" with a light yellow background. The diagram visually represents the intersection of these categories, defining specific areas of focus for different types of services and usage metrics. -->
```

#### Example 1b: Framework Matrix (With Simple Whiteboard Visualization Strategy)

```markdown
![Telemetry Grid Framework](images/1_1_defining_technical_health/1_1_02_telemetry_grid.png)

<!-- Image Description: A 2x2 matrix diagram illustrating different dimensions of product and platform usage, categorized by Service Type and Usage focus. The vertical axis, labeled "Service Type," divides into two rows: "SaaS (Software)" at the top and "PaaS (Platform)" at the bottom. The horizontal axis, labeled "Usage," divides into two columns: "Adoption" on the left and "Health" on the right. The four quadrants of the matrix are as follows: Top-Left (SaaS × Adoption) labeled "Product Adoption"; Top-Right (SaaS × Health) labeled "Delivery Quality"; Bottom-Left (PaaS × Adoption) labeled "Platform Adoption"; Bottom-Right (PaaS × Health) labeled "Technical Health". The diagram visually represents the intersection of these categories, defining specific areas of focus for different types of services and usage metrics. Visual Strategy: Create this infographic using a **whiteboard visual style** with hand-drawn/sketch aesthetic where lines and shapes have a slightly irregular, informal quality (avoid perfect geometric precision), and consider a subtle dotted line border around the entire image. Use a strictly limited color palette: Black (#000000) for all outlines and text, White (#FFFFFF) background, Light Blue (#ADD8E6) accent used sparingly only for icon fills and subtle highlights—no other colors. Use simple conceptual iconography with minimalist line art icons such as gears, clouds, bar charts, funnels, speedometers, compass roses, and simple human figures, avoiding photorealistic or highly detailed illustrations. Typography should use bold, highly readable hand-drawn style for headers with clear, concise body text that complements illustrations. Organize layout into distinct labeled sections (circular or boxed), use clear arrows for flow, maintain visual hierarchy, and keep uncluttered with adequate white space. Focus on communicating ONE main idea clearly, avoiding overwhelming detail and prioritizing clarity over completeness. Keep the design approachable, easy to understand, and feeling like a collaborative whiteboard session. -->
```

#### Example 2: Comparison Diagram

```markdown
![Platform Adoption vs Technical Health](images/4_1_pdp_for_ths/4_1_09_platform_adoption_vs_technical_health.png)

<!-- Image Description: A comparison diagram showing the distinction between Platform Adoption and Technical Health. The left side shows "Platform Adoption" with characteristics: "Am I using the right tools?", "How much of the platform am I using?", "Indicator of complexity", "Indicator of operational hygiene", "Uses PDP out-of-the-box", "MAU-based metrics", "UI-based tools". The right side shows "Technical Health" with characteristics: "Am I using it well?", "Performance questions", "Reliability questions", "Technical debt questions", "Requires deeper telemetry", "Session-based metrics", "Service-based measurement". An arrow or visual separator between them emphasizes they are related but distinct concepts. The diagram includes examples: "Platform Adoption: Customer uses Service Center monthly" vs "Technical Health: Customer's Apex code performs efficiently". The visual communicates that Platform Adoption is a prerequisite indicator but doesn't answer Technical Health questions. -->
```

#### Example 3: Process Timeline

```markdown
![Customer Lifecycle Phases](images/1_1_defining_technical_health/1_1_01_customer_lifecycle_phases.png)

<!-- Image Description: A horizontal timeline or journey map diagram illustrating six customer lifecycle phases where Technical Health needs evolve, reflecting the transformation from administrating software to building on a platform. The diagram flows from left to right, showing progression through an organization's Salesforce journey. Each phase is represented as a distinct stage with its own visual element (icon, box, or section) and includes: Phase 1 "Onboarding" positioned at the far left, emphasizing speed to value and foundation setup with minimal Technical Health relevance (configuration health only); Phase 2 "Product Adoption" showing user trust and out-of-the-box feature adoption with low Technical Health relevance; Phase 3 "Platform Development" positioned in the middle-left, highlighting the transition from configuring software to building custom applications (Apex, LWC, custom objects) with moderate to high Technical Health relevance; Phase 4 "Growth & Scale" showing team expansion and code governance with high Technical Health relevance; Phase 5 "Continuous Optimization" emphasizing Six Sigma approach, chokepoint identification, and trend analysis with high Technical Health relevance across all dimensions; Phase 6 "Peak Performance" positioned at the far right, highlighting resilience during critical events with critical Technical Health relevance. Each phase includes visual indicators showing increasing Technical Health relevance (perhaps color intensity or size), and the diagram may include a visual representation of the transformation from Product Adoption (left side) to Platform Development (right side). The overall visual communicates how Technical Health engagement evolves from minimal relevance during Product Adoption phases to critical relevance as organizations mature into Platform Development and optimization phases. -->
```

#### Example 4: Value Proposition

```markdown
![Platform Adoption Value Proposition](images/4_1_pdp_for_ths/4_1_14_platform_adoption_value.png)

<!-- Image Description: A value proposition diagram showing how Platform Adoption measurement delivers value to different stakeholders. The diagram is organized into three stakeholder sections: (1) "Reliability Engineering" on the left showing value items: "Tool usage visibility", "Service heat maps", "Customer segmentation", "Operational insights" with icons or visual elements representing each value; (2) "Technical Health" in the center showing value items: "Complexity indicators", "Operational maturity signals", "PaaS engagement metrics", "Early warning signals" with connection arrows showing how Platform Adoption feeds into Technical Health; (3) "Customer Success" on the right showing value items: "Customer segmentation", "Support strategy", "Maturity correlation", "Risk identification" with visual connections. The diagram includes a central "Platform Adoption" hub connecting to all three stakeholders, and shows how Platform Adoption acts as a "leading indicator" (shown as an arrow or pathway) that complements deeper Technical Health measurement. The visual uses color coding and icons to make the value propositions clear and memorable. -->
```

#### Example 5: Strategic Architecture

```markdown
![PDP for THS: Three Major Initiatives](images/4_1_pdp_for_ths/4_1_01_three_initiatives_overview.png)

<!-- Image Description: A high-level overview diagram showing the three major initiatives required to adapt PDP for Technical Health instrumentation. The diagram is organized as three connected boxes or pillars: (1) "Initiative 1: PFT Evolution" on the left showing Product Feature Taxonomy hierarchy with metadata extensions, labeled "Extend PFT for Technical Health features"; (2) "Initiative 2: Platform Adoption Measurement" in the center showing UI-based tools and developer personas, labeled "Measure developer/architect tool usage"; (3) "Initiative 3: PDP Evolution" on the right showing APIs, logs, and derived metrics, labeled "Extend to deeper services". Arrows or connections between the initiatives show how they build upon each other. The diagram includes a callout at the bottom explaining: "Platform Adoption ≠ Technical Health" with a visual distinction. The overall visual communicates the comprehensive scope of work required and how the initiatives are interconnected. -->
```

#### Example 6: Problem-Solution Framework (With Simple Whiteboard Visualization Strategy)

```markdown
![Technical Health Score: Five Problem-Solution Framework](images/salesforce_blog_technical_health_interview/five_problem_solution_framework.png)

<!-- Image Description: A problem-solution framework diagram showing the five end-to-end problems and their corresponding solutions for defining Technical Health. The diagram uses vertical stacking layout pattern (top-to-bottom) with five problem-solution pairs arranged sequentially. Each pair is contained within a boxed section (rounded rectangle with slightly irregular edges) as the primary container type. The five pairs are: (1) Top pair: "Data Discoverability Gap" positioned on the left within its boxed section showing signals spread across multiple systems, with solution "Central data platform with 12-month history" positioned on the right within the same boxed section; (2) Second pair: "Data Consistency Gap" showing no standard framework, with solution "5-Pillar Framework (Security, Efficiency, Operational Excellence, Customization, Observability)" on the right; (3) Third pair: "Lack of Common Health Currency" showing health not quantified, with solution "1-100 Score with normalization" on the right; (4) Fourth pair: "Scattered toolset" showing 30+ tools, with solution "Centralizing metrics with deep links" on the right; (5) Bottom pair: "Lack of prioritization framework" showing no action guidance, with solution "Score with risk areas and recommendations" on the right. Each problem-solution pair is connected with a straight arrow (with slightly irregular hand-drawn quality, not perfectly straight) showing the transformation from problem to solution—one arrow per problem-solution pair. One minimalist line art icon per problem-solution pair placed at the start of each boxed section (icons such as gears, clouds, bar charts, funnels, or speedometers to represent each concept). Typography hierarchy: Main title "Five Problem-Solution Framework" bold hand-drawn style 1.5x larger than section headers; problem and solution labels as section headers bold hand-drawn style 1.2x larger than body text; descriptive text as body text clear and concise. Maintain consistent spacing: minimum 1.5x element height between major boxed sections (between each problem-solution pair), minimum 1x element height between problem and solution within each pair, adequate white space (at least 20% of image area). Visual hierarchy: Largest elements for main title, medium elements for problem-solution pairs (boxed sections), smallest elements for descriptive details within each pair. Maximum 5 major visual elements (the five problem-solution pairs). The diagram visually communicates how Technical Health Score addresses each fundamental gap in technical health measurement. Visual Strategy: Create this infographic using a **whiteboard visual style** with hand-drawn/sketch aesthetic where lines and shapes have a slightly irregular, informal quality (avoid perfect geometric precision). MUST include a subtle dotted line border around the entire image. Use a strictly limited color palette: Black (#000000) for all outlines, text, and symbols (including checkmarks, X marks, arrows, and all visual elements)—NO other colors allowed. White (#FFFFFF) background. Light Blue (#ADD8E6) accent used sparingly ONLY for icon fills within circular sections—no other color usage permitted. Use simple conceptual iconography with minimalist line art icons (gears, clouds, bar charts, funnels, speedometers, compass roses, simple human figures), avoiding photorealistic or highly detailed illustrations. Use icons consistently—one icon per major section or concept, placed within circular sections or at the start of boxed sections. Typography hierarchy: Main titles bold hand-drawn style 1.5x larger than section headers; section headers bold hand-drawn style 1.2x larger than body text; body text clear and concise. Use boxed sections (rounded rectangles with slightly irregular edges) as the primary container type for consistency; reserve circular sections only for special emphasis (central hubs, key concepts, North Star elements). Layout patterns: Horizontal flow (left-to-right) for processes/pipelines; vertical stacking (top-to-bottom) for problem-solution pairs/layers; three-section layouts (left-center-right) for comparisons/value propositions; layered architectures (bottom-to-top) for system layers. Use straight arrows with slightly irregular hand-drawn quality (not perfectly straight) to show flow and relationships—one arrow per relationship. Maintain consistent spacing: minimum 1.5x element height between major sections, minimum 1x element height between related sub-elements, adequate white space (at least 20% of image area). Visual hierarchy: Largest elements for main concepts/central hubs, medium for supporting sections, smallest for details/annotations. Maximum 5-7 major visual elements per infographic. Focus on communicating ONE main idea clearly, avoiding overwhelming detail and prioritizing clarity over completeness. Keep the design approachable, easy to understand, and feeling like a collaborative whiteboard session. -->
```

#### Example 7: Layered Architecture (With Simple Whiteboard Visualization Strategy)

```markdown
![Integration Solution: Abstraction Layer with Progressive Disclosure](images/salesforce_blog_technical_health_interview/abstraction_layer_progressive_disclosure.png)

<!-- Image Description: A consolidation architecture diagram showing how 30+ engineering tools are integrated into a single Technical Health Score through an abstraction layer. The diagram uses layered architecture layout pattern (bottom-to-top) with three distinct layers: (1) Bottom layer shows multiple specialized tools (Scale Center, Optimizer, Security Health Check, Event Monitoring, and others) arranged horizontally within boxed sections (rounded rectangles with slightly irregular edges), each measuring partial health signals; (2) Middle layer shows "Abstraction Layer with Progressive Disclosure" as a single boxed section containing three components: "Progressive Roadmap" showing 5-pillar framework foundation, "Drill-Down Architecture" showing three-level navigation (THS Score → Category → Tools/Detail), and "Deep-Linking Architecture" showing context-aware links back to tools; (3) Top layer shows "Technical Health Score" as the unified gateway in a boxed section. Straight arrows with slightly irregular hand-drawn quality (not perfectly straight) show data flow from bottom layer tools through middle abstraction layer to top unified score—one arrow per major flow path. Navigation paths show drill-down capability with arrows. One minimalist line art icon per major component (gears for tools, funnel for abstraction layer, compass for unified score). Typography hierarchy: Main title "Abstraction Layer with Progressive Disclosure" bold hand-drawn style 1.5x larger than layer labels; layer labels as section headers bold hand-drawn style 1.2x larger than body text; component descriptions as body text clear and concise. Maintain consistent spacing: minimum 1.5x element height between layers, minimum 1x element height between components within layers, adequate white space (at least 20% of image area). Visual hierarchy: Largest elements for top layer (unified gateway), medium for middle layer (abstraction), smallest for bottom layer (individual tools). Maximum 3 major visual elements (the three layers). The diagram shows how the abstraction layer eliminates context-switching tax while preserving fidelity through drill-downs and deep links. The visual communicates how consolidation maintains tool functionality while providing unified access. Visual Strategy: Create this infographic using a **whiteboard visual style** with hand-drawn/sketch aesthetic where lines and shapes have a slightly irregular, informal quality (avoid perfect geometric precision). MUST include a subtle dotted line border around the entire image. Use a strictly limited color palette: Black (#000000) for all outlines, text, and symbols (including checkmarks, X marks, arrows, and all visual elements)—NO other colors allowed. White (#FFFFFF) background. Light Blue (#ADD8E6) accent used sparingly ONLY for icon fills within circular sections—no other color usage permitted. Use simple conceptual iconography with minimalist line art icons (gears, clouds, bar charts, funnels, speedometers, compass roses, simple human figures), avoiding photorealistic or highly detailed illustrations. Use icons consistently—one icon per major section or concept, placed within circular sections or at the start of boxed sections. Typography hierarchy: Main titles bold hand-drawn style 1.5x larger than section headers; section headers bold hand-drawn style 1.2x larger than body text; body text clear and concise. Use boxed sections (rounded rectangles with slightly irregular edges) as the primary container type for consistency; reserve circular sections only for special emphasis (central hubs, key concepts, North Star elements). Layout patterns: Horizontal flow (left-to-right) for processes/pipelines; vertical stacking (top-to-bottom) for problem-solution pairs/layers; three-section layouts (left-center-right) for comparisons/value propositions; layered architectures (bottom-to-top) for system layers. Use straight arrows with slightly irregular hand-drawn quality (not perfectly straight) to show flow and relationships—one arrow per relationship. Maintain consistent spacing: minimum 1.5x element height between major sections, minimum 1x element height between related sub-elements, adequate white space (at least 20% of image area). Visual hierarchy: Largest elements for main concepts/central hubs, medium for supporting sections, smallest for details/annotations. Maximum 5-7 major visual elements per infographic. Focus on communicating ONE main idea clearly, avoiding overwhelming detail and prioritizing clarity over completeness. Keep the design approachable, easy to understand, and feeling like a collaborative whiteboard session. -->
```

#### Example 8: ML Pipeline (With Simple Whiteboard Visualization Strategy)

```markdown
![ML Pipeline: Balancing Predictive Power and Explainability](images/salesforce_blog_technical_health_interview/ml_pipeline_actionability.png)

<!-- Image Description: A multi-stage ML pipeline diagram showing how Technical Health Scores are generated with a focus on actionability and explainability. The diagram uses horizontal flow layout pattern (left-to-right) flowing through four sequential stages, each contained within a boxed section (rounded rectangle with slightly irregular edges): (1) "Distribution-Based Normalization" positioned on the far left showing signals being fit to statistical distributions (Log-Normal for latency, Beta for Errors) and normalized to 0-100 scale, creating common math for every metric; (2) "Outcome-Driven Weighting (PLS Regression)" positioned left-center showing weights being trained against historical failure data (Sev1 Incidents, Red Accounts, Cost-to-Serve), with correlation analysis showing which signals matter most; (3) "Dynamic ML-Based Benchmarking" positioned right-center showing peer-based baselines dynamically identified based on scale and complexity, ensuring fair comparisons (enterprise vs enterprise, not enterprise vs nonprofit); (4) "Transparent Aggregation" positioned on the far right showing weighted average roll-up with perfect audit trail capability, allowing drill-down from top-level score to root cause signal. Straight arrows with slightly irregular hand-drawn quality (not perfectly straight) connect each stage to the next, showing sequential flow—one arrow per stage transition. One minimalist line art icon per stage (bar chart for normalization, funnel for weighting, compass for benchmarking, gear for aggregation). Typography hierarchy: Main title "ML Pipeline" bold hand-drawn style 1.5x larger than stage headers; stage headers bold hand-drawn style 1.2x larger than body text; descriptive text as body text clear and concise. Maintain consistent spacing: minimum 1.5x element height between stages, minimum 1x element height between elements within stages, adequate white space (at least 20% of image area). Visual hierarchy: Largest elements for main title, medium elements for stages (boxed sections), smallest elements for details within stages. Maximum 4 major visual elements (the four pipeline stages). The diagram emphasizes the balance between predictive power (statistical rigor) and explainability (transparent drill-down), contrasting with black box deep learning approaches. The visual communicates how the pipeline prioritizes actionability—enabling customers to know exactly why their score changed and what to fix. Visual Strategy: Create this infographic using a **whiteboard visual style** with hand-drawn/sketch aesthetic where lines and shapes have a slightly irregular, informal quality (avoid perfect geometric precision). MUST include a subtle dotted line border around the entire image. Use a strictly limited color palette: Black (#000000) for all outlines, text, and symbols (including checkmarks, X marks, arrows, and all visual elements)—NO other colors allowed. White (#FFFFFF) background. Light Blue (#ADD8E6) accent used sparingly ONLY for icon fills within circular sections—no other color usage permitted. Use simple conceptual iconography with minimalist line art icons (gears, clouds, bar charts, funnels, speedometers, compass roses, simple human figures), avoiding photorealistic or highly detailed illustrations. Use icons consistently—one icon per major section or concept, placed within circular sections or at the start of boxed sections. Typography hierarchy: Main titles bold hand-drawn style 1.5x larger than section headers; section headers bold hand-drawn style 1.2x larger than body text; body text clear and concise. Use boxed sections (rounded rectangles with slightly irregular edges) as the primary container type for consistency; reserve circular sections only for special emphasis (central hubs, key concepts, North Star elements). Layout patterns: Horizontal flow (left-to-right) for processes/pipelines; vertical stacking (top-to-bottom) for problem-solution pairs/layers; three-section layouts (left-center-right) for comparisons/value propositions; layered architectures (bottom-to-top) for system layers. Use straight arrows with slightly irregular hand-drawn quality (not perfectly straight) to show flow and relationships—one arrow per relationship. Maintain consistent spacing: minimum 1.5x element height between major sections, minimum 1x element height between related sub-elements, adequate white space (at least 20% of image area). Visual hierarchy: Largest elements for main concepts/central hubs, medium for supporting sections, smallest for details/annotations. Maximum 5-7 major visual elements per infographic. Focus on communicating ONE main idea clearly, avoiding overwhelming detail and prioritizing clarity over completeness. Keep the design approachable, easy to understand, and feeling like a collaborative whiteboard session. -->
```

#### Example 9: Before-After Results (With Simple Whiteboard Visualization Strategy)

```markdown
![Outcome Validation: Before and After Results](images/salesforce_blog_technical_health_interview/before_after_outcomes.png)

<!-- Image Description: A before-and-after results diagram showing concrete outcomes from Technical Health Score implementation. The diagram uses three-section layout pattern (left-center-right) organized as a comparison showing four key outcome areas, each in a boxed section (rounded rectangle with slightly irregular edges): (1) "Incident Volume Reduction" positioned on the left showing customers moving from Fair to Excellent bucket experiencing 20x reduction in case volume, with visual bars or charts showing the dramatic decrease; (2) "Cost to Serve Reduction" positioned in the center-left showing 35x reduction in support cost-to-serve for customers improving from Fair to Excellent, with cost metrics visualized; (3) "Time to Resolve Issues" positioned in the center-right showing reduction from weeks to hours for CSMs gathering data, with timeline visualization showing the efficiency gain; (4) "Proactive Shift" positioned on the right showing customers using scores to justify refactoring sprints before busy season, flattening support volume curve during peak load, with a graph showing peak load impact. The diagram also shows "The Predictive Link" with statistical correlation visualization (customers with low scores disproportionately represented in Sev1 Incidents, Red Account status, High Cost-to-Serve cohorts) and "Operational Coupling" showing Technical Health as anchor for architect engagements. A callout emphasizes "Excellent Tech Health reduces Sev1 risk by 7.8x". One minimalist line art icon per outcome area (bar chart for volume reduction, speedometer for cost reduction, clock for time reduction, compass for proactive shift). Typography hierarchy: Main title "Before and After Results" bold hand-drawn style 1.5x larger than outcome headers; outcome headers bold hand-drawn style 1.2x larger than body text; metrics and callouts as body text clear and concise. Maintain consistent spacing: minimum 1.5x element height between outcome sections, minimum 1x element height between related elements, adequate white space (at least 20% of image area). Visual hierarchy: Largest elements for main title and callout, medium elements for outcome sections (boxed sections), smallest elements for metrics and details. Maximum 4 major visual elements (the four outcome areas). The visual communicates measurable business impact and validates that Technical Health Score changes both customer behavior and Salesforce decision-making. Visual Strategy: Create this infographic using a **whiteboard visual style** with hand-drawn/sketch aesthetic where lines and shapes have a slightly irregular, informal quality (avoid perfect geometric precision). MUST include a subtle dotted line border around the entire image. Use a strictly limited color palette: Black (#000000) for all outlines, text, and symbols (including checkmarks, X marks, arrows, and all visual elements)—NO other colors allowed. White (#FFFFFF) background. Light Blue (#ADD8E6) accent used sparingly ONLY for icon fills within circular sections—no other color usage permitted. Use simple conceptual iconography with minimalist line art icons (gears, clouds, bar charts, funnels, speedometers, compass roses, simple human figures), avoiding photorealistic or highly detailed illustrations. Use icons consistently—one icon per major section or concept, placed within circular sections or at the start of boxed sections. Typography hierarchy: Main titles bold hand-drawn style 1.5x larger than section headers; section headers bold hand-drawn style 1.2x larger than body text; body text clear and concise. Use boxed sections (rounded rectangles with slightly irregular edges) as the primary container type for consistency; reserve circular sections only for special emphasis (central hubs, key concepts, North Star elements). Layout patterns: Horizontal flow (left-to-right) for processes/pipelines; vertical stacking (top-to-bottom) for problem-solution pairs/layers; three-section layouts (left-center-right) for comparisons/value propositions; layered architectures (bottom-to-top) for system layers. Use straight arrows with slightly irregular hand-drawn quality (not perfectly straight) to show flow and relationships—one arrow per relationship. Maintain consistent spacing: minimum 1.5x element height between major sections, minimum 1x element height between related sub-elements, adequate white space (at least 20% of image area). Visual hierarchy: Largest elements for main concepts/central hubs, medium for supporting sections, smallest for details/annotations. Maximum 5-7 major visual elements per infographic. Focus on communicating ONE main idea clearly, avoiding overwhelming detail and prioritizing clarity over completeness. Keep the design approachable, easy to understand, and feeling like a collaborative whiteboard session. -->
```

## Best Practices

### Description Quality

1. **Be Specific** - Include exact labels, text, and positioning information
2. **Be Complete** - Describe all major elements, not just highlights
3. **Be Clear** - Use precise language about layout, relationships, and visual elements
4. **Be Purposeful** - Explain what the diagram communicates and why it matters

### Image Naming Conventions

1. **Descriptive Names** - Use clear, descriptive filenames that indicate content
   - Good: `1_1_02_telemetry_grid.png`
   - Bad: `image1.png` or `diagram.png`

2. **Consistent Structure** - Follow project naming patterns
   - Format: `[article_number]_[section_number]_[descriptor].png`
   - Example: `4_1_09_platform_adoption_vs_technical_health.png`

3. **Directory Organization** - Organize images in article-specific directories
   - Path structure: `images/[article_name]/[image_name].png`
   - Example: `images/1_1_defining_technical_health/1_1_02_telemetry_grid.png`

### Integration with Content

1. **Contextual Introduction** - Always introduce the concept in text before showing the image
2. **Referential Text** - After the image, continue with text that references or builds on the visual
3. **No Orphaned Images** - Every image should have clear textual context before and after

### NotebookLM Considerations

Remember that the unified HTML comment block will be used by NotebookLM to generate the infographic. The block should:

1. **Provide Complete Context** - Image Description should include enough information about the article's content and the specific concept being visualized
2. **Apply Consistent Style** - Visual Strategy (when present) ensures all images follow the same visual style throughout the document
3. **Order Matters** - Image Description FIRST establishes what to visualize, Visual Strategy SECOND applies how to visualize it
4. **Include Relationships** - Clearly describe how elements relate to each other in the Image Description
5. **Emphasize Key Messages** - Highlight what the diagram should communicate to the reader in the Image Description
6. **Style Consistency** - Visual Strategy ensures all infographics in a document share the same aesthetic, making the document visually cohesive

### Visual Consistency Standards

When a visualization strategy is specified in the document header, **MUST** ensure Image Descriptions comply with that strategy's consistency standards.

**For Simple Whiteboard Visual Style:**
- Reference `.cursor/resources/technical-writing/add-images/visualization-strategy-simple.md` for complete consistency standards
- Key areas to verify: layout patterns, container types, arrow styles, color compliance, typography hierarchy, icon usage, spacing, and element count limits
- See the strategy file's "Consistency Standards Summary" section for critical requirements and common drift areas to avoid

───────────────────────────────────────────────────────────────────────────────

## Checklist

Before finalizing an image addition:

- [ ] **Visualization Strategy Check:** Checked document header for visualization strategy blocks
- [ ] **Strategy Confirmation:** If no strategy found, asked user what visualization style to use (or confirmed none needed)
- [ ] Image placement follows strategic placement criteria
- [ ] Image is mutually exclusive (doesn't duplicate existing visualizations)
- [ ] Markdown image syntax is correct with descriptive alt text
- [ ] Unified HTML comment block immediately follows the image
- [ ] **Block Structure:** Image Description comes FIRST, Visual Strategy comes SECOND (if strategy is defined)
- [ ] **Character Limit:** Total combined (Image Description + Visual Strategy) stays within 5,000 characters (~3,500 chars for Image Description when Visual Strategy included, ~1,200 chars for Visual Strategy) - **HARD LIMIT**
- [ ] **Character Count Validation:** Counted characters in complete unified HTML comment block and verified it is under 5,000 characters
- [ ] **Redrafting if Over Limit:** If initial draft exceeded 5,000 characters, redrafted to be more concise until under limit
- [ ] Image Description includes diagram type, layout, elements, visual connections, and communication goal
- [ ] Visual Strategy block included only if document specifies a visualization strategy
- [ ] Unified block is comprehensive enough for NotebookLM to generate the infographic
- [ ] Image path follows naming conventions and directory structure
- [ ] Image has contextual introduction in the text before it
- [ ] Text continues after the image to build on the visual concept
- [ ] **Visual Consistency:** If visualization strategy is specified, verified compliance with strategy standards:
  - [ ] Referenced the strategy file (e.g., `.cursor/resources/technical-writing/add-images/visualization-strategy-simple.md`) for complete standards
  - [ ] Image Description complies with strategy's consistency requirements (layout patterns, containers, arrows, colors, typography, icons, spacing, element limits)
  - [ ] No violations of strategy's critical requirements (see strategy file's "Consistency Standards Summary" section)

───────────────────────────────────────────────────────────────────────────────

## Related Rules

- **Technical Writing Voice & Style (TLB)** (`technical-writing/voice-tlb/RULE.md`) - For overall writing style and voice consistency
- **Technical Writing Author** (`technical-writing/technical-writing-author/RULE.md`) - For documentation authoring workflow
- **Technical Writing Reviewer** (`technical-writing/technical-writing-reviewer/RULE.md`) - For documentation quality validation
- **Visualization Strategy: Simple Whiteboard Style** (`.cursor/resources/technical-writing/add-images/visualization-strategy-simple.md`) - For Simple Whiteboard Visual Style specifications and template blocks

───────────────────────────────────────────────────────────────────────────────

## Rules

* **ALWAYS check document header for visualization strategy before adding images**
* **If no visualization strategy found, ASK USER what style to use before proceeding**
* **If user indicates no style needed, proceed without Visual Strategy block**
* **MANDATORY: After drafting Image Description block, COUNT characters in the complete unified HTML comment block (including `<!--` and `-->` markers)**
* **MANDATORY: If character count exceeds 5,000 characters, REDRAFT the Image Description block to be more concise**
* **MANDATORY: Continue redrafting until total character count falls below 5,000 characters (HARD LIMIT)**
* **MANDATORY: Verify final character count before finalizing image addition**
* Ensure images are mutually exclusive (no duplicate visualizations)
* Create unified HTML comment blocks: Image Description FIRST, Visual Strategy SECOND (if strategy defined)
* Place images immediately after contextual introduction text
* Follow project naming conventions for image files and paths
* Validate Image Description includes all required components (diagram type, layout, elements, visual connections, communication goal)
* Review existing images before adding new ones to ensure mutual exclusivity
* Provide complete context in Image Description for NotebookLM to generate accurate infographics
* Apply Visual Strategy consistently across all images in a document when strategy is defined
* Maintain unified blocks as hidden text for accessibility and documentation maintenance
* Support multiple visualization strategies - use the strategy specified in the document header
* **For visualization strategies:** Reference the strategy file (e.g., `.cursor/resources/technical-writing/add-images/visualization-strategy-simple.md`) for complete consistency standards and enforce compliance
* **Do NOT duplicate strategy specifications in this rule** - maintain single source of truth in strategy files

───────────────────────────────────────────────────────────────────────────────

## Rules Summary

* Always check document header for visualization strategy before adding images
* Ensure images are mutually exclusive (no duplicate visualizations)
* Include comprehensive HTML comment descriptions for NotebookLM
* Place images immediately after contextual introduction text
* Follow project naming conventions for image files and paths
* Validate Image Description includes all required components
* Review existing images before adding new ones to ensure mutual exclusivity
* Apply Visual Strategy consistently across all images when strategy is defined
* Maintain unified blocks as hidden text for accessibility
* Reference strategy files for complete consistency standards
