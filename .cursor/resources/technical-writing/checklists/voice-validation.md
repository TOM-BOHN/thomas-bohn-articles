# Voice Validation Checklist

Use this checklist to ensure content matches the author's voice and style standards.

## Voice Elements

- [ ] First-person narrative used where appropriate ("I," "my," "I've")
- [ ] Personal experiences and frustrations included
- [ ] Specific tools and actions named (not abstract concepts)
- [ ] "What if?" or similar turning point moment present
- [ ] Problem starts with personal frustration or relatable question

## Language Standards

- [ ] Plain language throughout (no corporate jargon)
- [ ] No "work-words" or buzzwords
- [ ] Concrete examples, not vague abstractions
- [ ] Literal descriptions over metaphorical ones
- [ ] Specific over general ("I use GitHub" not "one might use tools")

## Prohibited Elements

- [ ] No em dashes (—) anywhere in content
- [ ] No weak intensifiers ("literally," "actually" when stating facts)
- [ ] No corporate jargon (check for: "diagnostic tools for organizational transformation," "synergy," "leverage," "utilize")
- [ ] No overuse of vague academic words (check for: "systematic," "comprehensive," "holistic")
- [ ] No passive voice overuse
- [ ] No hypotheticals when facts available

## AI Tell Detection

- [ ] No excessive meta-signposting ("The key insight:", "The critical difference:", "The meta-insight:")
- [ ] No perfect parallelism (vary bullet and paragraph structure)
- [ ] No mechanical transitions (limit "Consider..." to once per article)
- [ ] No self-referential overload (limit "this very article" to once maximum)
- [ ] No template-driven examples (vary depth and structure)
- [ ] No rhetorical question + immediate answer pattern overuse
- [ ] Corporate language replaced with plain language ("enables" → "lets you", "ensures" → "makes sure")
- [ ] Human texture present (moments of doubt, varied rhythm, personality)

## Structural Voice

- [ ] Opening hook creates immediate resonance
- [ ] Personal credibility established early
- [ ] Pattern recognition language used ("time and time again," "with remarkable consistency")
- [ ] Diagnostic positioning (show how gaps predict failures)
- [ ] Actionable next steps provided

## Tone Check

- [ ] Conversational yet professional
- [ ] Confident but not arrogant
- [ ] Encouraging but realistic
- [ ] Practical and actionable
- [ ] Connected to reader's journey

## Read-Aloud Test

- [ ] Reads naturally when spoken aloud
- [ ] No awkward phrasing or rhythm issues
- [ ] Transitions flow smoothly
- [ ] Emphasis feels natural
- [ ] No stumbling over sentences

## Quick Validation Commands

```bash
# Check for em dashes
grep -n "—" [article_name].md

# Check for weak intensifiers
grep -ni "literally\|actually" [article_name].md

# Check for corporate jargon
grep -ni "diagnostic tools for organizational transformation\|synergy\|leverage\|utilize\|holistic approach" [article_name].md

# Check for overused vague words
grep -ni "systematic\|comprehensive" [article_name].md | wc -l

# Check for hypotheticals
grep -ni "imagine\|one might\|you could" [article_name].md

# Check for AI tell patterns
grep -n "The key insight:\|The critical difference:\|The meta-insight:" [article_name].md
grep -n "Consider this very article\|Consider the.*this very" [article_name].md
grep -ni "enables\|ensures\|establishes\|facilitates" [article_name].md | wc -l
```

## Common Issues

### Issue: Too Formal or Academic
**Fix:** Add personal pronouns, use contractions where natural, include personal anecdotes

### Issue: Too Abstract
**Fix:** Name specific tools, companies, scenarios. Replace "organizations" with "teams I've worked with"

### Issue: Weak Emphasis
**Fix:** State directly, not hypothetically. "Writing IS software engineering" not "writing is like software engineering"

### Issue: Weak Intensifiers ("literally," "actually")
**Fix:** Remove the intensifier and state the fact directly. "I use GitHub" not "I literally use GitHub"

### Issue: Corporate Jargon Detected
**Fix:** Replace with plain language (use specific, direct terms instead of buzzwords)

### Issue: AI Tell Patterns Detected
**Fix:** Remove meta-signposts, vary structure, add human texture (doubt, personality, varied rhythm)

## Key Principles

**Voice is:**
- Personal and experiential
- Conversational yet professional
- Problem-focused and practical
- Grounded in real-world experience
- Literal, not metaphorical

**Voice is NOT:**
- Academic or theoretical
- Corporate or buzzword-heavy
- Abstract or vague
- Passive or hypothetical
- Overly formal or distant

