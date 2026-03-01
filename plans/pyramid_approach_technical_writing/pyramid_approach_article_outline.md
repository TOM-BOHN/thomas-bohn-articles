# Pyramid Approach — Article Outline and Interview Questions

**Purpose:** Define the article structure and questions to elicit more POV and examples so the piece feels like the author's ideas.  
**Source:** [pyramid_approach_framework_capture.md](pyramid_approach_framework_capture.md)  
**Status:** Pre-draft  
**Last updated:** 2026-03-01

---

## Naming (to workshop)

- **Working title:** "Pyramid approach to technical writing"
- **Alternatives to consider:**
  - **Document Pyramid** — Emphasizes the shape and layered structure.
  - **Layered Writing Model** — Emphasizes levels of abstraction; may feel generic.
  - **Decomposition-First Writing** — Emphasizes the software-engineering angle; less visual.
- **Recommendation:** Keep "Pyramid" in the title for the visual metaphor; final title can be chosen after interview (e.g., "The Pyramid Approach to Technical Writing: Decomposition, Reuse, and AI Grounding").

---

## Article outline (8-part / framework pattern)

**Convention for all articles:** After the title, include an **Executive summary**. Assume many readers will not read the full article; give them **one image** and **one summary** of what's really important so they can get the key message at a glance.

### 1. Executive summary

- **Purpose:** Serve readers who won't read the whole thing—one image and one summary of what's really important.
- **Content:** One canonical visual (for this article: the Pyramid diagram) and a short narrative that answers: What is the Pyramid approach? Why does it matter? What will I get from this article if I read on?
- **Length:** Tight (e.g., 2–4 short paragraphs). No need to repeat the full argument; capture the core idea and the value.

### 2. Hook and opening

- **Problem from experience:** Leaders and teams struggle to structure technical writing so it's reusable, consistent, and useful for both humans and AI. Docs are either too high-level (persuasive but ungrounded) or too granular (detailed but not connected to strategy).
- **Frustration:** Repeatedly creating one-off decks and documents that don't connect to a single source of truth; AI and new team members can't "drill down" to understand how you think.
- **Opening pattern (mix it up):** Don't default to the same "Throughout my career..." every time. For this article, consider a more specific opener:
  - **Salesforce + decks:** Over the last 10 years at Salesforce we've been a very meeting-driven, face-to-face organization; I've created hundreds of strategy decks to speak to one leader or another. We move slides around from deck to deck, but we fail to recognize **consistent resources** and **consistent descriptive information** that power those facts.
  - **AI shift:** During the generative AI transformation, working with agents in the last year, I've found that the Pyramid pattern really amplifies my ability to work, answer questions, and accelerate—because I have a lot of **language-based building blocks** to work with.
- **Key point:** The breakthrough is treating technical writing like software: decompose into levels of abstraction, then reuse and tailor. (Optional: still use "Throughout my career" or "Time and time again" elsewhere if it fits, but the hook can lead with the Salesforce + AI story.)

### 3. Intro and intent

- **Intent:** Introduce an approach that applies **decomposition** to technical writing so each layer has a clear purpose and can be reused.
- **Purpose:** Help readers structure their own doc ecosystems and make their strategic thinking accessible to AI (Cursor, Copilot) and to colleagues who need to drill from exec summary to detail.
- **Justification (brief):** Mirrors levels of the business; makes artifacts reusable; builds ground truth for AI instead of one-off messaging.

### 4. The Pyramid framework (overview)

- **One-sentence definition:** The Pyramid approach is a four-level model for organizing technical writing from foundational frameworks (how you see the world) at the base to executive briefings (audience-specific messages) at the top, so each layer is a reusable part and readers or AI can drill one layer deeper when they need more.
- **Origin:** Emerged from practice—designing docs for product, architecture, and strategy; needing to support both exec conversations and deep dives.
- **Diagram:** Single Pyramid figure (four tiers, base = Level 1, top = Level 4), with optional "drill down" arrows. Labels: Foundational frameworks → Artifacts → Strategy documents → Executive briefing.
- **C4 parallel:** Draw an explicit parallel to the **C4 model** for software architecture. C4 uses four levels—**System (context)** → **Containers** → **Components** → **Code**—to describe scale and scope and let you zoom from high-level context down to implementation detail. The Pyramid does the same for docs: **Executive briefing** (the "context" for this audience) → **Strategy documents** → **Artifacts** → **Foundational frameworks** (the "code" of how you see the world). Same idea: four levels, each with a clear scale and scope; drill down when you need more detail. Readers who know C4 will immediately get the Pyramid. Call this out in the overview (and optionally in the diagram or a short callout).

### 5. Framework elements (four levels)

- **Level 1 — Foundational frameworks**
  - Definition: Immutable or stable building blocks—dimensions, diagrams, RACI-like views—that express how you view the world. Can be aggregated into a diagram or short explanation.
  - Examples: A dimension you use to break the world up; how you see relationships; ownership vs. roles.
  - Role: Selected to influence higher-level docs; the "foundational truth" with tactical arguments.

- **Level 2 — Artifacts**
  - Definition: Granular, specific documents—many per area—that describe what something is in detail.
  - Examples: TDDs, PRDs, C4 diagram sets for a feature or solution.
  - Role: Support strategy docs; readers drill here for detail.

- **Level 3 — Strategy documents**
  - Definition: High-level strategic views that simplify and distill an artifact domain; typically one (or a small set) per strategic topic.
  - Examples: Current-state architecture, future-state architecture, product definition, job-to-be-done.
  - Role: Explain the strategic view; support the briefing; link to artifacts below.

- **Level 4 — Executive briefing**
  - Definition: Audience- and purpose-specific deliverable (deck, one-hour presentation).
  - Role: Each slide/section links to strategy docs (and thus to artifacts and frameworks); enables "drill one layer deeper."

### 6. Integration (how levels connect)

- **Drill-down path:** Briefing → strategy → artifacts → frameworks. At each step, the reader (or AI) gets more detail and more "why." (Same "zoom in" idea as C4: from system context down to code.)
- **Reuse:** When writing a strategy doc, you pull from artifacts and frameworks; when building a briefing, you pull from strategy docs. No reinvention per audience.
- **Not a full knowledge graph:** Hierarchical/taxonomy; mind-map-like in some ways; each piece has a specific purpose at a specific level.
- **C4 analogy (recap):** Scale and scope at each level—like C4, you don't mix system-level and code-level detail on one diagram; in the Pyramid, you don't mix briefing slides with raw artifact text. Each level has a consistent grain.

### 7. Application (how you use it)

- **Outline top-down, write bottom-up:** When you get an ask, go into **outlining mode**—start at the top (the deliverable), work down to define structure. When you **write**, start at the **leaves** (frameworks → artifacts → strategy); build rich context, then **let the AI roll it up** into the outline. The author has shifted from a **top-down writer** (straight to the deck) to a **bottom-up writer** (foundations first; can't write upper levels well without articulating why the frameworks work).
- **In practice:** How the author uses the pyramid—e.g., maintaining foundational frameworks in a shared space; writing strategy docs that reference artifacts; building briefings that link to strategy. Name tools if relevant (e.g., Cursor, git, Notion, Confluence).
- **AI use:** How Cursor or other agents use these docs as grounding—high-level answers with ability to drill into strategy, artifacts, frameworks when needed. "Virtualizing" leadership strategy.

### 8. Example (worked)

- **One concrete example:** e.g., a single exec briefing (e.g., "Current state vs. future state architecture") with one or two slides; show which strategy doc(s) sit underneath; which artifacts feed those; which framework(s) underpin the view. Keep it tight but real.

### 9. Measurement / maturity (how you know it's working)

- **Signals:** When the pyramid is working: less one-off doc creation; AI or new hires can answer "why" by drilling down; strategy docs get reused across multiple briefings; fewer "where's the source of truth?" questions.
- **Gap analysis (3–5 failure modes):** e.g., Missing Level 1 → inconsistent worldview across docs. Missing Level 2 → strategy with no evidence. Missing Level 3 → deck with no durable strategy behind it. Skipping levels → confusion about what's canonical.

### 10. Conclusion and next steps

- **Summary:** The Pyramid approach makes technical writing reusable and AI-groundable by decomposing it into four levels and linking them explicitly. The shift to **outline top-down, write bottom-up** (and to being a **bottom-up writer**) is key.
- **Next steps:** Align with framework spec §9: (1) Outline top-down for the next ask; (2) Build from the leaves (frameworks first, then artifacts, then strategy); (3) Roll up with AI into the outline; (4) Add metadata and structure so agents can navigate.

### 11. References

- **C4 model** — Cite explicitly (e.g., [c4model.com](https://c4model.com/)); the article should call out the four-level, scale-and-scope parallel so architects and engineers can map the Pyramid to a familiar mental model.
- Any other cited sources (e.g., writing on knowledge graphs, product management frameworks). Can be minimal for first draft.

---

## Interview questions (to collect more input and POV)

### Origin and problem

1. **When did you first start thinking about technical writing as layers? What specific problem were you solving?** (Origin story for the framework.)
2. **What's broken about the way most teams structure docs today?** (Pain points to sharpen the hook.)
3. **Can you describe one real example where you had an exec briefing, strategy docs, and artifacts all aligned? What did that feel like, and what made it work?** (Concrete example for the article.)

### Naming and positioning

4. **What do you call this in your head when you're explaining it to a colleague? What would you want a reader to remember most—the pyramid shape, the drill-down, the reuse, or the AI grounding?** (Naming and emphasis.)
5. **Who is the primary reader of this article: PMs, architects, execs, or a mix? How deep should we go on "foundational frameworks" vs. "artifacts" for that audience?** (Audience and depth.)

### AI and practice

6. **How do you want Cursor (or another agent) to use these docs when you're not in the room? What would "good" look like—e.g., answering a question by citing a strategy doc and then offering to drill into an artifact?** (AI use case for application section.)
7. **What tools do you actually use today to maintain the pyramid (e.g., folders, wikis, Cursor rules, tags)?** (Literal implementation for application section.)

### Edge cases and gaps

8. **What goes wrong most often when a level is missing or skipped?** (Failure modes for gap analysis.)
9. **Is there anything you'd add or change in the four levels after seeing them written down?** (Validation and refinement.)
