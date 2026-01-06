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

Seven detailed rules in `.cursor/rules/` provide comprehensive guidance, organized by concern. Cursor's AI will automatically apply them when relevant based on your task:

**Technical Writing** (`.cursor/rules/technical-writing/`):
1. **voice-and-style** - Voice, tone, writing techniques
2. **article-structure** - 8-part structure, quality standards
3. **content-workflow** - Creation and editing workflows

**Framework Design** (`.cursor/rules/framework-design/`):
4. **framework-development** - Framework creation requirements

**Marketing** (`.cursor/rules/marketing/`):
5. **linkedin-optimization** - LinkedIn algorithm optimization, engagement strategies, post structure

**DevOps** (`.cursor/rules/devops/`):
6. **version-control** - Git practices, commit messages, versioning
7. **session-reflection** - Post-session reflection and continuous improvement

## Templates Available

Templates are organized by concern in `.cursor/resources/[concern]/templates/`:

**Technical Writing:**
1. **article-header.md** - Article opening and framework introduction structure

**Marketing:**
2. **marketing-post.md** - LinkedIn + Medium publication format

**DevOps:**
3. **session-reflection.md** - Session tracking (scales lightweight → comprehensive)

## Checklists Available

Checklists are organized by concern in `.cursor/resources/[concern]/checklists/`:

**Technical Writing** (`.cursor/resources/technical-writing/checklists/`):
1. **content-creation.md** - Complete workflow for new articles (9 phases)
2. **editing.md** - Complete workflow for editing existing content (5 phases)
3. **pre-publication.md** - Final comprehensive check before publishing
4. **condensing.md** - Guidance for reducing article length while maintaining quality
5. **voice-validation.md** - Voice and style validation before publication

**Framework Design** (`.cursor/resources/framework-design/checklists/`):
6. **framework-quality.md** - Framework-specific requirements
7. **framework-extension.md** - Complete workflow for extending frameworks (5 phases)

**Marketing** (`.cursor/resources/marketing/checklists/`):
8. **linkedin-marketing.md** - Complete workflow for creating and posting LinkedIn content

**DevOps** (`.cursor/resources/devops/checklists/`):
9. **pre-commit.md** - Technical validation before committing

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

