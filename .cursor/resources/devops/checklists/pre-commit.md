# Pre-Commit Validation Checklist

Use this checklist before committing any article or framework content to ensure completeness and quality.

## Content Structure

### Article Structure
- [ ] Article follows 8-part structure (hook, intro, elements, integration, application, measurement, conclusion, references)
- [ ] Table of Contents present at top with working anchor links
- [ ] All major sections included and complete
- [ ] Article header follows template pattern (see `.cursor/resources/technical-writing/templates/article-header.md`)
- [ ] Framework introduction section includes: definition, origin, implementation, power, diagram

### Visual Elements
- [ ] Main framework diagram exists as PNG in `images/[article_name]/`
- [ ] Mermaid source (.mmd) file exists in same directory
- [ ] Diagram path in article is correct and uses relative path
- [ ] Diagram has descriptive alt text
- [ ] All images referenced in article actually exist

## Marketing and Documentation

### Marketing Post
- [ ] Marketing post exists in `marketing/posts/[article_name].md`
- [ ] Marketing post follows template format (see `.cursor/resources/marketing/templates/marketing-post.md`)
- [ ] LinkedIn Post section complete with:
  - [ ] Opening hook (2-3 sentences)
  - [ ] Framework title in bold
  - [ ] One-line description
  - [ ] Key insights (4 bullet points with •)
  - [ ] Result statement
  - [ ] Personal note
  - [ ] Call to action
  - [ ] Link placeholder
  - [ ] 5-6 relevant hashtags
- [ ] Medium Publication Details section complete with:
  - [ ] Title (matches article title exactly)
  - [ ] Subtitle (clear value proposition)
  - [ ] 5 tags
  - [ ] Featured image path
  - [ ] Description for Medium (3-5 sentences)

### Repository Documentation
- [ ] README.md updated with new article entry
- [ ] README entry includes: title (linked), description, key topics
- [ ] README entry follows format of existing entries

## Voice and Style

### Prohibited Elements
- [ ] No em dashes (—) anywhere in content
- [ ] No corporate jargon or "work-words"
- [ ] No overuse of vague academic words (systematic, comprehensive, holistic)
- [ ] No marketing materials in references (paid workshops, courses)

### Required Voice Elements
- [ ] First-person narrative used where appropriate ("I," "my," "I've")
- [ ] Personal experiences and frustrations included
- [ ] Specific tools and actions named (not abstract concepts)
- [ ] "What if?" or similar turning point moment present
- [ ] Plain language throughout
- [ ] Concrete examples (not vague abstractions)

### Style Quality
- [ ] Reads naturally when spoken aloud
- [ ] Conversational yet professional tone
- [ ] Problem-focused opening
- [ ] Pattern recognition language used appropriately

## Technical Requirements

### File Naming and Paths
- [ ] Article file named with lowercase and underscores: `the_framework_name.md`
- [ ] Image directory matches article name: `images/the_framework_name/`
- [ ] All paths use relative paths (not absolute)
- [ ] Marketing post file matches article name

### Formatting
- [ ] Heading hierarchy correct (# for title, ## for main, ### for sub)
- [ ] Lists use `-` for unordered, numbers for ordered
- [ ] Bold used for key terms on first introduction
- [ ] Code blocks properly formatted if present
- [ ] Links properly formatted and not broken

### References
- [ ] References section exists
- [ ] All cited sources included
- [ ] References are authoritative (blog posts, whitepapers, documentation)
- [ ] No broken links
- [ ] External frameworks properly cited

## Framework Requirements

### Core Elements
- [ ] Origin story from practice (not theory)
- [ ] Clear element definitions (bold on first use)
- [ ] Visual diagram embedded
- [ ] Sequence explanation (if applicable)
- [ ] Gap analysis with 3-5 concrete examples
- [ ] Measurement approach defined

### Quality Standards
- [ ] Examples are concrete and realistic
- [ ] Context provided for examples (company type, problem, solution, outcome)
- [ ] Terminology consistent throughout
- [ ] Transitions between sections smooth
- [ ] Each paragraph adds value
- [ ] Conclusion provides actionable next steps

## Content Quality

### Clarity
- [ ] Core thesis clear and emphasized
- [ ] Framework elements clearly explained
- [ ] No unexplained acronyms
- [ ] No orphaned concepts
- [ ] Logical flow between sections

### Completeness
- [ ] All required framework elements present
- [ ] Examples sufficient to illustrate concepts
- [ ] Measurement approach actionable
- [ ] Practical application guidance included
- [ ] Common failure modes addressed

### Consistency
- [ ] Terminology consistent with other articles in repository
- [ ] Voice matches other articles
- [ ] Structure follows repository standards
- [ ] Formatting matches other articles

## Final Validation

### Read-Through
- [ ] Read entire article aloud (or use text-to-speech)
- [ ] No awkward phrasing or rhythm issues
- [ ] Article delivers on promise of opening
- [ ] Core message clear throughout

### Cross-Reference Check
- [ ] If article references other frameworks, links are correct
- [ ] If other articles reference this framework, they're still accurate
- [ ] Internal links work correctly

### Git Preparation
- [ ] All new files staged
- [ ] All modified files staged
- [ ] Commit message prepared (descriptive with bullet points)
- [ ] No unintended files staged

## Quick Validation Commands

```bash
# Check for em dashes
grep -n "—" [article_name].md

# Check for common corporate jargon
grep -ni "diagnostic tools for organizational transformation\|holistic approach\|synergy\|leverage\|utilize" [article_name].md

# Check for overused vague words
grep -ni "systematic\|comprehensive" [article_name].md | wc -l

# Verify all image paths exist
grep -o "images/[^)]*" [article_name].md | while read path; do [ -f "$path" ] || echo "Missing: $path"; done

# Check for broken internal links
grep -o "\[.*\](#[^)]*)" [article_name].md
```

## Checklist Usage

### Before Committing
1. Open this checklist
2. Go through each section systematically
3. Check off items as you validate them
4. Fix any issues found
5. Re-validate after fixes
6. When all items checked, proceed with commit

### If Issues Found
- Fix critical issues immediately (broken links, missing files, prohibited elements)
- Document non-critical issues for future improvement
- Re-run checklist after fixes
- Don't commit until all critical items pass

### After Commit
- Note any checklist items that were difficult to validate
- Suggest improvements to checklist or process
- Update reflection document with learnings

## Common Issues and Fixes

### Issue: Em dashes found
**Fix:** Replace with periods (full stops), commas (pauses), or parentheses (asides)

### Issue: Corporate jargon found
**Fix:** Replace with plain language (use specific, direct terms instead of buzzwords)

### Issue: Marketing post doesn't match template
**Fix:** Compare to template and adjust structure to match exactly

### Issue: Missing Table of Contents
**Fix:** Generate TOC from article headings with anchor links

### Issue: Image paths broken
**Fix:** Verify image exists, correct path to use relative path from article location

### Issue: References not authoritative
**Fix:** Replace with official sources (GitHub blog, tool documentation, academic papers)

## Version History

- **v1.0** (2025-12-26): Initial checklist based on learnings from The Spec-Driven Writing Framework session

