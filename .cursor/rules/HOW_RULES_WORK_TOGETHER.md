# How the Rules Work Together

This document explains how the four technical writing rules complement each other and work as a system.

## Rule Relationships

```
┌───────────────────────────────────────────────────────────────┐
│                    AI ASSISTANCE SESSION                      │
│                                                               │
│  All four rules are automatically applied (alwaysApply: true) │
└───────────────────────────────────────────────────────────────┘
                              │
                              ▼
        ┌─────────────────────────────────────────┐
        │   CONTENT WORKFLOW AND PROCESS RULE     │
        │                                         │
        │  Determines WHEN to do what:            │
        │  • Research → Outline → Draft →         │
        │    Revision → Polish → Final Review     │
        │  • Which phase are we in?               │
        │  • What activities for this phase?      │
        └─────────────────────────────────────────┘
                              │
                              ▼
        ┌─────────────────────────────────────────┐
        │   ARTICLE STRUCTURE AND QUALITY RULE    │
        │                                         │
        │  Determines WHAT to include:            │
        │  • 8-part article structure             │
        │  • Required sections                    │
        │  • Quality standards                    │
        │  • Formatting requirements              │
        └─────────────────────────────────────────┘
                              │
                              ▼
        ┌─────────────────────────────────────────┐
        │  FRAMEWORK DEVELOPMENT STANDARDS RULE   │
        │                                         │
        │  Determines framework COMPLETENESS:     │
        │  • Origin story required                │
        │  • Element definitions                  │
        │  • Visual diagrams                      │
        │  • Sequence explanation                 │
        │  • Gap analysis                         │
        │  • Measurement approach                 │
        └─────────────────────────────────────────┘
                              │
                              ▼
        ┌─────────────────────────────────────────┐
        │   VOICE AND STYLE RULE                  │
        │                                         │
        │  Determines HOW to write:               │
        │  • Personal, experiential tone          │
        │  • Conversational yet professional      │
        │  • Problem-focused openings             │
        │  • Concrete examples                    │
        │  • Active voice                         │
        └─────────────────────────────────────────┘
```

## Practical Example: Creating a New Framework Article

Let's walk through how all four rules work together when creating a new framework article:

### Phase 1: Research (Workflow Rule)
**Workflow Rule says:** Spend 1-2 hours reading existing articles, gathering examples, understanding the problem

**Voice and Style Rule influences:** Pay attention to how existing articles use first-person narrative and pattern recognition language

**Article Structure Rule influences:** Note the 8-part structure in existing articles

**Framework Development Rule influences:** Observe how frameworks include origin stories, gap analysis, and measurement

### Phase 2: Outline (Workflow Rule)
**Workflow Rule says:** Create detailed outline with topic sentences

**Article Structure Rule provides:** 8-part template to follow
```markdown
1. Opening Hook
2. Framework Introduction
3. Core Framework Elements
4. Integration and Interaction
5. Practical Application
6. Measurement and Success
7. Actionable Conclusion
8. References
```

**Framework Development Rule adds:** Requirements for each framework element (definition, examples, diagrams)

**Voice and Style Rule guides:** Topic sentences should be conversational and problem-focused

### Phase 3: Draft (Workflow Rule)
**Workflow Rule says:** Write 3-6 hours, focus on getting ideas down, don't stop to edit

**Voice and Style Rule guides HOW to write:**
- Use first-person: "Throughout my career, I've observed..."
- Start with relatable questions
- Include concrete examples
- Use pattern recognition language

**Article Structure Rule guides WHAT to write:**
- 2-4 paragraphs for opening hook
- 2-3 paragraphs for framework introduction
- Systematic breakdown of elements
- Gap analysis section
- Actionable conclusion

**Framework Development Rule ensures COMPLETENESS:**
- Include origin story
- Define each element clearly
- Explain sequence and dependencies
- Provide 3-5 gap examples
- Define measurement approach

### Phase 4: Revision (Workflow Rule)
**Workflow Rule says:** Read full draft, revise for clarity, check consistency

**Voice and Style Rule checks:**
- Is tone personal and experiential?
- Are examples concrete?
- Is voice conversational yet professional?
- Active voice used?

**Article Structure Rule checks:**
- All 8 sections present?
- Quality standards met?
- Logical flow between sections?

**Framework Development Rule checks:**
- All six core requirements included?
- Gap analysis with concrete examples?
- Measurement approach defined?

### Phase 5: Polish (Workflow Rule)
**Workflow Rule says:** Check formatting, references, image paths

**Article Structure Rule provides:**
- Heading hierarchy standards
- List formatting requirements
- Bold emphasis guidelines
- Image reference format

**Framework Development Rule adds:**
- Visual diagram requirements
- Image path conventions
- Alt text standards

### Phase 6: Final Review (Workflow Rule)
**Workflow Rule says:** Read aloud, verify voice and tone

**Voice and Style Rule confirms:**
- Natural rhythm when spoken
- Personal and experiential throughout
- Conversational tone maintained

**Article Structure Rule confirms:**
- All quality standards met
- Structure complete

**Framework Development Rule confirms:**
- Framework is complete and actionable

## Rule Interactions by Activity

### When Writing New Content

| Activity | Primary Rule | Supporting Rules |
|----------|-------------|------------------|
| Deciding what to write | Workflow | Article Structure |
| Creating outline | Article Structure | Framework Development, Workflow |
| Writing opening | Voice and Style | Article Structure |
| Defining framework elements | Framework Development | Voice and Style |
| Writing examples | Voice and Style | Framework Development |
| Creating gap analysis | Framework Development | Voice and Style |
| Writing conclusion | Article Structure | Voice and Style |
| Formatting | Article Structure | Workflow |

### When Editing Existing Content

| Activity | Primary Rule | Supporting Rules |
|----------|-------------|------------------|
| Understanding intent | Workflow | Voice and Style |
| Identifying issues | Article Structure | Framework Development |
| Preserving voice | Voice and Style | Workflow |
| Enhancing clarity | Voice and Style | Article Structure |
| Checking completeness | Framework Development | Article Structure |
| Verifying consistency | Article Structure | Voice and Style |

### When Extending Frameworks

| Activity | Primary Rule | Supporting Rules |
|----------|-------------|------------------|
| Studying original | Workflow | Framework Development |
| Identifying gaps | Framework Development | Article Structure |
| Maintaining consistency | Voice and Style | Framework Development |
| Adding value | Framework Development | Voice and Style |
| Updating cross-references | Workflow | Article Structure |

## Decision Flow Examples

### Example 1: "Should I include this example?"

```
Voice and Style Rule: Is the example concrete and realistic?
                              │
                              ▼
                            YES
                              │
                              ▼
Framework Development Rule: Does it illustrate a framework element or gap?
                              │
                              ▼
                            YES
                              │
                              ▼
Article Structure Rule: Does it add new value (not redundant)?
                              │
                              ▼
                            YES
                              │
                              ▼
                    INCLUDE THE EXAMPLE
```

### Example 2: "Is this framework complete?"

```
Framework Development Rule: Check all six requirements
                              │
                              ▼
    ┌─────────────────────────────────────────┐
    │ ✓ Origin story from practice            │
    │ ✓ Clear element definitions             │
    │ ✓ Visual diagrams                       │
    │ ✓ Sequence explanation (if applicable)  │
    │ ✓ Gap analysis (3-5 examples)           │
    │ ✓ Measurement approach                  │
    └─────────────────────────────────────────┘
                              │
                              ▼
                         ALL PRESENT?
                              │
                    ┌─────────┴─────────┐
                   YES                  NO
                    │                    │
                    ▼                    ▼
            FRAMEWORK COMPLETE    ADD MISSING ELEMENTS
```

### Example 3: "Does this sound right?"

```
Voice and Style Rule: Check tone and voice
                              │
                              ▼
    ┌─────────────────────────────────────────┐
    │ • Personal and experiential?            │
    │ • Conversational yet professional?      │
    │ • Active voice?                         │
    │ • Concrete examples?                    │
    │ • Pattern recognition language?         │
    └─────────────────────────────────────────┘
                              │
                              ▼
                         ALL YES?
                              │
                    ┌─────────┴─────────┐
                   YES                  NO
                    │                    │
                    ▼                    ▼
              VOICE IS RIGHT      REVISE FOR VOICE
```

## Conflict Resolution

What happens when rules seem to conflict?

### Scenario: "The framework is getting too long"

**Framework Development Rule says:** Include all six core requirements
**Article Structure Rule says:** Keep articles focused and scannable
**Voice and Style Rule says:** Use appropriate white space

**Resolution:**
1. All six framework requirements are non-negotiable (Framework Development)
2. Break long sections into subsections with clear headings (Article Structure)
3. Use shorter paragraphs and more white space (Voice and Style)
4. Consider if some elements could be separate articles (Workflow)

### Scenario: "Should I use technical jargon here?"

**Voice and Style Rule says:** Avoid jargon overload, explain acronyms
**Framework Development Rule says:** Use established terms from industry frameworks
**Article Structure Rule says:** Maintain consistency with existing articles

**Resolution:**
1. Use the established technical term (Framework Development)
2. Define it clearly on first use (Voice and Style)
3. Use it consistently throughout (Article Structure)
4. Provide context that makes it accessible (Voice and Style)

## Key Takeaways

1. **All rules are always active** - They work together automatically
2. **Rules complement, not compete** - Each has a distinct domain
3. **Workflow orchestrates** - It determines when to apply what
4. **Structure provides framework** - It determines what to include
5. **Framework Development ensures completeness** - It determines requirements
6. **Voice and Style guides execution** - It determines how to write

## Mental Model

Think of the rules as a team:

- **Workflow Rule** = Project Manager (coordinates the process)
- **Article Structure Rule** = Architect (designs the structure)
- **Framework Development Rule** = Quality Assurance (ensures completeness)
- **Voice and Style Rule** = Editor (ensures consistent voice)

All four work together to produce high-quality, consistent technical writing that helps leaders solve real problems with practical frameworks.

