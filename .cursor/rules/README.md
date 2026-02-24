# Cursor Rules for Technical Writing

This repository uses **modern Cursor Project Rules** with intelligent application based on context and keywords.

## Architecture: AGENTS.md + Intelligent Rules

### AGENTS.md (Project Root)
**Always loaded** - Lightweight file (~80 lines) that provides:
- Repository purpose and context
- Core writing principles (voice, patterns, conventions)
- Framework requirements checklist
- File naming conventions
- Reference to available specialized rules

### Specialized Rules (Folders in `.cursor/rules/`)
**Applied intelligently** - Cursor's AI automatically loads these based on your task and keywords in the description.

#### Table 1: Rule directories (high-level agents)

| Directory | What this agent/domain does | Location |
|-----------|-----------------------------|----------|
| **technical-writing** | Voice, style, workflow, and execution for articles and docs (orchestration, author, reviewer, images, compaction, TLB voice/style) | `.cursor/rules/technical-writing/` |
| **solution-architecture** | Architecture research, repository discovery, and C4 diagram creation/validation | `.cursor/rules/solution-architecture/` |
| **solution-plan** | Phased documentation plans and plan review (atomic phases, RAID, DoD) | `.cursor/rules/solution-plan/` |
| **solution-requirements** | Requirements and specifications for doc/article work, plus requirements review | `.cursor/rules/solution-requirements/` |
| **business** | Business value analysis, prioritization (RICE, impact/effort), and training design | `.cursor/rules/business/` |
| **docs-zette** | Documentation organization: hierarchy, placement, directory structure, reorganization | `.cursor/rules/docs-zette/` |
| **cursor-rule-writing** | Creating, updating, and reviewing Cursor rules (manager, writer, reviewer) | `.cursor/rules/cursor-rule-writing/` |
| **framework-design** | Framework creation requirements (origin story, elements, diagrams, gap analysis, measurement) | `.cursor/rules/framework-design/` |
| **marketing** | LinkedIn and social optimization for posts and distribution | `.cursor/rules/marketing/` |
| **devops** | Version control, release workflow (GitFlow, Conventional Commits, PRs), session reflection | `.cursor/rules/devops/` |

#### Table 2: Rules by directory and skill (drill-down)

| Directory / rule | Summary (when to use this skill) |
|------------------|----------------------------------|
| **technical-writing/voice-and-style** | Repo voice and tone: personal, experiential, pattern language, no em dashes. Default for articles. |
| **technical-writing/voice-tlb** | TLB voice (full): vocabulary, sentence flow, pace, speaking patterns for technical docs. |
| **technical-writing/voice-tlb-compact** | TLB voice/style compact reference (tables for quick lookup). |
| **technical-writing/style-tlb** | TLB document structure: metadata templates, section patterns, formatting, RFC 2119 when needed. |
| **technical-writing/technical-writing-manager** | Orchestrate phases: requirements → prioritization → research → plan → author/reviewer/release. |
| **technical-writing/technical-writing-author** | Implement one phase at a time; write docs per voice/style and add-images. |
| **technical-writing/technical-writing-reviewer** | Validate docs for style, clarity, accuracy, completeness; C4 validation when diagrams present. |
| **technical-writing/add-images** | Add images with hidden HTML comment descriptions (e.g. for NotebookLM); placement and mutual exclusivity. |
| **technical-writing/compact-text** | Shorten docs 50%+ while preserving clarity (language efficiency, depth reduction, audience-aware). |
| **technical-writing/article-structure** | 8-part structure, section requirements, quality standards for articles and whitepapers. |
| **technical-writing/content-workflow** | End-to-end workflow: research → outline → draft → revision → polish; file naming, maintenance. |
| **solution-architecture/researcher** | Architecture approach and ADRs for docs/whitepapers; reuse patterns, document decisions. |
| **solution-architecture/repo-discovery** | Analyze a repo for architecture and quality; feed into research or C4 diagrams. |
| **solution-architecture/c4-diagram-manager** | Orchestrate C4 diagram creation and validation (routes to writer and reviewer). |
| **solution-architecture/c4-diagram-writer** | Create C4 diagrams in Mermaid following C4 notation. |
| **solution-architecture/c4-diagram-reviewer** | Validate C4 diagrams against C4 model standards and checklist. |
| **solution-plan/plan-engineer** | Break doc/article work into phased plan with RAID log and DoD per phase. |
| **solution-plan/plan-reviewer** | Review plan for atomicity, completeness, feasibility. |
| **solution-requirements/requirements-engineer** | Write specs (RFC 2119, unique IDs, traceability) for doc/article work. |
| **solution-requirements/requirements-reviewer** | Review requirements against rubric (functional, NFR, technical, doc quality). |
| **business/value-analyst** | Value chain, VRIO, SWOT for doc/article initiatives. |
| **business/priority-analyst** | RICE and impact/effort prioritization; proceed/defer/reject recommendation. |
| **business/training-expert** | Backwards-design training and enablement materials for docs/workflows. |
| **docs-zette/manager** | Route to structure analyst, directory builder, placement analyst, or reorg analyst. |
| **docs-zette/structure-analyst** | Propose docs hierarchy and ontology. |
| **docs-zette/directory-builder** | Create/update dirs and READMEs from ontology. |
| **docs-zette/placement-analyst** | Recommend path for a single document. |
| **docs-zette/reorganization-analyst** | Plan and execute moves; update links and READMEs. |
| **cursor-rule-writing/manager** | Orchestrate rule creation and review (writer → reviewer). |
| **cursor-rule-writing/writer** | Create or update Cursor rules per patterns and conventions. |
| **cursor-rule-writing/reviewer** | Review rules for quality and consistency. |
| **framework-design/framework-development** | Framework completeness: origin story, definitions, diagrams, gap analysis, measurement. |
| **marketing/linkedin-optimization** | LinkedIn algorithm, engagement, post structure, hashtags, timing. |
| **devops/version-control** | Git practices, commit messages, changelog, branching. |
| **devops/release-engineer** | GitFlow, Conventional Commits, PR discipline, branch naming for doc delivery. |
| **devops/session-reflection** | Post-session reflection and continuous improvement of rules/templates. |

## How Intelligent Application Works

### Keyword-Based Triggering
Each rule has a rich description with keywords that help Cursor's AI decide when to apply it:

**Example:** `technical-writing/voice-and-style`
```yaml
description: "Apply when writing or editing articles... Keywords: writing, editing, voice, tone, style, article, content, phrasing, wording, language, prose"
```

When you say "I'm editing this article" or "How should I phrase this?", Cursor recognizes keywords like "editing", "article", "phrase" and automatically loads the `technical-writing/voice-and-style` rule.

### Context-Aware Loading
Cursor's AI analyzes:
- **Your query** - What you're asking about
- **File context** - What file you're working in
- **Task type** - What you're trying to accomplish
- **Keywords** - Matches against rule descriptions

### Automatic vs Manual

**Automatic (Recommended):**
```
You: "I'm creating a new framework about DevOps maturity"
AI: *Automatically loads framework-design/framework-development*
```

**Manual (@-mention):**
```
You: "@technical-writing/voice-and-style - Review my opening"
AI: *Explicitly loads specified rule*
```

## Modern Folder-Based Structure

Following Cursor's current best practices (as of v2.2+):

```
AGENTS.md                                       # Core context (always loaded)
.cursor/
├── docs/
│   ├── how-rules-work-together.md             # Visual guide (system-level)
│   └── quick-reference.md                      # Quick standards (system-level)
└── rules/
    ├── README.md                               # This file
    ├── technical-writing/                      # Voice, style, workflow, manager, author, reviewer, add-images, compact-text, voice-tlb, style-tlb
    ├── solution-architecture/                  # Researcher, repo-discovery, C4 diagram manager/writer/reviewer (see README)
    ├── solution-plan/                          # Plan engineer, plan reviewer (see README)
    ├── solution-requirements/                   # Requirements engineer, requirements reviewer (see README)
    ├── business/                               # Value analyst, priority analyst, training expert (see README)
    ├── docs-zette/                             # Docs organization: manager, structure, directory, placement, reorg (see README)
    ├── cursor-rule-writing/                    # Manager, writer, reviewer for Cursor rules (see README)
    ├── framework-design/
    │   └── framework-development/RULE.md
    ├── marketing/
    │   └── linkedin-optimization/RULE.md
    └── devops/
        ├── version-control/RULE.md
        ├── release-engineer/RULE.md
        └── session-reflection/RULE.md
```

## Why This Architecture?

### Context Efficiency
- **Baseline:** AGENTS.md (~80 lines, always loaded)
- **On-demand:** One or more rules loaded by context (see Table 1 and Table 2 above; 36 rules across 10 directories)
- **Result:** Minimal baseline, intelligent loading

### Intelligent vs Always Apply

**Old approach (.cursorrules with alwaysApply: true):**
```
❌ All rules always loaded = 1,253+ lines every session
❌ Wastes context window
❌ Not scalable
```

**New approach (AGENTS.md + intelligent rules):**
```
✅ Baseline: ~80 lines
✅ AI loads relevant rules based on task
✅ Efficient and scalable
```

### Modern Best Practices
✅ **AGENTS.md** instead of deprecated `.cursorrules`
✅ **Folder-based** rules instead of `.mdc` files
✅ **Intelligent application** instead of `alwaysApply: true`
✅ **Keyword-rich descriptions** for better AI matching

## Rule Descriptions with Keywords

**Newer domains** (solution-architecture, solution-plan, solution-requirements, business, docs-zette, cursor-rule-writing) each have a README in their directory with chain descriptions and when to use which rule. Table 2 above gives a one-line summary per rule; for trigger keywords and full behavior, see the `description` frontmatter in each rule's RULE.md.

### technical-writing/voice-and-style
**Triggers on:** writing, editing, voice, tone, style, article, content, phrasing, wording, language, prose

**Use when:**
- Writing or editing any content
- Questions about voice or tone
- Phrasing or wording help
- Style guidance needed

### framework-design/framework-development
**Triggers on:** framework, model, structure, elements, components, origin story, definitions, diagrams, sequence, gap analysis, failure modes, measurement, maturity, capability, assessment

**Use when:**
- Creating new frameworks
- Extending existing frameworks
- Checking framework completeness
- Developing visual diagrams

### technical-writing/article-structure
**Triggers on:** structure, organization, sections, outline, format, quality, completeness, hook, introduction, conclusion, references, formatting, headings, whitepaper, case study, measurement guide

**Use when:**
- Structuring new articles
- Checking article completeness
- Organizing content
- Quality review

### technical-writing/content-workflow
**Triggers on:** workflow, process, phases, steps, research, outline, draft, revision, polish, review, editing, extending, repository, maintenance, file naming, images, best practices

**Use when:**
- Planning content creation
- Following editing process
- Repository maintenance
- File management questions

### devops/version-control
**Triggers on:** commit, git, version, release, changelog, merge, branch, pull request, PR, staging, deployment, version control, commit message, git history

**Use when:**
- Writing commit messages
- Creating branches or PRs
- Version tagging or releases
- Git operations and troubleshooting
- Maintaining CHANGELOG

### devops/release-engineer
**Triggers on:** release, GitFlow, PR, branch naming, Conventional Commits, merge, push, commit message (when beyond basic version-control)

**Use when:**
- Creating PRs or following a release workflow
- Branch naming and merge discipline for doc delivery
- Conventional Commits and PR title format

### devops/session-reflection
**Triggers on:** reflection, retrospective, improvement, learnings, process, quality, voice, patterns, session end, wrap up, review, what worked, what didn't

**Use when:**
- Completing major work items
- End of work sessions
- Capturing learnings
- Improving processes and rules
- Updating templates and checklists

### marketing/linkedin-optimization
**Triggers on:** marketing, LinkedIn, social media, post, engagement, impressions, algorithm, hashtags, sharing, promotion, distribution, audience, reach, external article, commentary

**Use when:**
- Creating LinkedIn posts for articles
- Sharing external content with commentary
- Optimizing posts for engagement
- Planning content distribution
- Analyzing post performance
- Choosing hashtags and timing

## Benefits

### For AI Performance
✅ Minimal baseline context (~80 lines)
✅ Intelligent loading based on actual need
✅ Faster response times
✅ More room for your code in context window

### For Users
✅ Natural interaction - just describe what you're doing
✅ No need to remember which rule to invoke
✅ Can still @-mention for explicit control
✅ Consistent guidance when relevant

### For Maintainability
✅ Modern folder-based structure
✅ Easy to add new rules without bloating baseline
✅ Clear separation of concerns
✅ Future-proof (follows Cursor's current direction)

## Migration from Previous Versions

### v1.0 → v2.0 → v3.0

**v1.0:** Folder-based with `alwaysApply: true`
- All rules always loaded
- 1,253 lines baseline

**v2.0:** .mdc files with `.cursorrules` orchestrator
- Dynamic loading via orchestrator
- ~100 lines baseline + on-demand

**v3.0 (Current):** Folder-based with `AGENTS.md` + intelligent application
- AI decides when to load based on keywords
- ~80 lines baseline
- Modern, future-proof architecture

## Usage Examples

### Automatic Application (Most Common)

```
You: "I'm writing a new framework article"
AI: *Detects keywords: "writing", "framework", "article"*
AI: *Loads: framework-design/framework-development + technical-writing/voice-and-style*
```

```
You: "How should I structure this whitepaper?"
AI: *Detects keywords: "structure", "whitepaper"*
AI: *Loads: technical-writing/article-structure*
```

```
You: "What's the workflow for creating content?"
AI: *Detects keywords: "workflow", "creating"*
AI: *Loads: technical-writing/content-workflow*
```

### Explicit Invocation (When Needed)

```
You: "@technical-writing-voice-and-style - Is my tone right?"
AI: *Explicitly loads specified rule*
```

### Quick Questions (AGENTS.md Only)

```
You: "What's the file naming convention?"
AI: *Answers from AGENTS.md (included in core principles)*
AI: *No additional rule loaded*
```

## Best Practices

### For Writing Descriptions
- Include rich, relevant keywords
- Describe when the rule should apply
- Use terms users naturally say
- Think about task types

### For Rule Content
- Keep rules focused (one clear purpose per rule)
- Comprehensive within scope
- Reference other rules when needed (use paths like `technical-writing/voice-tlb/RULE.md`)

### For Users
- Trust the AI to load relevant rules
- Use @-mentions for explicit control
- Describe your task naturally
- Check AGENTS.md for quick answers

## References

- [Cursor Rules Documentation](https://cursor.com/docs/context/rules)
- [AGENTS.md Documentation](https://cursor.com/docs/context/rules#agentsmd)
- [Best Practices for MDC Files](https://medium.com/@ror.venkat/mastering-mdc-files-in-cursor-best-practices-f535e670f651)

## Version History

- **v3.1** (2026-02): Integrated agentic writing rules; two-level rules index
  - Added solution-architecture, solution-plan, solution-requirements, business, docs-zette, cursor-rule-writing (from agentic-sdlc-spec-driven-design rules-writing).
  - Added technical-writing-manager, technical-writing-author, technical-writing-reviewer, add-images, compact-text, voice-tlb, voice-tlb-compact, style-tlb; devops/release-engineer.
  - README: Table 1 (directories/agents) and Table 2 (directory/rule with skill summary) for full hierarchy.
  - Per-directory READMEs for newer domains; voice/style comparative analysis documented in .cursor/plans/.

- **v3.0** (2025-12-23): Modern intelligent application system
  - Migrated to AGENTS.md (replaces deprecated .cursorrules)
  - Folder-based RULE.md files (modern Cursor v2.2+ standard)
  - Intelligent application based on keyword-rich descriptions
  - AI decides when to load rules based on context
  - ~80 lines baseline, intelligent loading

- **v2.0** (2025-12-23): Dynamic rule system
  - .cursorrules orchestrator + .mdc files
  - On-demand loading
  - ~100 lines baseline

- **v1.0** (2025-12-23): Initial modular structure
  - Folder-based with alwaysApply: true
  - 1,253 lines always loaded
