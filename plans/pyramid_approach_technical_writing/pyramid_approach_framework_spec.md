# Pyramid Approach to Technical Writing — Framework Specification

**Purpose:** Standalone, validated definition of the Pyramid framework. The article will describe and explain this spec, not invent the framework on the fly.  
**Source:** [pyramid_approach_framework_capture.md](pyramid_approach_framework_capture.md)  
**Status:** Spec (pre-article)  
**Last updated:** 2026-03-01

---

## 1. Definition

The **Pyramid approach to technical writing** is a four-level model that applies software-engineering-style decomposition to documents. From base to top: **foundational frameworks** (how you see the world), **artifacts** (granular, specific deliverables), **strategy documents** (high-level strategic views), and **executive briefing** (audience- and purpose-specific message). Each layer is a **reusable part**; readers and AI can **drill one layer deeper** to get more detail or more "why." The structure serves as **ground truth** so AI can tailor the same thinking to different messages, audiences, and situations.

---

## 2. Origin (for article use)

The framework emerged from practice: designing and maintaining technical and product documentation that had to support both executive conversations and deep dives, and from the need to ground AI assistants (e.g., Cursor) in a consistent, navigable body of thinking rather than one-off persuasive docs.

---

## 3. The four levels

### Level 1: Foundational frameworks (base)

| Attribute | Description |
|----------|-------------|
| **Definition** | Stable or relatively immutable building blocks that express how you view the world. They can be aggregated into a diagram or short narrative. |
| **Examples** | A dimension along which you break the world up; a way you see relationships and connections; a RACI-like view of ownership vs. roles vs. responsibilities; a canonical diagram of "how we think about" a domain. |
| **Cardinality** | Few per domain; shared across many higher-level docs. |
| **Role** | Selected and combined to influence artifacts, strategy, and briefings. They are the "foundational truth" with tactical arguments for how the strategist or architect sees the world. |

### Level 2: Artifacts

| Attribute | Description |
|----------|-------------|
| **Definition** | Highly granular, specific documents produced in product management or architecture. Many exist per area; they describe *what something is* in detail. |
| **Examples** | Technical design document (TDD) for a feature; product requirements document (PRD) for a specific aspect of an application; a detailed C4 set of diagrams and narrative for the architecture of a feature or solution. |
| **Cardinality** | Many per area. |
| **Role** | Support strategy documents; provide the evidence and detail that strategy summarizes. Readers and AI drill here when they need specifics. |

### Level 3: Strategy documents

| Attribute | Description |
|----------|-------------|
| **Definition** | High-level strategic views that simplify and distill an entire artifact domain. Typically one (or a small set) per strategic topic. |
| **Examples** | Current-state architecture; future-state architecture; product definition (what it is and is not, how it functions); product space and job-to-be-done breakdown. |
| **Cardinality** | One or a small set per strategic theme. |
| **Role** | Explain the strategic view and how major artifacts support it. They sit under the executive briefing and above artifacts; they are durable and reusable across multiple briefings. |

### Level 4: Executive position / briefing (top)

| Attribute | Description |
|----------|-------------|
| **Definition** | Audience- and purpose-specific deliverable: the one-hour presentation, the deck, the executive summary. |
| **Examples** | Slides, PowerPoint, one-hour presentation for a specific audience and purpose. |
| **Cardinality** | One per audience/situation (many over time). |
| **Role** | Deliver the message. Each slide or small set of slides is backed by a strategy document (and thus by artifacts and frameworks). Readers and AI can drill from the briefing into strategy, then artifacts, then frameworks. |

---

## 4. Relationships and sequence

- **Drill-down path:** Executive briefing → Strategy documents → Artifacts → Foundational frameworks. At each step, the consumer gets more detail and more justification ("why").
- **C4 parallel:** The **C4 model** for software architecture uses four levels—System (context) → Containers → Components → Code—for scale and scope and zooming from context to implementation. The Pyramid maps directly: Executive briefing ("context" for this audience) → Strategy documents → Artifacts → Foundational frameworks ("code" of how you see the world). Same idea: four levels, consistent grain at each level; don't mix levels (e.g., don't put briefing slides and raw artifact text in one place).
- **Reuse (bottom-up):** When writing a strategy doc, you pull from artifacts and foundational frameworks. When building a briefing, you pull from strategy docs (and implicitly from the artifacts and frameworks behind them). No reinvention per audience.
- **Linking rule:** Every briefing element (slide, section) should trace to at least one strategy document; every strategy doc should trace to relevant artifacts and, where useful, to foundational frameworks. This traceability is what enables drill-down and AI grounding.
- **Not a full knowledge graph:** The model is hierarchical—a taxonomy of ideas or a knowledge breakdown—not a general graph. In some ways it resembles a mind map. Each piece has a specific purpose at a specific level.

---

## 5. Diagram specification

**Purpose:** One canonical figure for the article showing the Pyramid and optional drill-down.

**Layout:** Vertical pyramid (triangle or stacked horizontal bands). Base at bottom, top at apex.

- **Bottom tier (widest):** Label "Foundational frameworks" — optional short subtitle: "How we see the world."
- **Second tier:** Label "Artifacts" — optional subtitle: "Granular, specific docs (TDDs, PRDs, C4)."
- **Third tier:** Label "Strategy documents" — optional subtitle: "High-level strategic view."
- **Top tier (narrowest):** Label "Executive briefing" — optional subtitle: "Audience- and purpose-specific."

**Optional:** Light "drill down" arrows from top to bottom (e.g., dashed arrow from "Executive briefing" to "Strategy documents" with label "drill one layer deeper," and so on).

**Style:** Per repo image conventions (see [whitepapers/measuring_value_for_data_products.md](../../whitepapers/measuring_value_for_data_products.md)): whiteboard/sketch aesthetic, limited palette, clear labels. Diagram should communicate: four levels, base = stable/reusable, top = situational; path from top to base = get more detail and more "why."

**Image path:** Whitepaper images live under `whitepapers/images/<article_name>/`. For this article: repo path `whitepapers/images/pyramid_approach_technical_writing/pyramid_framework.png`; in the article markdown (under `whitepapers/`) use relative path `images/pyramid_approach_technical_writing/pyramid_framework.png`.

---

## 6. Gap analysis (failure modes)

When the pyramid is incomplete or misused, the following failure modes occur:

1. **Missing foundational frameworks:** No shared "how we see the world." Strategy docs and briefings become inconsistent; different authors use different mental models; AI has no stable ground truth to tailor.
2. **Missing or thin artifacts:** Strategy documents make claims with no supporting detail. Readers and AI cannot drill down to evidence; trust in the strategy erodes.
3. **Missing strategy layer:** Briefings are created directly from artifacts (or from nothing). Every deck is a one-off; no reusable strategic narrative; duplication and contradiction across presentations.
4. **Briefing not linked to strategy:** Slides exist but do not reference strategy docs. When someone asks "why?" or "where's the backup?," there is no path to the underlying thinking.
5. **Skipping levels:** e.g., Briefing → artifacts with no strategy in between. The middle layer (simplification, prioritization, narrative) is missing; the briefing is either too vague or too detailed for the audience.

---

## 7. Measurement and maturity

**Signals that the pyramid is working:**

- Less one-off document creation; strategy docs and artifacts are reused across briefings and questions.
- AI or new hires can answer "why" by drilling down (strategy → artifacts → frameworks) without the author in the room.
- Fewer "where's the source of truth?" or "which doc is right?" questions.
- Briefings are faster to produce because they pull from existing strategy and artifacts.

**Simple maturity view:**

- **Ad hoc:** Docs exist but are not organized by level; no explicit drill-down or reuse.
- **Structured:** Four levels are identified; at least some strategy docs and artifacts exist and are linked.
- **Reused:** Briefings routinely link to strategy docs; strategy docs reference artifacts and frameworks; AI or readers regularly use the structure to drill down.
- **Maintained:** Frameworks, artifacts, and strategy docs are updated together; traceability is checked when content changes.

---

## 8. Practical application (summary for article)

- **Maintain foundational frameworks** in a shared, stable form (e.g., a small set of docs or a section in a wiki) so they can be referenced by strategy and briefings.
- **Inventory and name artifacts** (TDDs, PRDs, C4 sets) and keep them in a known structure so strategy docs can link to them.
- **Write or refactor strategy documents** so each major strategic topic (current state, future state, product definition, etc.) has one durable doc that summarizes and points to artifacts and frameworks.
- **Build briefings** that explicitly link each slide or section to the supporting strategy doc(s); use metadata or a short "Sources" note so readers and AI can drill.
- **Use metadata and structure** (headings, tags, doc type) so agents can navigate the pyramid; this turns the doc set into rich grounding for AI.

---

## 9. Next steps (actionable)

**The shift: outline top-down, write bottom-up.** Usually we get an ask and immediately start writing the strategy doc, the point of view, or the presentation. The shift is to go into **outlining mode** first. Start at the **top**—the final thing we want to deliver—and work our way **down** to define the structure: what levels, what docs, what links. We make the plan.

When we **write**, we don't then go back to the top and draft from there. We start at the **leaves** (the bottom): build the **frameworks** first (Level 1), then **artifacts** (Level 2), then **strategy** (Level 3). We build really rich, well-understood context at the granular level. Then we **let the AI roll it up** into the outline we started with—so the deliverable (briefing, strategy doc) is composed from that context rather than written from scratch. This embraces how AI approaches problems: we as writers make the plan, we solve the granular pieces, and we use additional to-dos and steps to get more specific; then we roll all the way up to the outline we started with. If we can't fully describe and articulate why our frameworks work, how they view the world, and why they're strong, we can't start writing the other levels. In that sense, the Pyramid turns you from a **top-down writer** (straight to the deliverable) into a **bottom-up writer** (foundations first, then roll up).

**Actionable steps:**

1. **Outline top-down.** For the next ask (briefing, strategy doc, point of view), define the deliverable and work down: what's the one-pager or deck? What strategy doc(s) back it? What artifacts and frameworks sit under those? Lock the structure before writing.
2. **Build from the leaves.** List your current "foundational" views (dimensions, diagrams, RACI-like models); write or consolidate them into Level 1 docs. If you can't articulate why they work and how they view the world, do that first—you need that context before the upper levels make sense.
3. **Then artifacts.** List key artifacts (TDDs, PRDs, architecture docs); ensure they're named and findable (Level 2). Write or refine them so they clearly support the strategy layer above.
4. **Then strategy.** For each major strategic theme, identify or write the one strategy document that sits above the artifacts (Level 3), pulling from those artifacts and frameworks.
5. **Roll up.** Map each slide/section of the briefing (or each section of the strategy doc) to the supporting strategy doc and artifacts; add links. Use AI to help roll the leaves up into the outline—synthesize, don't rewrite from scratch.
6. **Optional:** Add a short "Pyramid" overview doc or README that orients new readers and AI to the four levels and where to find each.

---

## 10. Validation against framework-quality checklist

| Criterion | Status |
|-----------|--------|
| Origin story explains how framework emerged from practice | Yes (§2) |
| Each element has clear definition and explanation | Yes (§3, tables) |
| Visual diagram(s) included with proper paths and alt text | Spec provided (§5); image to be created in Task 4 |
| Sequence and dependencies explained | Yes (§4) |
| Gap analysis section with 3–5 concrete examples | Yes (§6 — 5 failure modes) |
| Measurement approach defined | Yes (§7) |
| Practical application section included | Yes (§8) |
| References cited properly | Minimal in spec; article can add (§10) |
| Terminology used consistently throughout | Yes (four levels, drill-down, ground truth, reusable part) |
| Examples are concrete and realistic | Yes (TDDs, PRDs, C4, current/future state, RACI) |
| Framework solves a real problem | Yes (reuse, AI grounding, consistency) |
| Diagnostic value is clear | Yes (gap analysis, maturity) |
| Next steps are actionable | Yes (§9) |

**Verdict:** Framework spec is complete and ready to be described in the article.
