# Leading Data and Analytics Teams

*How to lead in data-specific contexts: data maturity, centers of excellence, governance, and analytics delivery (scorecards, OKRs, dashboards). Complements My Leadership Style for Engineering Management.*

**Document Type:** Whitepaper  
**Status:** Draft  
**Owner:** Thomas L. Bohn

---

## Executive Summary

Leading data and analytics teams adds a layer on top of general engineering leadership: **data maturity**, **governance**, **analytics delivery** (scorecards, OKRs, dashboards), and **data stack discipline** (quality, contracts, modeling pipelines). It also demands the same people leadership—**developing talent**, **handling underperformance**, and **setting technical levels and bars**—but in a context where the output is often a scorecard, a dashboard, or an insight that changes behavior, not only an application or a service.

This article states my position on leading in data and advanced analytics. I use **advanced analytics** here to mean **dashboarding and insights** (scorecards, dashboards, trend and diagnostic views) plus modeling pipelines where relevant—not only ML. I cover how I think about **data program maturity** and **CoEs**, how I **deliver analytics that stick** (e.g., OKR scorecards, health dashboards), how I **develop talent and manage underperformance**, how I set and raise the **technical bar**, and how I lead or influence **data stack, data quality, data contracts, and modeling pipelines**. My broader leadership philosophy is in [My Leadership Style: How I Approach Engineering Management](my_leadership_style_engineering_manager.md); here I focus on what’s specific to data and analytics.

---

## Introduction

Throughout my career I've led or been deeply involved in data and analytics teams: data maturity programs (e.g., coaching business units on data management roadmaps), centers of excellence (e.g., a Viz CoE with 200+ creators and engineers), and analytics delivery (OKR scorecards to thousands of employees, health dashboards for Customer Success, technical health and adoption signals). The questions that come up are always similar: How do we raise the bar on data quality and governance without slowing delivery? How do we develop talent when the skills mix (analytics, engineering, domain) is broad? How do we deliver analytics that actually change behavior?

These conversations follow a familiar pattern. We build a dashboard or a scorecard and hope people use it; or we set a data quality standard and wonder why adoption is spotty. Time and time again, I've seen that success depends on **treating analytics as a product** (clear audience, clear "so what," clear adoption plan), **investing in data maturity and governance** so the foundation is trustworthy, and **leading people with the same rigor we apply to data**—clear expectations, development, and accountability. This article is the playbook I use for that.

---

## Data Program Maturity and Governance

**Data maturity** is the degree to which an organization treats data as a first-class asset: defined, governed, quality-checked, and used in decision-making. As a leader in data and analytics, I work to **coach and align** business units on data management roadmaps—what they own, what "good" looks like, and how they'll get there. That might mean coaching 13 business units on their data roadmaps, one at a time: understanding resistance, finding a win or a lesson per unit, and connecting their roadmap to a shared maturity model (e.g., DMM—Data Management Maturity) so we can measure progress and tell a story to leadership.

When I've **defined or changed an operating model** for data (governance, standards, lifecycle), the before/after is explicit: what was the old way (e.g., no single owner, ad hoc quality), what is the new way (e.g., data contracts, clear ownership, quality gates), and who had to align to make it stick. Governance isn't only policy; it's **policy plus process plus tooling** so that standards are measurable and enforceable. I **measure maturity** (e.g., DMM score, adoption, quality metrics) and turn it into a story for leadership: where we are, where we're going, and what we need to get there. One example is enough to make the pattern clear; the rest is repetition and iteration.

---

## Centers of Excellence and Scaling Impact

A **center of excellence (CoE)** in data or analytics is a team that sets standards, builds reusable assets, and enables others rather than owning every report or dashboard. When I've built or run a CoE (e.g., a Salesforce/Viz CoE with 200+ creators and engineers), the challenge is to **"sell" it to multiple internal customers** who each want something slightly different. We do that by **productizing** (one offering with clear tiers or options) or **sequencing** (we serve this group first, then that group, with clear criteria). We also **develop and mentor at scale**: hiring, coaching, and community so that creators and engineers level up. The measurable outcome might be adoption (e.g., 30K users, 80% TCO reduction), a quality bar (e.g., all published dashboards pass a review), or a capability (e.g., new teams can self-serve within 90 days). The CoE doesn't own all analytics; it raises the bar and distributes the capability.

---

## Delivering Analytics That Change Behavior

**Advanced analytics** here means **dashboarding and insights**: scorecards, dashboards, trend and diagnostic views, and the pipelines that feed them. (Modeling and ML are in scope when they power those outputs.) The goal is **analytics that change behavior**—a CSM acts on a health score, an exec adjusts strategy based on an OKR trend, a support agent gets the right context. What makes it stick is: (1) **clear audience and job-to-be-done**; (2) **actionable format** (the user knows what to do next); (3) **trust** (the data is correct and the logic is explainable); and (4) **embedding in workflow** (the analytics show up where the user already works). When I've delivered OKR scorecards to 4K employees or health dashboards that drove 80% TCO reduction, the common thread was that we designed for the **decision** and the **workflow**, not just the chart.

When we **combine advanced analytics with operational process** (e.g., CS, renewals), we close the loop: the dashboard or score isn't a one-off view; it's part of the playbook. We prioritize advanced analytics work against BAU and governance by **tying it to outcomes**: what decision does this unlock? Who is the user? What's the one thing we're optimizing for? Saying "no" or deprioritizing is easier when we have a clear rubric: impact, user, and strategic alignment.

---

## Developing Talent and Managing Underperformance

**Developing talent** on a data and analytics team is the same as on any engineering team—clear expectations, feedback, growth plans, and stretch opportunities—but the skills mix is broad: SQL, visualization, modeling, domain, and sometimes product. I use **practices and rituals** that fit that mix: pairing, review (code and analysis), community of practice, and explicit leveling (what does "senior" or "staff" mean for our data roles?). I also **set and raise the technical bar**: what does "good" look like for a dashboard, a pipeline, or a data contract? We document it, we review against it, and we raise it over time so the team doesn't plateau.

**Managing an underperformer** (or underperformance and conflict) is something I take seriously. I address it early: clear feedback, a plan (what needs to change, by when), and follow-up. If there’s no improvement, we escalate (e.g., PIP, role change, or exit) so the team and the individual aren’t stuck in ambiguity. What I've learned is that **handling it earlier** is always better than hoping it resolves itself. I also try to separate **skill gaps** (we can train or support) from **fit or motivation** (we may need a different conversation). One concrete story—what happened, what I did, what I’d do differently—is enough to show the pattern.

---

## Data Stack, Data Quality, Data Contracts, and Modeling Pipelines

As a leader in data and analytics, I **lead or influence** the data stack, data quality, data contracts, and modeling pipelines even when I don’t own every component. **Data stack**: we choose and standardize tools (e.g., dbt, warehouse, BI) so the team can move fast and onboard consistently. **Data quality**: we define what "good" means (completeness, freshness, validity), we instrument it, and we gate or alert when quality drops so we don’t ship bad data. **Data contracts**: we agree on schema and semantics between producers and consumers so that pipelines and dashboards don’t break when someone changes a column or a definition. **Modeling pipelines**: we treat models (predictive, scoring, recommendation) as first-class assets—versioned, tested, and documented—so we can reproduce and explain results.

I don’t need to implement every pipeline myself. I need to **set the bar**, **allocate time and people** to quality and contracts, and **hold the team accountable** so that data and analytics are reliable and governable. One example per area (stack, quality, contracts, pipelines) is enough to show how I lead or influence; the rest is consistency and iteration.

---

## Balancing "Maker" Work with People Leadership

In data and analytics, leaders are often **makers** too—architecture, product design, or hands-on analysis. The tension is real: if I'm deep in a design or a model, I'm not in a 1:1 or a roadmap discussion. I **balance** by being explicit about the tradeoff: I block time for maker work (e.g., architecture, review) and I block time for people and strategy. I also **delegate** design and execution to the team so I'm not the bottleneck; my job is to advise, set direction, and hold the bar. When I've had to choose (e.g., "I can do this deep dive or I can run the alignment meeting"), I communicate the choice: "I'm doing X this week; Y will get my attention next." That way the team and stakeholders know what to expect. The pattern is the same as in [My Leadership Style](my_leadership_style_engineering_manager.md): I own the *how* and the conditions for delivery; I develop the team so they own design and execution.

---

## Conclusion

Leading data and analytics teams means **data maturity and governance** (coaching, operating model, measurement), **CoEs and scale** (productize, sequence, develop talent), **analytics that change behavior** (scorecards, dashboards, insights tied to decisions and workflows), **people leadership** (talent development, underperformance, technical bar), and **data stack discipline** (quality, contracts, pipelines). It complements my broader engineering leadership style: reduce ambiguity, create structure, build culture, and make myself irrelevant by empowering the team. In data and analytics, the extra layer is making sure the **data** and the **outputs** (dashboards, scores, models) are trustworthy, actionable, and adopted—and that the team has the bar and the support to deliver them well.

---

## References

- [My Leadership Style: How I Approach Engineering Management](my_leadership_style_engineering_manager.md) — Four tenets (reduce ambiguity, create structure, build culture, make myself irrelevant); priorities; designer vs. executor in the AI era.
- Long-form experience: Viz CoE (200+ creators, 30K users); DMM and data governance (13 business units); OKR scorecards (4K employees); data stack, quality, contracts, modeling pipelines.
