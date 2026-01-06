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
**Applied intelligently** - Cursor's AI automatically loads these based on your task and keywords in the description:

| Rule | When Applied | Lines | Location |
|------|--------------|-------|----------|
| `technical-writing/voice-and-style` | Writing, editing, voice, tone, style, language | 238 | `rules/technical-writing/voice-and-style/` |
| `technical-writing/article-structure` | Structure, organization, sections, outline, format | 518 | `rules/technical-writing/article-structure/` |
| `technical-writing/content-workflow` | Workflow, process, phases, steps, maintenance | 688 | `rules/technical-writing/content-workflow/` |
| `framework-design/framework-development` | Framework, model, structure, elements, gap analysis | 355 | `rules/framework-design/framework-development/` |
| `marketing/linkedin-optimization` | Marketing, LinkedIn, social media, posts, engagement | 650 | `rules/marketing/linkedin-optimization/` |
| `devops/version-control` | Commit, git, version, commit message, changelog | 165 | `rules/devops/version-control/` |
| `devops/session-reflection` | Reflection, retrospective, improvement, learnings | 117 | `rules/devops/session-reflection/` |

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
    ├── technical-writing/                      # Write like a human, act like an editor
    │   ├── voice-and-style/RULE.md
    │   ├── article-structure/RULE.md
    │   └── content-workflow/RULE.md
    ├── framework-design/                       # Design emerging frameworks
    │   └── framework-development/RULE.md
    ├── marketing/                              # Write posts and marketing materials
    │   └── linkedin-optimization/RULE.md
    └── devops/                                # Manage writing like code
        ├── version-control/RULE.md
        └── session-reflection/RULE.md
```

## Why This Architecture?

### Context Efficiency
- **Baseline:** AGENTS.md (~80 lines, always loaded)
- **On-demand:** 230-632 lines (only when AI determines it's relevant)
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
- Keep rules focused (under 650 lines)
- One clear purpose per rule
- Comprehensive within scope
- Reference other rules when needed

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
