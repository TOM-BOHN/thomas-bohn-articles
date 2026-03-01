# Pyramid Approach to Technical Writing — Framework Capture

**Purpose:** Persist the verbal description of the Pyramid approach so it does not need to be repeated. This document is the source of truth for the idea; the article and framework spec will be derived from it.

**Status:** Capture (pre-article)  
**Last updated:** 2026-03-01

---

## Elevator pitch

The **Pyramid approach** applies software-engineering principles of decomposition to technical writing. Documents are organized in four levels—from immutable foundational frameworks at the base to executive briefings at the top—so each layer is a **reusable part**. AI (e.g., Cursor, Copilot) can then use this structure as **ground truth** and tailor it to the specific message, audience, and situation, effectively virtualizing the leadership strategy you would normally drive in person.

---

## Key phrases to preserve

- **Ground truth** — The canonical way we think about the problem; AI tailors it to audience/situation.
- **Reusable part** — Each layer of abstraction is a reusable component.
- **Drill one layer deeper** — Readers (or AI) can go from briefing → strategy → artifacts → frameworks.
- **Virtualizing leadership strategy** — Making your strategic thinking accessible to agents when you're not in the room.
- **Decomposition** — Breaking technical writing into constituent parts with clear levels of abstraction.

---

## Four levels (base to top)

### Level 1: Foundational frameworks (base)

- **What:** Basic building blocks that can be aggregated into a diagram or a short explanation of how you view the world. They are relatively **immutable**.
- **Examples:** A dimension along which you break the world up; a way you see relationships and connections; a RACI-like view of ownership vs. roles and responsibilities vs. specific roles.
- **Role:** Selected and combined to influence higher-level documents. They are the "foundational truth" a product manager or architect holds—with tactical arguments for how they see the world.
- **Difference from level above:** Artifacts are many, specific, and granular; foundational frameworks are few, general, and stable.

### Level 2: Artifacts

- **What:** Documents produced in product management that are **highly granular and specific**. Many exist per area.
- **Examples:** Technical design documents (TDDs) for a feature; product requirements documents (PRDs) for a specific aspect of an application; a detailed C4 set of diagrams and explanations for the architecture of a specific feature or solution within an ecosystem.
- **Role:** Describe *what it is* in detail. They support strategy documents and can be drilled into from above.
- **Difference from level above:** Strategy documents simplify and summarize across the artifact space; artifacts are the detailed "what."

### Level 3: Strategy documents

- **What:** High-level strategic views that **simplify and distill** everything within an artifact domain. Typically one (or a small set) per strategic topic.
- **Examples:** One strategic document for current-state architecture; one for future-state architecture; one that defines what the product is and is not and how it functions; one that breaks down the product space and job-to-be-done.
- **Role:** Explain the high-level view and how major artifacts support it. They sit under the executive briefing and above the artifacts.
- **Difference from level above:** The executive briefing is audience- and purpose-specific (e.g., one-hour presentation); strategy documents are the durable strategic view that supports multiple briefings.

### Level 4: Executive position / briefing (top)

- **What:** Audience- and purpose-specific deliverables: the one-hour presentation, the deck, the executive summary.
- **Examples:** Slides, PowerPoint, one-hour presentation for a specific audience and purpose.
- **Role:** Almost every slide or small set of slides has a **detailed strategy document** underneath that supports how you got to these conclusions, why you think this way, and how you're bringing together major artifacts (e.g., a collection of features, TDDs). From there, readers can drill into strategy documents, then into artifacts, then into foundational frameworks if they want to understand "how you see the world."
- **Difference from level below:** Strategy documents are the reusable strategic view; the briefing is the tailored message for a specific situation.

---

## Rationale

- **Ordering:** The pyramid mirrors **levels of the business** and **levels of abstraction**—from stable, reusable mental models (frameworks) to many concrete outputs (artifacts) to synthesized strategy to the single, situational briefing.
- **C4 parallel:** The **C4 model** for software architecture uses four levels (System/context → Containers → Components → Code) for scale and scope and zooming from context to implementation. The Pyramid does the same for docs: Executive briefing → Strategy documents → Artifacts → Foundational frameworks. Same idea: four levels, clear scale and scope, drill down for detail.
- **Decomposition and reuse:** Applying decomposition to technical writing makes each piece have a **specific purpose at a specific level** to drive a **specific objective**. The foundation is not persuasive messaging to one person but **how we think about the problem**; then AI (or a human) can tailor that ground truth to the message, audience, and situation.
- **AI grounding:** Rich grounding documents (with metadata, heading sections, tags) allow agents to give high-level executive discussions and **drill deep** in specific areas when they need to understand more, because everything is connected.
- **Outline top-down, write bottom-up:** When you get an ask, go into **outlining mode** first—start at the top (the deliverable) and work down to define the structure. When you **write**, start at the **leaves** (frameworks, then artifacts, then strategy); build rich context, then **let the AI roll it up** into the outline. This shifts you from a **top-down writer** (straight to the deck or strategy doc) to a **bottom-up writer** (foundations first; if you can't articulate why the frameworks work, you can't write the upper levels well).

---

## Nuance

- **Not a full knowledge graph:** The model is more **hierarchical**, more of a **taxonomy of ideas** or a **knowledge breakdown**—in some ways like a mind map. It mimics the levels of thinking and the levels of abstraction needed in conversations to be specific enough and persuasive enough.
- **Each piece has a specific purpose:** Every document at every level exists to serve a clear function at that level; this makes the actual writing more **reusable** and easier to maintain.

---

## Reuse and AI

- **Reusable parts:** When writing a document that touches on strategy, you can pull from current-state and future-state strategy documents; if the reader (or AI) needs more, they go one layer deeper into supporting pieces, then to the frameworks that explain how the strategist or architect thinks.
- **AI tailoring:** Ground truth is captured in the pyramid; AI tailors it to the specific message, audience, and situation instead of inventing or over-fitting to one-off persuasive messaging.
- **Virtualizing leadership:** The approach makes the leadership strategy you would typically drive into the business—and that usually requires you in the room—accessible to agents (Cursor, Copilot, etc.) on a regular basis when they need to look at doc structure or need rich grounding.
