# Development Environment

This document describes the spec-driven writing system used to create the articles in this repository.

## Overview

These articles were created using specification-driven development principles, treating writing as software engineering. Not metaphorically, but literally—using the same tools, processes, and discipline.

## Core Tools

- **Version Control**: Git for change management and collaboration
- **AI Assistance**: Cursor IDE (as of Dec 2025) for agentic development
- **Specifications**: Machine-readable rules in `.cursor/rules/` that guide both humans and agents
- **Validation**: Checklists in `.cursor/checklists/` for quality gates and workflow guidance
- **Templates**: Starting points in `.cursor/templates/` for common content patterns

## Tool-Agnostic Approach

The approach is tool-agnostic—any AI-powered development environment with file access and custom instructions can follow these patterns. The principles of specification-driven writing, automated validation, and iterative refinement apply regardless of specific tooling.

## Key Components

### 1. Specifications (`.cursor/rules/`)

Six specialized rules provide comprehensive guidance:

1. **technical-writing-voice-and-style** - Voice, tone, writing techniques
2. **framework-development-standards** - Framework creation requirements
3. **article-structure-and-quality** - 8-part structure, quality standards
4. **content-workflow-and-process** - Creation and editing workflows
5. **release-engineering-and-version-control** - Git practices, commit messages, versioning
6. **session-reflection-and-improvement** - Post-session reflection and continuous improvement

Rules are automatically loaded by the AI based on context, keywords, and task type.

### 2. Checklists (`.cursor/checklists/`)

Eight milestone-based checklists guide workflows:

**Workflow Checklists:**
- **content-creation-workflow-checklist.md** - Complete workflow for new articles (9 phases)
- **editing-workflow-checklist.md** - Complete workflow for editing existing content (5 phases)
- **framework-extension-checklist.md** - Complete workflow for extending frameworks (5 phases)

**Quality Gate Checklists:**
- **pre-publication-checklist.md** - Final comprehensive check before publishing
- **framework-quality-checklist.md** - Framework-specific requirements
- **pre-commit-validation.md** - Technical validation before committing

**Specialized Checklists:**
- **condensing-content-checklist.md** - Guidance for reducing article length
- **voice-validation-checklist.md** - Voice and style validation

### 3. Templates (`.cursor/templates/`)

Three templates provide starting points:

- **article-header-template.md** - Article opening and framework introduction structure
- **marketing-post-template.md** - LinkedIn + Medium publication format
- **session-reflection-template.md** - Session tracking (scales lightweight → comprehensive)

## How It Works

### Intelligent Rule Application

The system uses intelligent rule application:
- `AGENTS.md` in the project root provides lightweight baseline (~100 lines)
- Specialized rules are loaded automatically based on context
- AI determines which rules to apply based on keywords and task type
- No manual rule selection needed

**Example:**
- You: "I'm writing a new framework article"
- AI: *Automatically loads framework-development-standards and technical-writing-voice-and-style*

### Specification-Driven Quality

Quality is defined by explicit specifications, not subjective judgment:
- Rules codify what "good" looks like
- Checklists provide objective validation
- Templates ensure consistency
- Previous articles serve as reference library

### Continuous Improvement

Every session improves the system:
- Learnings are captured through reflection
- Rules are updated based on experience
- Templates evolve with new patterns
- Quality compounds over time

## Key Principles

1. **Start with Artifacts**: Begin with diagrams, drafts, presentations, voice notes—not a blank page
2. **Use Previous Work**: Previous whitepapers teach the system and compound quality
3. **Validate Objectively**: Automated validation against specifications, not subjective judgment
4. **Iterate Continuously**: Each article makes the next one better

## Workflows

### Creating New Framework Article

1. Start with artifacts (diagram, rough draft, presentation, voice notes)
2. Follow `content-creation-workflow-checklist.md` through all 9 phases
3. Use `article-header-template.md` for structure
4. Let AI load relevant rules automatically
5. Create Mermaid diagram and generate PNG
6. Validate with `pre-publication-checklist.md` and `framework-quality-checklist.md`
7. Create marketing post using `marketing-post-template.md`
8. Update README with article entry
9. Commit all files together

### Editing Existing Article

1. Follow `editing-workflow-checklist.md` through all 5 phases
2. Make targeted improvements while preserving voice
3. Validate with `pre-publication-checklist.md`
4. Commit with descriptive message

## Quality Standards

### Voice
- Personal and experiential (first-person narrative)
- Conversational yet professional
- Problem-focused openings
- Specific tools and actions (not abstract)
- Plain language (no corporate jargon)
- No AI tells (meta-signposting, perfect parallelism, mechanical transitions)

### Structure
- 8-part article format
- Table of Contents with anchor links
- Framework introduction with definition, origin, implementation, power
- Visual diagram embedded
- Concrete examples throughout

### Technical
- Lowercase filenames with underscores
- Relative image paths
- Proper heading hierarchy
- No em dashes
- Authoritative references only

### Framework
- Origin story from practice
- Clear element definitions
- Visual diagrams
- Gap analysis with 3-5 examples
- Measurement approach

## Image Formats

The repository uses different image formats for different purposes:
- **PNG**: Framework diagrams (most articles) - good for diagrams with transparency
- **SVG**: Spec-driven writing framework - scalable vector graphics for complex diagrams
- **JPG**: Four Cs article - photographs and complex illustrations

## Resources

### Internal Documentation
- `AGENTS.md` - Core principles (project root)
- `.cursor/README.md` - Complete system documentation
- `.cursor/rules/README.md` - How intelligent rules work
- `.cursor/rules/QUICK_REFERENCE.md` - Quick standards lookup
- `.cursor/checklists/README.md` - Checklist organization guide

### Example Articles
- `whitepapers/the_spec_driven_writing_framework.md` - Meta-documentation of this process
- `whitepapers/the_realms_of_projects_framework.md` - Example of framework structure
- `whitepapers/the_enabling_team_framework.md` - Example of team framework

### External References
- [Cursor Rules Documentation](https://cursor.com/docs/context/rules)
- [AGENTS.md Documentation](https://cursor.com/docs/context/rules#agentsmd)
- [GitHub Spec-Driven Development](https://github.blog/ai-and-ml/generative-ai/spec-driven-development-with-ai-get-started-with-a-new-open-source-toolkit/)

## Adapting This System

You're welcome to adapt this system for your own projects:

1. **Study the Configuration**: Review `.cursor/` directory structure and rules
2. **Understand the Principles**: Specification-driven, automated validation, continuous improvement
3. **Adapt for Your Context**: Modify rules, templates, and checklists for your needs
4. **Provide Attribution**: Link back to this repository if you reference the methodology

## Version History

- **v3.3** (2025-12-26): Added AI tell detection and prevention guardrails
- **v3.2** (2025-12-26): Consolidated checklists into milestone-based workflows
- **v3.1** (2025-12-26): Added session reflection rule, templates, and checklists
- **v3.0** (2025-12-23): Modern intelligent application system with AGENTS.md

## Questions?

For questions about the development system:
- See `.cursor/README.md` for complete documentation
- See `.cursor/rules/README.md` for how rules work
- See example articles for reference implementations
- Open an issue if you have questions about adapting this approach

---

**This is spec-driven writing in action**: treating technical content creation as software engineering, with the same rigor, tools, and continuous improvement mindset.

