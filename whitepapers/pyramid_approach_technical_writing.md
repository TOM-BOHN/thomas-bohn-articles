# The Pyramid Approach to Technical Writing: Decomposition, Reuse, and AI Grounding

*A framework for organizing technical and product documentation in four levels—from foundational frameworks to executive briefings—so each piece is reusable and AI can tailor your ground truth to any audience or situation. Think of it as framework-grounded writing: decompose strategic asks into grounding components, then build the story from those raw materials.*

**Document Type:** Whitepaper  
**Status:** Draft  
**Last Updated:** 2026-03-01  
**Owner:** Thomas L. Bohn

<!-- Visualization Strategy: Simple Whiteboard Visual Style -->
<!-- Diagram: Four-tier pyramid, base to top: Foundational frameworks | Artifacts | Strategy documents | Executive briefing. Optional dashed "drill one layer deeper" arrows from top to base. Whiteboard/sketch aesthetic, limited palette, clear labels. See plans/pyramid_approach_framework_spec.md §5 for full diagram spec. -->

## Executive Summary

**How do you make technical writing reusable, consistent, and useful for both humans and AI?** Throughout my career, I've watched teams pour effort into one-off decks and documents that don't connect to a single source of truth. When someone—or an AI assistant—asks "why?" or "where's the backup?," there's often no path from the slide to the underlying thinking. The result: duplicated work, inconsistent messaging, and AI that can't reliably ground itself in how you actually see the world.

The **Pyramid approach** fixes this by applying software-engineering-style **decomposition** to technical writing. Documents are organized in four levels: **foundational frameworks** (how you see the world) at the base, **artifacts** (granular, specific deliverables like TDDs and PRDs) next, **strategy documents** (high-level strategic views) above that, and **executive briefing** (audience- and purpose-specific message) at the top. Each layer is a **reusable part**; readers and AI can **drill one layer deeper** whenever they need more detail or more "why."

The structure becomes **ground truth**—so AI can tailor the same thinking to different messages, audiences, and situations instead of inventing or over-fitting to one-off persuasive docs. In practice, this **virtualizes** the leadership strategy you'd normally drive in person, making it accessible to agents like Cursor and Copilot whenever they need to reason over your doc structure or answer a question. This whitepaper introduces the Pyramid, walks through each level, shows how the levels connect, and gives a worked example. It also outlines failure modes when a level is missing and how to tell when the approach is working.

---

## The Problem: Docs That Don't Stack

I've always been a frameworks-oriented person—interested in digesting problems and breaking them into smaller components. I've done work in the past setting up knowledge bases, thinking about the categories we need to answer questions, the domains we have. Breaking things into parts has always been there; working in Cursor and with agents over the last year has **supercharged** it. Getting just the context you need for a specific problem, and being able to **zoom in and zoom out**, feels like a feature of the **agentic flow**—and I've found this pattern highly effective for both **coding and writing**.

Over the last 10 years at Salesforce we've been a very meeting-driven, face-to-face organization. I've created hundreds of strategy decks to speak to one leader or another. We move slides around from deck to deck, but we fail to recognize **consistent resources** and **consistent descriptive information** that power those facts. When someone—or an AI assistant—asks "why?" or "where's the backup?," there's often no path from the slide to the underlying thinking. During the generative AI transformation, working with agents in the last year, I've found that the Pyramid pattern really amplifies my ability to work, answer questions, and accelerate—because I have a lot of **language-based building blocks** to work with. The question became: how do we make our docs reusable and ground AI in how we actually think?

What's broken might not even be the **writing itself**. It's the **directory structure and hierarchy** for how you store content—and recognizing that **the story you tell is different from how you organize the knowledge** that powers those stories. We tend to store knowledge like **verbal storytelling knowledge**: books on a shelf. AI and reusable parts work much better when you break it down into **specific problem-solving themes and frameworks**, and allow a lot of **background story and background source material** that doesn't always get told to the customer or the internal audience you're presenting to.

Time and time again, these conversations follow a familiar pattern. Either the docs are too high-level: persuasive decks and one-pagers that don't link to any underlying evidence or strategy, so when you ask "why do we believe that?," there's nothing to point to. Or they're too granular: hundreds of TDDs, PRDs, and architecture docs that never get summarized into a durable strategic view, so every exec briefing is built from scratch and no one can quickly answer "what's our position on X?" Either way, the writing doesn't **stack**. There's no clear path from the one-hour presentation to the strategy document, from the strategy document to the artifacts, or from the artifacts to the foundational frameworks that explain how the strategist or architect sees the world.

Then I asked myself: what if we treated technical writing like software? In software, we decompose systems into layers of abstraction—each layer has a single responsibility, and you can go one level deeper when you need more detail. We don't build one giant blob of code per audience; we build reusable components and compose them. The same principle can apply to docs. If we break technical writing into **levels**—foundational frameworks, artifacts, strategy documents, executive briefing—and link them explicitly, we get reuse, consistency, and a structure that AI can navigate. That's the Pyramid approach.

---

## Intent and Purpose

The intent of this framework is to give you a **model for organizing** technical and product documentation so that each piece has a clear purpose at a clear level, reuse is built in, drill-down is possible, and AI has ground truth. Concretely:

1. **Each piece has a clear purpose at a clear level.** You're not writing "a doc"; you're writing a foundational framework, an artifact, a strategy doc, or a briefing—and that choice drives structure and audience.
2. **Reuse is built in.** When you write a strategy document, you pull from artifacts and frameworks. When you build a briefing, you pull from strategy docs. You're not reinventing the message for every audience.
3. **Drill-down is possible.** Anyone—or any agent—can go from the briefing to the strategy doc to the artifacts to the frameworks, getting more detail and more "why" at each step.
4. **AI has ground truth.** Your doc set becomes a navigable body of thinking. AI can answer at the right level and, when needed, cite and drill into the level below instead of hallucinating or over-fitting to a single persuasive doc.

The purpose is practical: help you structure your own doc ecosystem and make your strategic thinking **accessible**—to colleagues who need to go deep and to agents that need to reason over your content when you're not in the room. I think of this as **framework-grounded writing**: you **decompose** strategic asks into **grounding components**, then **rebuild the story** from those raw materials. The Pyramid is the structure; the outcome is a story that picks the right pieces for the right audience.

**Who this is for:** Primarily **product managers and architects**—and **engineering designers who are very technical**—who are building high-quality materials to describe their ideas and point of view and influence others. Executives want to give these presentations, but they typically don't do the full stack; they go to their **"writing rooms"** (PMs and architects) to get there. Execs get the most benefit by **asking their teams** to work this way: then they have rich **source material** when they have conversations with customers or partners, even though they're not building the pyramid themselves.

---

## The Pyramid Framework

The **Pyramid approach to technical writing** is a four-level model for organizing documents from the most stable, reusable building blocks at the base to the most audience- and situation-specific deliverable at the top. Each layer is a **reusable part**; the whole stack serves as **ground truth** so that humans and AI can tailor the same thinking to different messages, audiences, and situations.

I developed this model in practice: designing and maintaining technical and product documentation that had to support both executive conversations and deep dives, and from the need to ground AI assistants (including Cursor) in a consistent, navigable body of thinking rather than one-off persuasive docs. The pyramid mirrors the **levels of the business** and the **levels of abstraction** we already use in conversation—from "how we see the world" to "here's the specific design" to "here's the strategy" to "here's what we're telling this audience today."

If you know the **C4 model** for software architecture, the parallel is direct. C4 uses four levels—**System (context)** → **Containers** → **Components** → **Code**—to describe scale and scope and let you zoom from high-level context down to implementation detail. The Pyramid does the same for docs: **Executive briefing** (the "context" for this audience) → **Strategy documents** → **Artifacts** → **Foundational frameworks** (the "code" of how you see the world). Same idea: four levels, each with a clear scale and scope; drill down when you need more detail.

The diagram below shows the four tiers. From base to top: **Foundational frameworks** (how we see the world), **Artifacts** (granular, specific docs), **Strategy documents** (high-level strategic view), and **Executive briefing** (audience- and purpose-specific). The dashed path indicates that you can **drill one layer deeper** at any time—from briefing to strategy to artifacts to frameworks—to get more detail or more justification.

![The Pyramid Approach to Technical Writing — four levels from foundational frameworks to executive briefing, with drill-down path](images/pyramid_approach_technical_writing/pyramid_framework.png)

<!-- Image Description: A vertical pyramid diagram with four horizontal tiers. Bottom tier (widest): "Foundational frameworks" with subtitle "How we see the world." Second tier: "Artifacts" with subtitle "Granular, specific docs (TDDs, PRDs, C4)." Third tier: "Strategy documents" with subtitle "High-level strategic view." Top tier (narrowest): "Executive briefing" with subtitle "Audience- and purpose-specific." A dashed arrow runs from top to bottom labeled "Drill one layer deeper." Whiteboard/sketch style, limited palette, clear labels. -->

In the following sections I define each level, show how they connect, and then walk through a worked example and failure modes.

---

## The Four Levels

### Level 1: Foundational frameworks (base)

**Foundational frameworks** are the stable or relatively immutable building blocks that express how you view the world. They can be aggregated into a diagram or a short narrative—a dimension along which you break the world up, a way you see relationships and connections, or a RACI-like view of ownership versus roles versus responsibilities. They are few per domain and shared across many higher-level documents.

In product and architecture work, these might be: a canonical diagram of how you think about your product space, a set of dimensions you use to segment capabilities, or a model of how ownership and accountability flow. They're the "foundational truth" you hold—with tactical arguments for why you see the world that way. They're selected and combined to influence artifacts, strategy docs, and briefings; they're what someone reaches when they keep drilling down and finally ask, "Why do you think about it this way?"

### Level 2: Artifacts

**Artifacts** are highly granular, specific documents produced in product management or architecture. There are many per area. They describe *what something is* in detail: a technical design document (TDD) for a feature, a product requirements document (PRD) for a specific aspect of an application, or a detailed C4 set of diagrams and narrative for the architecture of a feature or solution.

Artifacts support strategy documents; they're the evidence and detail that strategy summarizes. When a reader or an AI needs specifics—"what exactly does this feature do?" or "how does this component fit in?"—they drill from the strategy doc into the artifacts. Without artifacts, strategy is unsupported; with them, every claim can be traced to a concrete deliverable.

### Level 3: Strategy documents

**Strategy documents** are high-level strategic views that simplify and distill an entire artifact domain. You typically have one (or a small set) per strategic topic: one document for current-state architecture, one for future-state architecture, one that defines what the product is and is not and how it functions, one that breaks down the product space and job-to-be-done.

Strategy documents explain the strategic view and how major artifacts support it. They sit under the executive briefing and above the artifacts. They're durable and reusable—the same strategy doc can back multiple briefings, and when the strategy changes, you update the doc once and all briefings that reference it stay aligned. They're the layer that turns "we have 50 TDDs" into "here's our position on where we're going and why."

### Level 4: Executive briefing (top)

The **executive briefing** is the audience- and purpose-specific deliverable: the one-hour presentation, the deck, the executive summary. There are many over time—one per audience or situation—but each one is tailored.

Critically, almost every slide or small set of slides is **backed by** a strategy document. That strategy doc explains how you got to these conclusions, why you think this way, and how you're bringing together major artifacts (e.g., a collection of features, TDDs). From the briefing, readers and AI can drill into the strategy doc, then into artifacts, then into foundational frameworks. The briefing doesn't stand alone; it's the top of the stack, and the stack is what makes it defensible and reusable.

---

## How the Levels Connect

The **drill-down path** is always the same: Executive briefing → Strategy documents → Artifacts → Foundational frameworks. At each step, the consumer gets more detail and more "why." When you're writing a strategy doc, you pull from artifacts and foundational frameworks. When you're building a briefing, you pull from strategy docs (and implicitly from the artifacts and frameworks behind them). You're not reinventing the message for every audience; you're reusing and tailoring.

A simple **linking rule** makes this work: every briefing element (slide, section) should trace to at least one strategy document. Every strategy doc should trace to relevant artifacts and, where it helps, to foundational frameworks. That traceability is what enables drill-down and AI grounding. When Cursor or a colleague asks "what's our position on X?," the answer can point to the strategy doc; if they need evidence, they go to the artifacts; if they need the underlying worldview, they go to the frameworks.

The Pyramid is **hierarchical**—a taxonomy of ideas or a knowledge breakdown—not a full knowledge graph. In some ways it's like a mind map. Each piece has a specific purpose at a specific level; that's what makes the writing reusable and the structure navigable. As with C4, you don't mix system-level and code-level detail on one diagram; in the Pyramid, you don't mix briefing slides with raw artifact text. Each level has a **consistent grain**—scale and scope that match the audience and the question.

---

## Worked Example: Technical Health Score

A real example from my work: we were looking at **telemetry** and how we define **technical health**, refine the definition, and address maturing and modernizing telemetry. The conversations we were aiming for were at **senior leadership** (VPs and above)—where we're going, how we're doing it. Those are high-level conversations, but they're based on a lot of specifics about how the business runs.

I needed a **clean 30-minute presentation**: persuasive, executive slides, polished talk track, lean and fast. I had to cover strategic areas—**current state**, definition of technical health, how we break apart the problem and think about the product, **future state**, solution design and architecture—and not just for one product area but **several**, because they all interact. I didn't always know how to solve the whole problem, but I knew how to solve **specific parts**; I had a strong point of view on those. I wanted to **collaboratively write with AI** and generate new ideas, but I **didn't want the frameworks to move**. So I started by **documenting the frameworks** (Level 1)—how I think about technical health, telemetry, and the product space. Then I applied those frameworks to areas where I had less understanding, and **rolled it up** into strategy docs (Level 3) and artifacts (Level 2): current-state and future-state docs, PRDs, deep-dive analytical docs. I built a **wide base** with much higher velocity using AI for the technical writing, captured a lot of **ground truth** and how I see the world, then **aggregated up** to the persuasive deck (Level 4) that picks those pieces and tells the right story for the right audience.

So: one 30-minute briefing, multiple strategy docs, many artifacts across several product areas, and a small set of frameworks. The briefing is tailored to the exec audience; the rest is reused. Anyone can drill from a slide to the strategy doc to the artifact to the framework. That's the Pyramid in practice—and it's the same pattern whether the topic is Technical Health Score, current-state vs. future-state architecture, or any other strategic ask.

---

## How I Use It: Practice and AI

I've shifted from a **top-down writer** (jumping straight to the strategy doc or deck when I get an ask) to a **bottom-up writer**. Now I go into **outlining mode** first: I start at the **top**—the final deliverable I want—and work **down** to define the structure (what levels, what docs, what links). Then when I **write**, I don't start at the top. I start at the **leaves**: I build the **frameworks** first (Level 1), then **artifacts** (Level 2), then **strategy** (Level 3). I build rich, well-understood context at the granular level. Then I **let the AI roll it up** into the outline I started with. If I can't fully describe why my frameworks work and how they view the world, I can't start writing the other levels. So in practice, I maintain **foundational frameworks** in a shared, stable form—a small set of docs or a section in a wiki that captures dimensions, diagrams, and ownership models. I **inventory artifacts** (TDDs, PRDs, C4 sets) so they're named and findable. For each major strategic theme, I have (or create) **one strategy document** that summarizes and points to those artifacts and frameworks. When I build a **briefing**, I map each slide or section to the supporting strategy doc and, where useful, add a short "Sources" or "Drill-down" note so others and AI can navigate.

For AI: I want Cursor (or another agent) to use these docs as **grounding**—for technical writing, for conversations, and for **people**. I also want these points of view and frameworks to **inform the physical code** we write in our products. Give agents the same **context and background** you'd give **new team members**: same ground truth for humans and for agents, in both writing and code. That's what I mean by **virtualizing** leadership strategy: the same thinking I'd convey in a meeting is now in a structure that agents can read and reason over, and tailor to the specific message, audience, and situation.

**Tools I use:** I do this flow in **Cursor IDE**, with **technical writing rules** that guide the writing. I've borrowed **Zettelkasten-like principles** (not exact matches) for **directory organization**—rules that help me bucket information into the right places. The roll-ups happen through Cursor; content lives in **GitHub repositories** with **rich directory structures**, which gives me the best velocity for **pulling in context through agentic conversations**. We've used **Docusaurus** to build Wiki-style documentation sites around strategy (and technical docs) as internal public sites—writing as code, then distribution of that writing as code through a web interface. We bridge documents into **Slack** (e.g., drop a doc into a Slack canvas and share with users who don't have code access; everything's Markdown-compatible). The **ground truth** is the Git repo; we use **Slack**, **Google Docs** (you can import Markdown now), and other channels to share **snapshots** with different audiences. We've also put strategic docs behind a **Slack AI wrapper**—a bot with those documents as grounding (RAG)—so people can ask product questions and get answers from the same material; when something **breaks through** (the bot can't answer), that's a signal you haven't fully answered it in writing yet, which is a great problem to have because now you know what to go write. Your ideas effectively create **virtual product management** out there answering questions. Cursor is central for me, but you can find success with **any agentic experience**; the critical piece is **connecting existing files and rules** to that experience.

---

## When the Pyramid Fails: Seven Failure Modes

The Pyramid works when all four levels exist and are linked. When a level is missing or skipped—or when structure or process is off—these failure modes show up:

1. **Missing foundational frameworks.** There's no shared "how we see the world." Strategy docs and briefings become inconsistent; different authors use different mental models; AI has no stable ground truth to tailor. The fix: name and document your core dimensions and diagrams first.

2. **Missing or thin artifacts.** Strategy documents make claims with no supporting detail. Readers and AI can't drill down to evidence; trust in the strategy erodes. The fix: ensure every major strategy claim ties to at least one artifact (TDD, PRD, diagram).

3. **Missing strategy layer.** Briefings are created directly from artifacts—or from nothing. Every deck is a one-off; there's no reusable strategic narrative; you get duplication and contradiction across presentations. The fix: write the strategy doc before (or alongside) the briefing; use it as the single source the briefing summarizes.

4. **Briefing not linked to strategy.** Slides exist but don't reference strategy docs. When someone asks "why?" or "where's the backup?," there's no path. The fix: add explicit links or a short "Backed by: [strategy doc]" so drill-down is possible.

5. **Skipping levels.** For example, going from briefing straight to artifacts with no strategy in between. The middle layer—simplification, prioritization, narrative—is missing; the briefing is either too vague or too detailed for the audience. The fix: maintain the strategy layer; use it as the translation between "all our artifacts" and "what we're saying today."

6. **Taxonomy and hierarchy wrong or unstable.** Getting your **directory structure and hierarchy** (where content goes, how you explain it) right is **hard on the first pass**; you may have to iterate. Every iteration **breaks links** and forces you to refactor how content connects. Moving content in Git isn't hard but takes labor—and that volume of moves is **tricky even for agents** (they're good for the first pass; organization and naming are hard). The fix: **spend time up front** to figure out your **major artifacts** and how you'll organize your ideas; give yourself a **roadmap for your taxonomy** that you can **grow into over time**, **before you have tons of documents**. This is knowledge management playing out in the agentic space.

7. **Treating AI as the writer and skipping the human editor.** AI-generated content (including AI-generated images) is **stochastic**—best case 85–99% accurate; you'll have small deviations from where you want to direct the knowledge. The failure is **getting comfortable with the process and not being the human editor** it still needs. You'll produce a lot more documentation and get more ideas out—but you have to **switch from writer to editor**: do a lot of **reading**, **critical reading and thinking**, **commenting**, **editing**, **redlining**, and **giving feedback** so the work stays on track; when you give that feedback, it goes back through and refines. Same as in software engineering: the system does a lot of writing; you have to be prepared to do **a lot of reading** (and editing).

---

## How You Know It's Working

You'll know the Pyramid is working when:

- **Less one-off doc creation.** Strategy docs and artifacts are reused across briefings and questions; you're not rewriting the same story for every audience.
- **AI or new hires can answer "why."** They can drill from briefing to strategy to artifacts to frameworks without you in the room.
- **Fewer "where's the source of truth?" questions.** Everyone knows: strategy lives in the strategy doc, detail lives in the artifacts, worldview lives in the frameworks.
- **Briefings are faster to produce.** Because they pull from existing strategy and artifacts, you're composing, not creating from scratch.

A simple maturity view: **Ad hoc** (docs exist but aren't organized by level), **Structured** (four levels identified; some strategy docs and artifacts linked), **Reused** (briefings routinely link to strategy; AI or readers regularly drill down), **Maintained** (frameworks, artifacts, and strategy docs are updated together; traceability is checked when content changes). Aim for Reused and Maintained so the pyramid stays current and discoverable.

---

## Conclusion and Next Steps

Once you have the four levels in place and linked, you can present with confidence, let others drill when they need more, and let AI use the same structure to answer at the right level and cite the right doc. The foundation isn't persuasive messaging to one person; it's **how we think about the problem**—and from there, humans and AI tailor that ground truth to the message, audience, and situation.

**Next steps:**

1. **Outline top-down.** For the next ask (briefing, strategy doc, point of view), define the deliverable and work down: what's the one-pager or deck? What strategy doc(s) back it? What artifacts and frameworks sit under those? Lock the structure before writing.
2. **Build from the leaves.** List your foundational views (dimensions, diagrams, RACI-like models); write or consolidate them into Level 1 docs. If you can't articulate why they work and how they view the world, do that first—you need that context before the upper levels make sense.
3. **Then artifacts.** List key artifacts (TDDs, PRDs, architecture docs); ensure they're named and findable (Level 2). Write or refine them so they clearly support the strategy layer above.
4. **Then strategy.** For each major strategic theme, identify or write the one strategy document that sits above the artifacts (Level 3), pulling from those artifacts and frameworks.
5. **Roll up.** Map each slide or section of the briefing (or each section of the strategy doc) to the supporting strategy doc and artifacts; add links. Use AI to help roll the leaves up into the outline—synthesize, don't rewrite from scratch.
6. **Add metadata and structure** (doc type, tags, headings) so agents can navigate the pyramid—turning your doc set into rich grounding for AI.

That's the Pyramid approach in practice.

---

## References

- C4 model for software architecture: [c4model.com](https://c4model.com/) (for artifact-level diagrams and the four-level scale/scope parallel: System → Containers → Components → Code maps to Executive briefing → Strategy → Artifacts → Foundational frameworks).
- Repository conventions for technical writing and framework articles: see [AGENTS.md](../AGENTS.md) and [.cursor/resources/technical-writing/](../.cursor/resources/technical-writing/) in this repo.
- Framework specification (full definition, diagram spec, gap analysis): see [plans/pyramid_approach_framework_spec.md](../plans/pyramid_approach_framework_spec.md) in this repository.
