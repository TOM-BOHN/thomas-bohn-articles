# Pyramid Approach — Interview Answers

**Purpose:** Capture author answers for folding into the whitepaper.  
**Source:** [pyramid_approach_article_outline.md](pyramid_approach_article_outline.md) — Interview questions.  
**Date:** 2026-03-01

---

## Group 1: Origin and problem

### Q1. When did you first start thinking about technical writing as layers? What specific problem were you solving?

- Always been a **frameworks-oriented person**; interested in digesting problems and breaking them into smaller components.
- Past work: **knowledge bases**, thinking about categories needed to answer questions, domains, etc. "Breaking it into parts has always been there."
- **Super charged** working in Cursor and with agents more recently. Getting just the context you need for a specific problem; **zoom in and zoom out** feels like a feature of the **agentic flow**.
- Over the last **year** working in Cursor and with agents (both for **coding and writing**), found this pattern **highly effective**.

### Q2. What's broken about the way most teams structure docs today?

- Might not even be the **writing itself**. It's the **directory structure and hierarchy** for how you store content—and recognizing that **the story you tell is different from how you organize the knowledge** that powers those stories.
- We tend to store knowledge like **verbal storytelling knowledge**—"books on a shelf."
- AI and **reusable parts** work much better when you break it down into **specific problem-solving themes and frameworks**. You need a lot of **background story and background source material** that doesn't always get told to customers or the internal audience you're presenting to.

### Q3. One real example: exec briefing, strategy docs, and artifacts aligned — what did that feel like, what made it work?

**Example: Technical Health Score (THS)**

- Context: Telemetry; how we define technical health, refine the definition, understand the background; address maturing and modernizing telemetry.
- **Audience:** Senior leadership (VPs and above)—high-level conversations about where we're going, how we're doing it. Those conversations are based on a lot of **specifics about how the business runs**.
- Used the Pyramid framework to break things out: needed a **clean 30-minute presentation**—persuasive, executive slides, polished talk track, **lean, efficient, fast**.
- Had to cover strategic areas: **current state**, definition, how we break apart the problem and think about the product, **current state, future state**, solution design and architecture—**not just one product area but several** (they all interact).
- At the strategy level: didn't always know how to solve the whole problem but knew how to solve **specific parts**. Needed to provide **frameworks** that wouldn't move much—even within strategy decks and foundational PRDs, designs, deep-dive analytical docs (current state, future state, what the product is, how it works).
- "I knew I didn't know everything, but I knew I knew **specific things** and I had a **strong point of view** on specific parts of the problem."
- Wanted to **collaboratively write with AI** and generate new ideas but **didn't want the frameworks to move**.
- **Flow:** Started by **documenting the frameworks** → then applied them to areas where he had less understanding → **rolled it up**. Built a **wide base** with much higher velocity using AI technical writing; built a lot of **ground truth**, captured his ideas and how he sees the world → then **aggregated up** to the persuasive document that **picks those pieces** and tells the right story for the right audience.
- That's the real-world example: THS, 30-min exec deck, strategy areas, multiple product areas, frameworks first, then roll up with AI.

---

## Group 2: Naming and positioning

### Q4. What do you call this in your head? What would you want a reader to remember most—pyramid shape, drill-down, reuse, or AI grounding?

- Doesn't really call it "pyramid style writing" in his head.
- For him it's **framework-grounded writing** probably.
- Also thinking a lot about **decomposition**: how to **decompose strategic asks** into these **grounding components** and then **rebuild it back up**.
- So: **decomposition** is there, **grounding** is there, **building the story out of raw materials** in his head.

### Q5. Who is the primary reader? How deep on "foundational frameworks" vs. "artifacts"?

- **PMs, architects, and execs** are the right group—probably **more grounded on PMs and architects**.
- **Product management** and **engineering designers who are very technical** are moving together with AI; both have the need to build **high-quality materials** that describe their ideas and point of view to influence others.
- **Executives** always want to give these presentations, but they don't do the full stack—they go to their **"writing rooms"** (PMs and architects) that help them get there.
- So executives would **want to ask their teams** to do things this way so they have a lot of **source material** when they have conversations with customers or partners—but **execs wouldn't be doing the full architecture stack; PMs and architects would**. Executives get a lot of benefit from their organizations doing things this way.

---

## Group 3: AI and practice

### Q6. How do you want Cursor (or another agent) to use these docs when you're not in the room? What would "good" look like?

- Want these (docs, frameworks, POV) available to **technical writing**, **conversations**, and **people**—and **as we write code**, these points of view and frameworks should **inform the physical code** we write in our products.
- Give that **context and background to agents** just as we would give it to **new team members**. So: same ground truth for humans and for agents (writing and code).

### Q7. What tools do you actually use today to maintain the pyramid?

- **Cursor IDE** — doing this flow right now; lots of **technical writing rules** in Cursor for technical writing.
- **Zettelkasten-like principles** (not exact matches) — **directory organization rules** to bucket information into the right places.
- **Roll-ups** happen through Cursor; content **persistent in GitHub repositories**; **rich directory structures** — best velocity and acceleration for **pulling in context through agentic conversations**.
- **Docusaurus** — Wiki-style documentation sites around strategy (and technical docs) as **internal public sites**; "writing as code → distribution of that writing as code through a website interface."
- **Slack** — bridge documents into **Slack canvas**; drop a doc, share with users who don't have code access (Markdown compatible).
- **Start in Markdown** → use Markdown to put content where it needs to go. **Ground truth / source of truth** = Git repo with all documents; **distribution channels** (Slack, Docusaurus, Google Docs) to share **snapshots**.
- **Google Docs** — e.g. pocket guide; can **import Markdown into Google Docs**; source of truth stays in Git.
- **Slack + AI ("Virtual Tom" / "Virtual Thomas")** — product management strategic documents + **Slack AI wrapper**; Slack bot with all those docs as **grounding** (RAG). Get ideas out into words/documents, structure them well → **AI chat with that grounding** = deflect product questions. When something **breaks through** (bot can't answer), you haven't fully answered it in writing yet—"great problem to have" because now you know what to go write. **Ecosystem:** your ideas create **virtual product management** out there answering questions.
- Applying this to the **public space** too (e.g. how he shares ideas, this articles repo).
- **Cursor is huge** but success possible with **any agentic experience** (maybe even a UI); critical piece = **connecting existing files and rules to an agentic experience**.

---

## Group 4: Edge cases and gaps

### Q8. What goes wrong most when a level is missing or skipped?

**Failure mode 1: Taxonomy and hierarchy**
- Getting your **taxonomy and hierarchy of directories** (where content goes, how you explain it) is **hard to get right on the first pass**; you may have to keep iterating.
- Every iteration **breaks a lot of links** and you have to **refactor how content connects**. Moving content in directories in Git isn't hard but **takes labor**; that volume of moves is **tricky even for agents**—good for the first go, but **organization is hard and naming is hard**.
- So the biggest failure mode = **getting the hierarchy right**. **Spend time initially** to figure out: what are your **major artifacts**, how will you **organize your ideas**, and give yourself a **roadmap for your taxonomy** that you can **grow into over time**—**before you have tons of documents**. Not new—**knowledge management** concepts playing out in the agentic space.

**Failure mode 2: Stochastic output and the need for a human editor**
- AI-generated content (e.g. **embedding AI-generated images**) is **stochastic**; best case **85–99% accurate**; you'll have **small deviations** from where you want to direct the knowledge.
- The other failure = **getting comfortable with the process and not being the human editor** it still needs. You'll produce **a lot more documentation**, get more ideas out (e.g. if dictating)—but you have to **switch from writer to editor**: do a lot of **reading**, **critical reading and thinking**, **commenting**, **editing**, **redlining**, **giving feedback** so it stays on track; when you give that feedback, it goes back through and refines.
- Same as **software engineering**: it does a lot of writing; you have to be prepared to do **a lot of reading** (and editing/feedback).

### Q9. Anything you'd add or change in the four levels after seeing them written down?

- The levels as written are **pretty good**. Not sure he has the "right names" or "right scope" to fully explain what goes at each level, but **it's pretty close**.
