# Voice/Style Comparative Analysis (Plan Step 0)

## Sources compared

| Source | Scope |
|--------|--------|
| **Existing** `technical-writing/voice-and-style/RULE.md` | Whitepapers and articles; repo-established voice (personal, experiential, pattern language, no em dashes, specific tools). |
| **Incoming** `technical-writing-voice-tlb.mdc` | TLB's voice: vocabulary, sentence structure, flow, speaking patterns, pace. Explicitly excludes structure/templates (→ style-tlb). |
| **Incoming** `technical-writing-voice-tlb_compact.mdc` | Compact table reference for voice + style; points to full voice-tlb and style-tlb for detail. |
| **Incoming** `technical-writing-style-tlb.mdc` | TLB's document structure: metadata templates, section patterns, formatting, RFC 2119. Explicitly excludes voice/tone (→ voice-tlb). |
| **Existing** `technical-writing/article-structure/RULE.md` | 8-part article structure, quality standards, section requirements for framework articles. |

## Decisions (merge vs keep separate)

| Pair | Decision | Reason |
|------|----------|--------|
| **voice-and-style** (existing) vs **voice-tlb** (full) | **Keep separate** | Same domain (technical writing) but different framing: existing = "this repo's article voice"; voice-tlb = "TLB's personal voice" (vocabulary, flow, dictation). Both stay; cross-reference in descriptions. |
| **voice-tlb** (full) vs **voice-tlb-compact** | **Keep separate** | By design: full = detailed; compact = quick lookup tables. Both retained. |
| **voice-and-style** vs **voice-tlb-compact** | **Keep separate** | Compact is TLB-specific reference; existing is repo voice. No merge. |
| **article-structure** (existing) vs **style-tlb** | **Keep separate** | article-structure = 8-part framework articles, quality standards; style-tlb = document metadata, section templates, formatting, RFC 2119. Different use cases (framework articles vs architecture/docs). |

## Reconciliation actions

1. **Existing voice-and-style:** Add a short "See also" line: "For TLB's detailed voice patterns use `voice-tlb`; for compact reference use `voice-tlb-compact`." No content merge.
2. **Incoming voice-tlb, voice-tlb-compact, style-tlb:** Convert to RULE.md in their own folders. Generalize "technical-health-arch", "Phase 6", "Salesforce platform" to articles repo context where needed.
3. **README:** In technical-writing README (or main rules README), state when to use which: voice-and-style = default article voice; voice-tlb / voice-tlb-compact = when writing in TLB's voice; style-tlb = when structuring docs with metadata/templates/RFC 2119.

## Outcome

All five remain distinct rules. No merges. Cross-references added so the right rule is chosen by context.
