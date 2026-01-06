# Cursor Configuration for Technical Writing

This directory contains the configuration, rules, templates, and checklists for AI-assisted technical writing in this repository.

## Directory Structure

```
.cursor/
├── README.md                          # This file
├── docs/                              # System-level documentation
│   ├── how-rules-work-together.md     # Visual guide to rule system
│   └── quick-reference.md             # Quick standards reference
├── rules/                             # Intelligent rules organized by concern
│   ├── README.md                      # How rules work and when they apply
│   ├── technical-writing/             # Write like a human, act like an editor
│   │   ├── voice-and-style/RULE.md
│   │   ├── article-structure/RULE.md
│   │   └── content-workflow/RULE.md
│   ├── framework-design/              # Design emerging frameworks
│   │   └── framework-development/RULE.md
│   ├── marketing/                     # Write posts and marketing materials
│   │   └── linkedin-optimization/RULE.md
│   └── devops/                        # Manage writing like code
│       ├── version-control/RULE.md
│       └── session-reflection/RULE.md
├── resources/                         # Concern-based resources (templates, checklists, standards)
│   ├── technical-writing/
│   │   ├── templates/article-header.md
│   │   └── checklists/
│   │       ├── content-creation.md
│   │       ├── editing.md
│   │       ├── voice-validation.md
│   │       ├── condensing.md
│   │       └── pre-publication.md
│   ├── framework-design/
│   │   └── checklists/
│   │       ├── framework-quality.md
│   │       └── framework-extension.md
│   ├── marketing/
│   │   ├── templates/marketing-post.md
│   │   └── checklists/linkedin-marketing.md
│   └── devops/
│       ├── templates/session-reflection.md
│       └── checklists/pre-commit.md
└── references/                        # Shared reference materials
    ├── emphasis-examples.md           # Weak → strong thesis emphasis patterns
    └── artifact-examples.md           # Types of starting artifacts and usage

plans/                                 # Working memory (NOT committed to remote)
├── .gitkeep                           # Directory structure (committed)
├── README.md                          # Plans documentation (committed)
├── [date]-[work-item]-session.md      # Session summaries
└── reflections/                       # Detailed reflections (working memory)
    └── [date]-[article-name].md       # Comprehensive session reflections
```

## Quick Start

### For Writing New Content
1. Review `AGENTS.md` in project root for core principles
2. Use `resources/technical-writing/templates/article-header.md` for article structure
3. Follow `resources/technical-writing/checklists/content-creation.md` through all 9 phases
4. Let Cursor's AI automatically load relevant rules based on your task
5. Use `resources/technical-writing/checklists/pre-publication.md` before publishing

### For Editing Existing Content
1. Follow `resources/technical-writing/checklists/editing.md` through each phase
2. Cursor will automatically load `technical-writing/voice-and-style` rule
3. Make targeted improvements while preserving author's voice
4. Use `resources/technical-writing/checklists/pre-publication.md` before publishing

### For Session Reflection
1. During session: Use `.cursor/resources/devops/templates/session-reflection.md` to create `plans/[date]-[work-item].md`
2. Scale detail level to work complexity (lightweight → comprehensive)
3. Capture learnings as they emerge
4. Update rules, templates, or checklists based on insights
5. Delete plans/ files after integrating learnings (working memory → long-term memory)

## How It Works

### AGENTS.md (Always Loaded)
The `AGENTS.md` file in the project root provides:
- Repository purpose and context
- Core writing principles
- Framework requirements checklist
- File naming conventions
- Reference to specialized rules

**Size:** ~80 lines (lightweight baseline)

### Intelligent Rules (Loaded on Demand)
Rules in `.cursor/rules/` are automatically loaded by Cursor's AI based on:
- Keywords in your query
- File context
- Task type
- Explicit @-mentions

**Example:**
- You: "I'm writing a new framework article"
- AI: *Automatically loads framework-design/framework-development and technical-writing/voice-and-style*

See `rules/README.md` for complete details on how intelligent application works.

### Templates (Use as Needed)
Templates provide starting points and format standards:
- **Marketing Post Template**: Ensures consistent LinkedIn + Medium format
- **Article Header Template**: Standard opening pattern and framework introduction

Copy template content and fill in your specific details.

### Checklists (Milestone-Based Workflows)
Checklists are organized by concern and workflow milestones:
- **Technical Writing**: Content creation, editing, voice validation, condensing, pre-publication
- **Framework Design**: Framework quality, framework extension
- **Marketing**: LinkedIn marketing
- **DevOps**: Pre-commit validation

See `resources/[concern]/checklists/` for checklists organized by concern.

## Key Principles

### 1. Intelligent Application
Rules are loaded automatically based on context. You don't need to remember which rule to invoke—just describe what you're doing naturally.

### 2. Continuous Improvement
Every session is an opportunity to improve the system. Use the reflection process to capture learnings and update rules, templates, and checklists.

### 3. Specification-Driven
Quality is defined by explicit specifications, not subjective judgment. Rules codify what "good" looks like.

### 4. Compounding Knowledge
Each article created teaches the system. Previous whitepapers become reference material for future work, creating a learning loop.

### 5. Voice Preservation
When editing, enhance clarity without erasing the author's voice. Templates and rules guide but don't constrain.

## Common Workflows

### Creating New Framework Article
1. Start with artifacts (diagram, rough draft, presentation, voice notes)
2. Follow `resources/technical-writing/checklists/content-creation.md`:
   - Phase 1: Research (understand repository standards)
   - Phase 2: Gather Artifacts (start with existing materials)
   - Phase 3: Outline (create detailed structure)
   - Phase 4: Draft (focus on content)
   - Phase 5: Revision (focus on clarity)
   - Phase 6: Condensing (reduce length if needed)
   - Phase 7: Polish (focus on details)
   - Phase 8: Template Validation (match templates exactly)
   - Phase 9: Final Review (read aloud)
3. Use `resources/technical-writing/templates/article-header.md` for structure
4. Let AI load relevant rules automatically
5. Create Mermaid diagram (.mmd) and generate PNG
6. Validate with `resources/technical-writing/checklists/pre-publication.md`
7. Validate with `resources/framework-design/checklists/framework-quality.md`
8. Create marketing post using `resources/marketing/templates/marketing-post.md`
9. Update README with article entry
10. Commit all files together
11. Run session reflection and update rules/templates as needed

### Editing Existing Article
1. Follow `resources/technical-writing/checklists/editing.md`:
   - Phase 1: Understand Intent
   - Phase 2: Identify Issues
   - Phase 3: Preserve Core
   - Phase 4: Enhance Selectively
   - Phase 5: Verify Consistency
2. Validate with `resources/technical-writing/checklists/pre-publication.md`
3. Commit with descriptive message
4. Capture learnings in reflection

### Major Revision or Condensing
1. Understand core thesis and key points
2. Identify less important sections (not just long sections)
3. Remove entire ideas/explanations, not just trim sentences
4. Maintain voice and style while cutting
5. Verify core thesis still clear
6. Read aloud to check rhythm
7. Validate and commit

### Session Reflection
1. At end of major work, review what was accomplished
2. Use reflection framework in `rules/devops/session-reflection/RULE.md`
3. Document learnings in `reflections/YYYY-MM-DD-[article-name].md`
4. Update rules, templates, or checklists based on insights
5. Commit improvements separately from content

## Quality Standards

### Voice
- Personal and experiential (first-person narrative)
- Conversational yet professional
- Problem-focused openings
- Specific tools and actions (not abstract)
- Plain language (no corporate jargon)
- No AI tells (meta-signposting, perfect parallelism, mechanical transitions)
- Human texture (varied rhythm, moments of doubt, personality)

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

## Resources

### Internal References
- `AGENTS.md` - Core principles (project root)
- `docs/how-rules-work-together.md` - Visual guide to rule system
- `docs/quick-reference.md` - Quick standards lookup
- `rules/README.md` - How intelligent rules work
- `resources/[concern]/templates/` - Reusable content templates by concern
- `resources/[concern]/checklists/` - Validation checklists by concern
- `references/` - Reference materials and examples
- `plans/` - Working memory (temporary, not committed)
- `plans/README.md` - Plans directory documentation

### Example Articles
- `the_spec_driven_writing_framework.md` - Meta-documentation of this process
- `the_realms_of_projects_framework.md` - Example of framework structure
- `the_enabling_team_framework.md` - Example of team framework

### External References
- [Cursor Rules Documentation](https://cursor.com/docs/context/rules)
- [AGENTS.md Documentation](https://cursor.com/docs/context/rules#agentsmd)
- [GitHub Spec-Driven Development](https://github.blog/ai-and-ml/generative-ai/spec-driven-development-with-ai-get-started-with-a-new-open-source-toolkit/)

## Version History

- **v4.0** (2025-01-XX): Reorganized by concern and resource type
  - Organized rules by concern: technical-writing, framework-design, marketing, devops
  - Grouped resources (templates, checklists) under `resources/[concern]/`
  - Moved system docs to `docs/` directory
  - Standardized file naming (lowercase-hyphens)
  - Updated all internal references to new structure
  
- **v3.3** (2025-12-26): Added AI tell detection and prevention guardrails
  - Added "No AI Tells and Over-Structured Writing" section to voice/style rule
  - Document 8 AI tell patterns to avoid (meta-signposting, perfect parallelism, etc.)
  - Added AI tell detection checklist items to voice-validation-checklist
  - Added grep commands for automated AI tell detection
  - Provide guidance on adding human texture (doubt, personality, varied rhythm)

- **v3.2** (2025-12-26): Consolidated checklists into milestone-based workflows
  - Reorganized checklists from topic-based to workflow-based
  - Created workflow checklists: content-creation, editing, framework-extension
  - Added checklists/README.md for organization guide
  - Updated rules to reference consolidated checklists
  
- **v3.1** (2025-12-26): Added session reflection rule, templates, and checklists
  - New rule: devops/session-reflection
  - New templates: marketing-post, article-header, session-reflection
  - New checklists: pre-commit-validation and workflow checklists
  - Created reflections directory for session learnings
  
- **v3.0** (2025-12-23): Modern intelligent application system
  - Migrated to AGENTS.md (replaces deprecated .cursorrules)
  - Folder-based RULE.md files (modern Cursor v2.2+ standard)
  - Intelligent application based on keyword-rich descriptions
  - AI decides when to load rules based on context

## Getting Help

### Questions About Rules
- See `rules/README.md` for how rules work
- See `docs/quick-reference.md` for quick lookup
- See `docs/how-rules-work-together.md` for visual guide

### Questions About Process
- See `rules/technical-writing/content-workflow/RULE.md` for complete workflows
- See `resources/[concern]/templates/` for starting points
- See example articles for reference

### Questions About Quality
- See `resources/[concern]/checklists/` for checklist organization by concern
- See `resources/technical-writing/checklists/pre-publication.md` for complete standards
- See `rules/technical-writing/article-structure/RULE.md` for details
- Rules reflect all learnings from previous sessions (integrated from reflections)

### Improving the System
- Use `rules/devops/session-reflection/RULE.md` at end of sessions
- Document learnings in `reflections/` directory
- Update rules, templates, or checklists based on insights
- Every session makes the next session better
