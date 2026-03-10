# Gen AI and Agentic Solutions in Product and Engineering

**Document Type:** Whitepaper
**Owner:** Thomas L. Bohn
**Status:** Draft

## Executive Summary

Generative AI and agentic solutions are moving from experiment to production at an unprecedented pace. Leaders consistently ask the same questions: how do we deploy these solutions without betting on the wrong model, where are customer-facing agentic experiences actually working, and how do we set direction when priorities shift?

Success in Gen AI requires three non-negotiable investments: **foundational data** with rich context, **ground-truth documents** that define how we work, and **modularity** to separate concerns. This paper outlines my approach to deploying Gen AI to production, establishing a high bar for quality, managing executive risk appetites, and executing a concrete transition toward customer-facing experiences.

## Deploying Gen AI to Production: Three Realities

Product managers and solution architects of data products use Gen AI in three primary ways: internal tooling to move faster, customer-facing experiences to guide workflows, and embedding data products inside agents for advanced reasoning. The following three deployments illustrate this evolution.

### Story 1: Internal Deployment and Synthetic Employees

We started our internal Gen AI rollout about a year ago with simple autocomplete and lookup questions where the choice of model was largely irrelevant. Six months later, we evolved to writing rules in Cursor, embedding them directly into our repositories to drive consistency across the engineering team.

Recently, we deployed our first major refactor. We moved these rules into a cloud-hosted component leveraging the Claude Code framework. We now use subagents for specific tasks like dbt development, relying on defined skills that reference concrete examples and resources. We packaged this as a universally deployable plugin across all our repositories. Building "synthetic employees" taught us that LLMs crave an obnoxious level of process and governance, forcing us to write checklists and templates that would feel excessive for a human but are vital for AI.

### Story 2: Embedded Data Products at Scale

Deploying to production is not just about internal tooling. Salesforce has been rolling out Agentforce for its help portal, an ecosystem that now handles over two million conversations. My team's focus has been embedding our data science products, specifically the Customer Success Score and Technical Health signals, deeply into this customer-facing agentic experience.

When an agent answers a customer query, it needs more than a simple metric definition. We built extensive metric context and knowledge so the agent can read the metadata, navigate the data, and understand exactly when a specific signal is pertinent. By making this data highly scalable and accessible, the agent can fetch grounded, retrievable information to personalize the customer support experience.

### Story 3: Advisory, POCs, and Data Realities

As a Salesforce Fellow, I worked with Chicago Public Schools on an initiative to build a curriculum writing and evaluation agent. We successfully demonstrated a proof of concept using the Agentforce framework, configuring topics for routing and skills for evaluating curriculum against robust rubrics.

When we looked toward full production scale, we hit significant data management roadblocks. The school's curriculum standards lived in massive, unstructured documents. I learned that simply pointing an LLM at a 100-page document is not enough for highly detailed assessments. The agent needed structured, node-level access (in effect, a knowledge graph of the criteria) to step through the document logically. With remarkable consistency, that lesson shows up everywhere: customer-facing agentic solutions fail without mature, structured data.

## Setting Direction Amidst Evolving Priorities

Gen AI technology moves incredibly fast, and business priorities shift just as quickly. Setting direction in this environment requires tying data work to explicit outcomes and remaining modular enough to pivot without a full rewrite.

Every successful AI project I have led required a significant pivot:

* **Internal Developer Tooling:** We initially built a single agent with a massive set of dbt rules. We quickly realized the scope was too broad. We shifted priorities to split the workflow into multiple, highly specialized agents (for example, separating the technical documentation agent from the core developer agent).
* **Chicago Public Schools:** We started with a use case focused on collaborative writing to help curriculum developers generate content faster. We soon discovered that the true value was in evaluation. We pivoted the roadmap to focus on grading existing curriculums against strict rubrics, turning the AI into a powerful accelerator that could reduced manual panel review time by 80 percent.
* **Customer Success Score:** Leadership initially requested a simple data integration of our consumption tables into the agentic help portal. We integrated the data through the back end with Data Cloud, and that integration was solid. The real gap was that the system didn't know when to fetch which metrics. There wasn't enough descriptive context about each metric to connect it to specific themes and topics, or to understand what metrics meant at different levels of the Customer Success Score hierarchy. We reset the direction from "integration done" to building out that metric context and knowledge so the agent could decide when to surface the right information at the right time.

## Navigating Leadership Buy-In and Reputational Risk

A common assumption is that product managers must fight for executive buy-in to use AI. In my experience, the opposite is often true. I've repeatedly seen leadership push to roll out AI solutions directly to customers without the rigorous user acceptance testing we expect in traditional software development.

To manage this risk appetite, we often have to build safety nets retroactively. Because probabilistic models behave differently in the wild, we implemented synthetic testing for our help portal products. We mapped a massive variety of customer utterances against expected topics and actions to validate that the agent was resolving queries to the correct Customer Success outcomes.

Data is the ultimate tool for managing stakeholder expectations. By bringing synthetic testing metrics to the table, we were able to quantify the performance of a stochastic process. This allowed us to execute roll-forward fixes, improve the core experience, and make leadership comfortable with the fact that AI requires a measured, human-validated approach before full customer release.

## The Evolving Bar for Quality

When teams first adopt Gen AI, the primary question is usually, "Is the AI as good as a human?" In our first pass at quality metrics, we often overlook all the granular work that actually goes into the result. A human might say, "I did the whole assessment and here's the overall score," but they got there by evaluating every single line item in that assessment. With Gen AI, we cannot take that for granted. We have to enforce the individual assessment at every level and then aggregate. What a human does implicitly must be explicitly described for the agent. Instruction cannot be implied; it has to be spelled out.

That realization transforms how we define quality across our deployments:

* **From Document-Level to Node-Level:** For Chicago Public Schools, quality initially meant getting an overall score for a document. It evolved into requiring deep, granular accuracy for every single node and sub-section of a rubric.
* **From Roles to Jobs-to-be-Done:** For our internal plugins, quality shifted from creating "a rule for a developer" to creating strict, large-scale templates that govern highly specific jobs-to-be-done.
* **From Searchable to Discoverable:** For the help portal, the old quality bar was simply ensuring the data was technically integrated and searchable. The new bar is that the agent cannot infer when to use which metric. We had to make that context explicit, so the data is discoverable (the agent knows what each metric means and when it applies) and free of noise that would pull the agent in the wrong direction.

## A Concrete Vision for Customer-Facing Transitions

Transitioning an agentic workflow to a customer-facing product is not a single deployment; it is a phased evolution.

1. **Phase 1: Deterministic Automation:** The journey begins by building the foundational tools, prompts, and checklists. At this stage, we focus on automating individual, deterministic tasks.
2. **Phase 2: Domain-Specific Agents:** As the number of automated tasks grows, the system becomes cumbersome. We limit the context window by organizing these actions into domain-specific agents (such as a dedicated dbt agent or a C4 architecture agent), giving the system a logical decision tree.
3. **Phase 3: Internal Red Teaming and Human-in-the-Loop:** Before any customer interaction, we rely on internal employees to break the system. Humans transition from being *creators* of steps to being *approvers* and editors of the AI's outputs.
4. **Phase 4: Targeted Customer Release and Anti-Pattern Monitoring:** Once internal approvers consistently accept the AI's first attempt, we release the agent to a small customer segment. Crucially, we do not just monitor leading KPIs; we actively hunt for anti-patterns. For example, if support caseloads drop, we must analyze the data to ensure the agent is actually resolving issues, rather than providing such poor service that frustrated customers simply abandon the queue.

Ultimately, the benchmark for this transition is clear: first we augment humans, then we replace specific manual steps in the process, and finally, we scale the operation entirely beyond previous human capacity.

## Conclusion

Gen AI and agentic solutions are no longer optional for product and engineering teams. The work I have done reinforces a consistent pattern: we must invest in foundational data, heavily document our ground-truth standards, and maintain modular architectures. By treating data readiness as our primary blocker, shifting our measure of quality, and executing highly controlled rollouts, we can safely transition our most powerful Gen AI capabilities directly to the customer.

---

## References

- [Salesforce Accelerator – Agents for Impact Education Cohort 2025](https://www.salesforce.com/news/stories/agents-for-impact-education-cohort-2025/) (Chicago Public Schools, curriculum co-design agent).
- [Agentforce on Help – Over 2 Million Conversations](https://www.salesforce.com/blog/support-requests-agentforce/).
- [5 Takeaways – Agentforce AI Agent Implementation](https://www.salesforce.com/blog/5-takeaways-agentforce-ai-agent-implementation/).
- [Extend Your Customer Success Scorecard with Agentforce](https://developer.salesforce.com/blogs/2025/02/extend-your-customer-success-scorecard-with-agentforce) (developer blog).
- [Heroku – Salesforce DET External Experiences](https://www.heroku.com/customers/salesforce-det/) (CSS powered by Heroku; Agentforce on help site).
- Claude Code: [Create plugins](https://code.claude.com/docs/en/plugins), [Skills](https://code.claude.com/docs/en/skills).
- [Dreamforce 2025 – Boost Your ROI with CSS for Premier](https://www.salesforce.com/plus/experience/dreamforce_2025/series/customer_success_and_partners_at_dreamforce_2025/episode/episode-s1e5) (Salesforce+ episode; GTM and positioning of CSS for Premier customers).
