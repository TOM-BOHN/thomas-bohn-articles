# My Background: Ten Years at the Intersection of Product, Architecture, and Engineering

I've spent the last decade and a half at the intersection of product management, solution architecture, and engineering delivery. The through-line across every role has been the same: ship the solutions the business needs, help the organization understand how data fits into its processes, and build the frameworks and tools that let teams deliver at progressively higher levels. What I care about is value. Aligning capacity to work. Prioritizing ruthlessly. Developing the competencies that let a team rise to the best it's capable of.

This piece is a window into that arc. It's grounded in what I've actually done and the outcomes I've driven, written so I can speak to it clearly in conversation and leave something for anyone who wants the fuller picture.

---

## Where I Am Today: Technical Health and the Customer Success Platform

Since October 2023, I've been Senior Manager of AI Product Management at Salesforce, leading product and engineering for the **Customer Success Score (CSS)**. CSS is Salesforce's 360-degree customer health signal, distributed to every customer on a Customer Success plan. It demystifies Product Adoption, Expertise, and Technical Health so customers and our internal teams have something concrete to act on.

My focus within that platform has been the **Technical Health Score (THS)** and the architecture that powers it. I designed and built the end-to-end THS application, the full data value stream from lake through experience layer, aligned to Salesforce's Well-Architected Framework. The ML-driven score now reaches roughly 85,000 customers as part of CSS. The results are concrete: we cut Customer Success effort by more than half to diagnose and resolve implementation risks, the score demonstrates strong predictive power correlating with Sev1 incidents and cost-to-serve, and we externalized it within 12 months and packaged it into Success Plans. That work earned the TSIA Customer Success Innovation Award.

I was selected to lead a cross-functional product engineering group spanning PM, Data Science, Data Engineering, and Analytics. The team grew to 16 engineers, and I was promoted to Product Engineering Lead (Group) within 12 months of taking the role. On the platform side, I led the consolidation of four previously disparate workstreams (product adoption breadth and depth, Technical Health Score, and customer expertise) into a single service-oriented architecture on Snowflake, dbt, and Apache Airflow. That consolidation is estimated to reduce duplicate engineering by 50% or more and avoid millions in annual build and maintenance costs. I also architected and built the **Product Feature Hierarchy (PFH)**, the taxonomy that maps all Salesforce product content and features to customer jobs-to-be-done. PFH is what enables our Product Adoption Depth score and powers the data science models we run for Sales Cloud and Service Cloud.

Back-of-envelope, the data products and platform work I've been part of at Salesforce have contributed on the order of $100M or more in retained revenue, cost savings, and reduced cost-to-serve across the customer base.

None of this work happened in a vacuum. The architecture instincts, the data quality discipline, and the operating model thinking that made THS possible were built over the decade that came before it.

---

## The Maturity and Visualization Years

The two chapters that immediately preceded my current role were about operating at enterprise scale: one in data management maturity, one in data visualization. Together they sharpened something I'd been building since my first years at Salesforce, the conviction that technical work is necessary but not sufficient. Frameworks, governance models, and institutionalized knowledge are what separate a team that improves year over year from one that reinvents the wheel every cycle.

From March 2022 to March 2023, I was Director of Program Management for Data Management Maturity (DMM) in the Office of the Chief Data Officer. I ran the enterprise program to improve the CMMI Data Management Maturity score by 20% year over year, coaching data governance teams across 13 business units on defining and executing data management roadmaps and best practices. I oversaw the lifecycle of 20 enterprise data standards, led the effort to define the future state of the Global Data Governance operating model, and directed the working group that selected DCAM (Data Capability Assessment Model) and CDMC (Cloud Data Management Capabilities) as the enterprise frameworks for Salesforce.

Before that, from September 2020 to March 2022, I founded and ran the Data Visualization Center of Excellence as Director. With a small team of subject-matter experts, we built a shared strategy, consistent processes, and expanded institutional knowledge across the organization. We documented six guidelines and over 150 best practices for Tableau and data visualization, which drove 4x efficiency gains for certain processes and meaningfully improved quality across the data visualization SDLC. I mentored and coached over 200 Tableau creators and Data Visualization Engineers supporting a user base of 30,000 in Distribution and Customer Success. I also spearheaded Customer Success on Tableau, defining an analytics strategy for 8,000 users in CSG, establishing a governance model, and enabling a community of 40 or more creators.

Both of these chapters reinforced a pattern I'd already seen repeatedly: you can build excellent data products and still fail to scale the value if you don't invest in the operating model alongside the technology.

---

## Data Governance, Metadata, and the Roots of Customer Health Intelligence

From June 2018 to September 2020, I moved through Director roles in Data Governance and then Solution Architecture for Data Management and Data Science Products. These two years were among the most foundational of my career at Salesforce, and the work from this period is directly traceable to what THS is today.

I founded the CSG Data Governance Program and defined a business-unit strategy so 8,000 employees across the four pillars of Customer Success could rely on trusted information. The Data Governance Office executed five core governance processes. We improved the business unit Data Management Maturity score by 25% year over year through 10 core processes, four governance councils, and 20 governed data entities.

The architecture work that followed built directly on that foundation. I designed and architected the Success Program Metadata Catalog to resolve data management and data quality issues with customer success engagement programs. Resolving those metadata and reference data deficiencies was the prerequisite that allowed the data science algorithms behind the **Customer Health Intelligence Application Suite** to be trained and deployed, producing proactive health insights and engagement recommendations for Salesforce's $20B customer base. We achieved roughly 75% improvement in record-level data quality in the targeted areas.

I led the application design team for the Customer Success recommendation engine, which delivered near real-time trend data and recommendations on programs and feature usage by customer context. I also rolled up my sleeves in Python to develop and tune the human-language outputs of the models, including stencil-and-token design patterns that improved interpretability of non-linear models in natural language. Making the reasoning behind predictions legible to stakeholders was as important as making the predictions accurate. That work drove a 15% increase in CSAT scores.

The lesson from this chapter: data quality is the prerequisite for everything downstream. A recommendation engine is only as trustworthy as the metadata feeding it. I've carried that forward into every architecture decision since.

---

## The First Salesforce Chapter: Scorecards, Attrition, and Customer 360

I joined Salesforce in January 2016 in Digital Technology and Data Analytics. These first years were where I learned how to operate in a large enterprise, deliver at scale, and earn the trust that opens the door to bigger problems.

I designed and managed the program that delivered OKR scorecards to 4,000 employees and reduced total cost of ownership by 80% for those OKRs. I led the front-end workstream for the Attrition Predictor, contextualizing predictions in an application that gave managers something they could actually act on. I led a finance-focused ETL project for Revenue Reconciliation that resolved data quality issues with the Net Revenue Rule and enabled the Renewals org to recognize over $2M per year in additional renewals. That project was recognized with the Terraformer Award from Business Technology for excellence in collaboration and business process improvement. I also designed customer 360 dashboards covering KPIs on contract attrition, ACV, price uplift, productivity, and customer engagement, improving data access efficiency and saving an estimated $6M per year in wasted time.

What this period gave me was breadth: I saw how data quality problems propagate from finance through operations, how visualization choices affect whether insights actually drive decisions, and how much organizational trust matters when you're asking business partners to rely on a number.

---

## Before Salesforce: Orbitz and IBM

Before Salesforce, I led at scale in travel and in consulting.

At Orbitz Worldwide, from June 2012 to January 2016, I was Director and Group Leader for Data Analytics, Applications, and Operations, managing 60 or more resources across Data Analytics, Salesforce Development, and Hotel Operations. We owned 73 unique data products, Qlikview and MicroStrategy applications, data pipelines, and ETLs. I built the first Salesforce Center of Excellence at Orbitz to centralize development and business process improvement. The project I'm most proud of from that period is the Salesforce Service Cloud digital transformation for 90,000 hotel partners: we increased automation for 8,000 hotel cases per month, consolidated technology platforms from four to one, and increased team efficiency by over 50% and throughput by 80% within seven months. Earlier in that tenure, I led a team of seven through data visualization, pipelines, and ETL across the full SDLC and increased revenue by over $1M annually by aligning the sales compensation plan for 250 or more employees to five OKRs.

Orbitz was where I first learned to manage at scale, build a CoE from nothing, and connect engineering delivery directly to business outcomes. The playbook I developed there, centralizing development, operationalizing best practices, and aligning technical work to measurable business goals, traveled with me into every role after.

Before Orbitz, I was a Senior Consultant in the Business Analytics and Optimization practice at IBM Global Business Services, from August 2009 to June 2012. I delivered business intelligence and performance management for five or more clients across industrial, consumer products, IT, and financial sectors, from requirements through testing, cut-over, and hypercare. I completed the Consulting by Degrees rotational program and was promoted from Consultant to Senior Consultant in July 2011. IBM gave me rigor: structured delivery, stakeholder management, and the discipline to document and validate before you build.

---

## Throughline

The arc is consistent across every chapter. I operate where product, architecture, and delivery meet. I ship the solutions the business needs. I help organizations understand their processes, how data integrates, and how to automate decisions and augment them with insight. And I invest in the frameworks, tools, and operating models that let teams deliver at progressively higher levels.

What that looks like in practice: I care about developing competencies, aligning capacity to work, and prioritizing ruthlessly so the investment in the team yields the highest return. I believe technical excellence and organizational maturity have to advance together. One without the other stalls.

That's the background I bring to the table, and the lens I use every day.
