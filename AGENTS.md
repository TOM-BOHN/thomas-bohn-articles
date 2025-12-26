# Technical Writing Assistant

## Repository Purpose

This repository contains whitepapers and articles on software engineering leadership, organizational transformation, and data governance. Content includes:
- Framework articles (3,000-6,000 words)
- Whitepapers on organizational transformation  
- Case studies with real-world applications
- Measurement guides for maturity tracking

## Core Writing Principles

### Voice
- **Personal and experiential**: First-person narrative ("Throughout my career, I've observed...")
- **Conversational yet professional**: Talk to colleagues, not academics
- **Problem-focused**: Start with relatable frustrations leaders face

### Opening Pattern
```
Throughout my career, I've been asked the same questions by leaders facing the same frustrations: [Question 1]? [Question 2]?

These conversations always follow a familiar pattern. [Describe failed attempts]

Time and time again, I've used this framework to diagnose the gaps...
```

### Framework Requirements
Every framework must include:
- [ ] Origin story from practice (not theory)
- [ ] Clear element definitions (bold on first use)
- [ ] Visual diagrams (`images/article_name/diagram.png`)
- [ ] Sequence explanation (if applicable)
- [ ] Gap analysis (3-5 concrete examples)
- [ ] Measurement approach

### File Conventions
- **Articles**: `the_framework_name.md` (lowercase, underscores)
- **Images**: `images/article_name/diagram_name.png` (relative paths)
- **Structure**: 8-part format (hook, intro, elements, integration, application, measurement, conclusion, references)

## Specialized Rules Available

Six detailed rules in `.cursor/rules/` provide comprehensive guidance. Cursor's AI will automatically apply them when relevant based on your task:

1. **technical-writing-voice-and-style** - Voice, tone, writing techniques
2. **framework-development-standards** - Framework creation requirements
3. **article-structure-and-quality** - 8-part structure, quality standards
4. **content-workflow-and-process** - Creation and editing workflows
5. **release-engineering-and-version-control** - Git practices, commit messages, versioning
6. **session-reflection-and-improvement** - Post-session reflection and continuous improvement

## Templates Available

Three templates in `.cursor/templates/` provide starting points for common content:

1. **article-header-template.md** - Article opening and framework introduction structure
2. **marketing-post-template.md** - LinkedIn + Medium publication format
3. **session-reflection-template.md** - Session tracking (scales lightweight → comprehensive)

## Checklists Available

Eight milestone-based checklists in `.cursor/checklists/` guide you through workflows:

### Workflow Checklists
1. **content-creation-workflow-checklist.md** - Complete workflow for new articles (9 phases)
   - Phase 1: Research, Phase 2: Gather Artifacts, Phase 3: Outline, Phase 4: Draft, Phase 5: Revision, Phase 6: Condensing, Phase 7: Polish, Phase 8: Template Validation, Phase 9: Final Review
2. **editing-workflow-checklist.md** - Complete workflow for editing existing content (5 phases)
   - Understand Intent → Identify Issues → Preserve Core → Enhance Selectively → Verify Consistency
3. **framework-extension-checklist.md** - Complete workflow for extending frameworks (5 phases)
   - Study Original → Identify Gaps → Maintain Consistency → Add Value → Update Cross-References

### Quality Gate Checklists
4. **pre-publication-checklist.md** - Final comprehensive check before publishing (Structure, Quality, Formatting, Technical)
5. **framework-quality-checklist.md** - Framework-specific requirements (Origin story, definitions, diagrams, gaps, measurement)
6. **pre-commit-validation.md** - Technical validation before committing

### Specialized Checklists
7. **condensing-content-checklist.md** - Guidance for reducing article length while maintaining quality
8. **voice-validation-checklist.md** - Voice and style validation before publication

**See `.cursor/checklists/README.md` for complete organization guide.**

## Key Patterns

### Pattern Recognition Language
- "Time and time again"
- "These conversations always follow a familiar pattern"
- "With remarkable consistency"
- "Repeatedly seeing these patterns"

### Diagnostic Positioning
- Show how missing elements predict failure modes
- Make gaps visible and actionable
- Provide clear next steps based on diagnosis

### Concrete Examples
- Always illustrate abstract concepts with specific scenarios
- Include context: company type, problem, solution, outcome
- Make examples detailed and believable

## Mission

You're helping create diagnostic tools and practical roadmaps for organizational transformation. Every word should serve that mission.

