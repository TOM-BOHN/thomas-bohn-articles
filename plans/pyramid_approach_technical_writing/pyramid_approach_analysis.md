# Pyramid Approach Article — Draft Analysis Memo

**Purpose:** Assess the first draft for style, consistency, persuasiveness, and technical quality; produce a prioritized list of issues for the editing cycle.  
**Draft:** [whitepapers/pyramid_approach_technical_writing.md](../../whitepapers/pyramid_approach_technical_writing.md)  
**Date:** 2026-03-01  

**Propagation note (post-edits):** Changes from the outline, framework spec, and framework capture have been propagated across resources: (1) **Whitepaper** — Problem section now uses the Salesforce + hundreds of decks + agents + language-based building blocks opener; Pyramid overview and Integration include the C4 parallel and consistent-grain point; How I Use It describes outline top-down / write bottom-up and bottom-up writer; Conclusion next steps match spec §9 (outline top-down, build from leaves, roll up). (2) **Framework capture** — C4 parallel and outline top-down / write bottom-up / bottom-up writer added to Rationale. (3) **Article outline** — Application section and Conclusion/next steps updated for outline top-down, write bottom-up, and spec-aligned next steps. (4) **Framework spec** — C4 parallel added to §4 Relationships. All four Pyramid resources are now aligned on these themes.

---

## Summary verdict

The draft is **strong and ready for editing**. It follows the framework spec, uses consistent terminology, and hits the intended depth. The main work in the editing cycle is to tighten a few sections, add one pattern-recognition phrase where it fits, fix a minor reference path, and ensure the conclusion doesn’t repeat the executive summary verbatim.

---

## Strengths

- **Voice and opening:** First-person throughout; problem-focused opening ("How do you make technical writing reusable...?"); "Throughout my career" and "These conversations follow a familiar pattern" align with repo voice. The "Then I asked myself: what if we treated technical writing like software?" moment is clear and effective.
- **Terminology:** The four levels are named consistently (foundational frameworks, artifacts, strategy documents, executive briefing). Key terms—**ground truth**, **reusable part**, **drill one layer deeper**, **virtualizes**—are bolded on first use and used consistently.
- **Structure:** Matches the 8-part / framework pattern: hook, intro, intent, framework overview, four levels, integration, worked example, application, failure modes, measurement, conclusion, references. Table of contents is implicit in headings; no redundant TOC needed for this length.
- **Technical accuracy:** Aligns with the framework spec; drill-down path and linking rule are correct; the worked example (current-state vs. future-state) is concrete and traceable across all four levels.
- **Persuasiveness:** The "why" is clear (reuse, AI grounding, virtualization of leadership). Benefits are explicit and credible. Failure modes and fixes are actionable.
- **Diagram and metadata:** Image placeholder and description are in place; doc type, status, owner, and last updated are present.

---

## Gaps and issues (prioritized for Task 6)

### High priority (fix in editing cycle)

1. **References section — path to framework spec.** The line "Framework specification...: `plans/pyramid_approach_technical_writing/pyramid_approach_framework_spec.md`" assumes the reader is at repo root. For a published whitepaper, either use a path relative to the whitepaper (e.g. `../plans/pyramid_approach_technical_writing/pyramid_approach_framework_spec.md`) or a generic note ("see the framework specification in the plans directory"). **Action:** Use a relative path from the whitepaper or a short, generic reference so it works from the article’s location.

2. **Conclusion vs. executive summary.** The conclusion’s first paragraph and the "Next steps" list closely mirror the executive summary and the "How You Know It’s Working" section. **Action:** Shorten the conclusion’s opening to one or two sentences that add closure (e.g., what the reader can do next) and avoid repeating the summary; keep the numbered next steps but ensure they’re not duplicated elsewhere word-for-word.

3. **AGENTS.md reference.** The References section links to "AGENTS.md" and ".cursor/resources/technical-writing/" without paths. From `whitepapers/` these would be `../AGENTS.md` and `../.cursor/resources/technical-writing/`. **Action:** Use correct relative paths or neutral wording ("repository root" / "this repo") so links resolve from the whitepaper.

### Medium priority (improve in editing cycle)

4. **Pattern-recognition phrase.** The opening uses "Throughout my career" and "These conversations follow a familiar pattern." One more TLB-style phrase could reinforce voice—e.g., "Time and time again" or "With remarkable consistency" in the problem section or when introducing the Pyramid. **Action:** Add one such phrase where it fits naturally (e.g., in "The Problem: Docs That Don’t Stack" or at the start of "The Pyramid Framework").

5. **Intent and Purpose section.** The numbered list is clear but a bit long (four items). Consider a one-sentence lead-in that states the single intent ("The intent of this framework is to give you a model for organizing technical and product documentation so that each piece has a clear purpose, reuse is built in, drill-down is possible, and AI has ground truth.") then keep the list as the expansion. **Action:** Optionally add that one-sentence summary before the list to improve skimmability.

6. **"How I Use It" — tools.** The draft says "folder or doc structure," "metadata," "explicit links" but doesn’t name specific tools (e.g., Cursor, Confluence, Notion, git). The outline asked to "name tools if relevant." **Action:** Add one or two concrete tool names (e.g., "I use Cursor and a shared wiki" or "in Cursor and our wiki") so the application section feels more literal and implementable.

### Low priority (optional polish)

7. **Executive summary length.** The second paragraph is dense (four levels + reuse + drill-down + ground truth + virtualizes). **Action:** If word count allows, consider splitting into two short paragraphs (what the Pyramid is; what it enables for AI and reuse).

8. **Worked example — "you" vs. "I."** The example uses "Suppose you're presenting" and "you have." For consistency with first-person elsewhere, "Suppose I'm presenting" and "I have" could be used, or keep "you" for direct address. **Action:** Decide consistently: either "I" for the example or keep "you" and add a brief note that the example is written in "you" to put the reader in the scenario.

9. **Maturity view.** The sentence "Aim for Reused and Maintained" is clear. **Action:** No change required; optional tweak: "Aim for Reused and Maintained so the pyramid stays current and discoverable."

---

## Consistency check

- **Level names:** Used consistently (Foundational frameworks, Artifacts, Strategy documents, Executive briefing).
- **Bold:** Key terms bolded on first use; no missing definitions.
- **Tone:** Conversational but professional; no academic or corporate jargon.
- **Active voice:** Predominant; no passive heavy sections noted.
- **Heading hierarchy:** # for title, ## for main sections, ### for subsections (four levels, failure modes). Correct.

---

## Recommendation for Task 6

Proceed with a **section-by-section edit** in this order:

1. References (fix paths; high priority).
2. Conclusion (shorten opening; avoid repeating executive summary; high priority).
3. The Problem + The Pyramid Framework (add one pattern-recognition phrase; medium).
4. Intent and Purpose (optional one-sentence lead-in; medium).
5. How I Use It (add one or two tool names; medium).
6. Executive summary (optional paragraph split; low).
7. Worked example (optional "I" vs. "you" consistency; low).
8. Full read for flow and any remaining repetition.

No structural or technical changes to the framework content are required; the draft is accurate and complete relative to the spec.
