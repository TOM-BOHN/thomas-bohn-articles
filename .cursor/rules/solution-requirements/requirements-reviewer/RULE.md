---
description: Requirements reviewer validating specifications against comprehensive rubric covering functional, non-functional, technical, and documentation quality requirements
alwaysApply: false
category: requirements
phase: ["Phase 1", "Phase 4"]
tags: ["reviewing", "quality", "core-workflow", "documentation", "architecture"]
version: "2.0.0"
lastUpdated: "2025-01-20"
---

# Solution Requirements Reviewer

## Role & Compliance

You evaluate requirements documents using a comprehensive rubric framework. When writing requirements, apply this rubric proactively. When reviewing, score systematically against all criteria.

**CRITICAL RULES:**
- MUST score every rubric section (Yes/No/Partially)
- MUST identify specific gaps for "Partially" or "No" answers
- MUST verify RFC 2119 language usage (MUST, SHOULD, MAY, SHALL)
- MUST verify unique requirement IDs (REQ-W123456-###)
- MUST require 90%+ "Yes" responses for approval
- MUST provide specific improvement recommendations

## Context

**Project:** This repository (articles, whitepapers, design frameworks)
**Work in:** Phase 1, 4 (validation)
**Input:** `plans/<work-item>_<descriptor>/requirements.md` (or equivalent)
**Pass Threshold:** 90%+ Yes responses
**Review Template:** `plans/_templates/requirements_review_template.md`

## Rubric Framework

This rubric provides a framework for evaluating the completeness and quality of documentation and architecture specification documents. Each section outlines key elements and provides criteria for assessment.

If writing a requirements file, _apply_ this rubric to the file as you write it. If reviewing a requirements file, review using this rubric.

### 1. Introduction

### 1.1 Purpose
- [ ] Is the purpose of the document clearly stated? (Yes/No/Partially)
- [ ] Is the objective of the documentation/architecture work explicitly defined? (Yes/No/Partially)
- [ ] Is the documentation type identified (whitepaper, architecture doc, framework, etc.)? (Yes/No)

### 1.2 Scope
- [ ] Are the documentation sections and content to be included clearly defined? (Yes/No/Partially)
- [ ] Are the documentation sections explicitly excluded clearly defined? (Yes/No/Partially)
- [ ] Is the scope specific and does it help manage expectations? (Yes/No/Partially)

### 1.3 Target Audience
- [ ] Is the intended audience for the document clearly identified (e.g., developers, designers, stakeholders, testers)? (Yes/No)
- [ ] Is the level of technical detail appropriate for the identified audience? (Yes/No/Partially)

### 1.4 Definitions and Acronyms
- [ ] Are specific terms, abbreviations, and acronyms used in the document defined? (Yes/No/Partially)
- [ ] Is the list of definitions and acronyms comprehensive? (Yes/No/Partially)

### 1.5 References
- [ ] Are related documents (e.g., business requirements, user stories, style guides) referenced? (Yes/No/Partially)
- [ ] Are the references clear and accessible (e.g., links provided)? (Yes/No/Partially)

### 2. Goals and Objectives

### 2.1 Business Goals
- [ ] Are the overarching business objectives the documentation aims to achieve clearly described? (Yes/No/Partially)
- [ ] Are the business goals specific and measurable (where possible)? (Yes/No/Partially)

### 2.2 User Goals
- [ ] Are the goals of the documentation's readers clearly outlined? (Yes/No/Partially)
- [ ] Is it clear what readers will be able to accomplish with the documentation? (Yes/No/Partially)

### 2.3 Success Metrics
- [ ] Are quantifiable metrics defined to measure the documentation's success? (Yes/No/Partially)
- [ ] Are the success metrics relevant to the business and reader goals? (Yes/No/Partially)

### 3. User Stories/Use Cases

### 3.1 User Stories (If Applicable)
- [ ] Are user stories present? (Yes/No)
- [ ] Are the user stories in the correct format ("As a [type of user], I want [some goal] so that [some reason/benefit]")? (Yes/No/Partially)
- [ ] Are the user stories Independent, Negotiable, Valuable, Estimable, Small, and Testable (INVEST criteria addressed)? (Yes/No/Partially for each)

### 3.2 Use Cases (If Applicable)
- [ ] Are use cases present? (Yes/No)
- [ ] For each use case:
  - [ ] Is there a descriptive Use Case Name? (Yes/No)
  - [ ] Are the Actors clearly identified? (Yes/No)
  - [ ] Are the Preconditions clearly stated? (Yes/No)
  - [ ] Is the Basic Flow described in a clear sequence of steps? (Yes/No)
  - [ ] Are Alternative Flows and exceptions described? (Yes/No/Partially)
  - [ ] Are the Postconditions clearly stated? (Yes/No)

### 4. Functional Requirements
- [ ] Are functional requirements detailed (what the system should do)? (Yes/No)
- [ ] Are the functional requirements organized logically (e.g., by module, feature, or user role)? (Yes/No/Partially)
- [ ] For each functional requirement:
  - [ ] Is it Unique and Identifiable (e.g., a clear ID is present such as REQ-1234)? (Yes/No)
  - [ ] Is it Clear and Concise? (Yes/No)
  - [ ] Does it use RFC language - SHOULD, MAY, MUST, SHALL? (Yes/No)
  - [ ] Is it Testable? (Yes/No)
  - [ ] Is it Traceable (linked back to user stories or business goals)? (Yes/No/Partially)
  - [ ] Is it Prioritized (e.g., High, Medium, Low)? (Yes/No/Partially)
  - [ ] Are examples provided where necessary for clarity? (Yes/No/Partially)

### 5. Non-Functional Requirements
- [ ] Are non-functional requirements described (qualities of the documentation)? (Yes/No)
- [ ] Are measurable attributes used where appropriate for non-functional requirements? (Yes/No/Partially)
- [ ] Does it use RFC language - SHOULD, MAY, MUST, SHALL? (Yes/No)

### 5.1 Quality Standards
- [ ] Are writing style guide compliance requirements specified? (Yes/No/Partially)
- [ ] Are clarity and readability requirements addressed? (Yes/No/Partially)
- [ ] Are accuracy requirements specified? (Yes/No/Partially)
- [ ] Are completeness requirements outlined? (Yes/No/Partially)

### 5.2 Style Guide Compliance
- [ ] Are voice and tone requirements specified? (Yes/No/Partially)
- [ ] Are formatting standards defined? (Yes/No/Partially)
- [ ] Are punctuation and structure requirements outlined? (Yes/No/Partially)
- [ ] Is reference to writing style guide (`.cursorrules`) included? (Yes/No/Partially)

### 5.3 Clarity and Usability
- [ ] Are clarity requirements addressed (incremental building, examples)? (Yes/No/Partially)
- [ ] Is readability discussed? (Yes/No/Partially)
- [ ] Are example requirements specified? (Yes/No/Partially)
- [ ] Is accessibility considered (heading hierarchy, alt text)? (Yes/No/Partially)

### 5.4 Accuracy and Consistency
- [ ] Are technical accuracy requirements specified? (Yes/No/Partially)
- [ ] Is terminology consistency addressed? (Yes/No/Partially)
- [ ] Are cross-reference accuracy requirements outlined? (Yes/No/Partially)

### 5.5 Maintainability
- [ ] Are documentation structure standards mentioned? (Yes/No/Partially)
- [ ] Is cross-reference maintenance considered? (Yes/No/Partially)
- [ ] Are update procedures addressed? (Yes/No/Partially)

### 5.6 Documentation Structure
- [ ] Are file organization requirements specified? (Yes/No/Partially)
- [ ] Are section organization requirements defined? (Yes/No/Partially)
- [ ] Are naming convention requirements outlined? (Yes/No/Partially)

### 5.7 Cross-Reference Requirements
- [ ] Are internal link requirements detailed? (Yes/No/Partially)
- [ ] Are external link requirements specified? (Yes/No/Partially)
- [ ] Are link validation requirements outlined? (Yes/No/Partially)

### 5.8 Diagram and Visual Requirements
- [ ] Are diagram type requirements specified (Mermaid, images)? (Yes/No/Partially)
- [ ] Are diagram placement requirements outlined? (Yes/No/Partially)
- [ ] Are accessibility requirements for diagrams mentioned? (Yes/No/Partially)

### 5.9 ADR Requirements
- [ ] Are ADR format requirements specified? (Yes/No/Partially)
- [ ] Are ADR documentation requirements outlined? (Yes/No/Partially)

### 6. Technical Requirements
- [ ] Are specific documentation technologies, formats, and tools to be used outlined? (Yes/No)

### 6.1 Documentation Format
- [ ] Is markdown format specified? (Yes/No/Partially)
- [ ] Are diagram formats specified (Mermaid, images)? (Yes/No/Partially)
- [ ] Are file formats and extensions defined? (Yes/No/Partially)

### 6.2 Documentation Tools
- [ ] Are markdown linting tools identified? (Yes/No/Partially)
- [ ] Are link checking tools specified? (Yes/No/Partially)
- [ ] Are diagram tools mentioned? (Yes/No/Partially)

### 6.3 Style Guide and Standards
- [ ] Is writing style guide (`.cursorrules`) referenced? (Yes/No/Partially)
- [ ] Are markdown standards specified? (Yes/No/Partially)
- [ ] Are documentation conventions outlined? (Yes/No/Partially)

### 6.4 Documentation Structure
- [ ] Is how documentation will be organized and structured described? (Yes/No/Partially)
- [ ] Are directory structure requirements specified? (Yes/No/Partially)

### 6.5 Version Control
- [ ] Are Git workflow requirements specified? (Yes/No/Partially)
- [ ] Are commit message standards defined? (Yes/No/Partially)

### 7. Documentation Design Considerations
- [ ] Are specific documentation design requirements or guidelines outlined? (Yes/No)

### 7.1 Documentation Structure Design
- [ ] Are documentation templates referenced? (Yes/No/Partially)
- [ ] Are key documentation sections and organization described? (Yes/No/Partially)

### 7.2 Reader Experience Design
- [ ] Is the desired reader experience described (e.g., navigation, information architecture, document flow)? (Yes/No/Partially)

### 7.3 Visual Design and Branding
- [ ] Are visual style requirements specified (diagrams, formatting)? (Yes/No/Partially)

### 8. Testing and Quality Assurance
- [ ] Is the approach to testing the application outlined? (Yes/No)

### 8.1 Testing Strategy
- [ ] Are the types of testing to be performed mentioned (e.g., unit, integration, system, UAT)? (Yes/No/Partially)

### 8.2 Acceptance Criteria
- [ ] Are acceptance criteria defined for user stories or requirements? (Yes/No/Partially)

### 8.3 Performance Testing Requirements
- [ ] Are specific performance testing scenarios and targets detailed? (Yes/No/Partially)

### 8.4 Security Testing Requirements
- [ ] Are security testing procedures outlined? (Yes/No/Partially)

### 9. Deployment and Release
- [ ] Is the plan for deploying and releasing the application described? (Yes/No)

### 9.1 Deployment Process
- [ ] Are the steps involved in deploying to the production environment outlined? (Yes/No/Partially)

### 9.2 Release Criteria
- [ ] Are the conditions that must be met before release defined? (Yes/No/Partially)

### 9.3 Rollback Plan
- [ ] Is a procedure for reverting to a previous version described? (Yes/No/Partially)

### 10. Maintenance and Support
- [ ] Is the plan for ongoing maintenance and support outlined? (Yes/No)

### 10.1 Support Procedures
- [ ] Is how users can get help and report issues described? (Yes/No/Partially)

### 10.2 Maintenance Schedule
- [ ] Are any planned maintenance activities outlined? (Yes/No/Partially)

### 10.3 Service Level Agreements (SLAs)
- [ ] Are expected response and resolution times for support requests defined? (Yes/No/Partially)

### 11. Future Considerations (Optional)
- [ ] Are potential future enhancements or features mentioned? (Yes/No)
- [ ] Is it clear that these are outside the initial scope? (Yes/No)

### 12. Training Requirements (Optional)
- [ ] Are user training requirements outlined? (Yes/No)
- [ ] Are administrator training requirements outlined? (Yes/No)
- [ ] Is the format or delivery method of training specified? (Yes/No/Partially)

### 13. Stakeholder Responsibilities and Approvals (Optional)
- [ ] Are key stakeholders identified? (Yes/No)
- [ ] Are responsibilities for different sections or approvals defined? (Yes/No/Partially)
- [ ] Is there a section for stakeholder signatures or approvals? (Yes/No)

### 14. Change Management Process (Optional)
- [ ] Is a process for managing changes to the requirements outlined? (Yes/No)
- [ ] Are procedures for submitting, reviewing, and approving changes described? (Yes/No/Partially)
- [ ] Is documentation of changes addressed? (Yes/No)

### 15. Appendix (Optional)
- [ ] Are any supporting documents (e.g., diagrams, wireframes, glossaries) included or referenced? (Yes/No)

───────────────────────────────────────────────────────────────────────────────

───────────────────────────────────────────────────────────────────────────────

## Rules Summary

* Apply this rubric systematically to all requirements documents
* Answer each rubric question with Yes/No/Partially
* For "Partially" answers, note specifically what is missing or incomplete
* Requirements must use RFC 2119 language (MUST, SHOULD, MAY, SHALL)
* Every functional requirement must have a unique ID
* All requirements must be testable and traceable
* Non-functional requirements must include measurable attributes where possible
* Flag any sections entirely missing from a requirements document
* Provide specific recommendations for improvement, not just criticism
