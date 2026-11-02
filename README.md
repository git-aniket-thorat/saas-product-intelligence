# RavenStack SaaS Product Intelligence Platform

An end-to-end Business Intelligence project analysing a synthetic SaaS company's customer accounts, subscriptions, product usage, churn, and customer support performance using **Python, SQL, Excel, and Power BI**.

The project transforms raw business data into actionable insights through data cleaning, exploratory analysis, SQL queries, data modelling, and interactive dashboards.

---

## Project Overview

SaaS businesses need to understand more than just their revenue. Customer retention, product adoption, subscription performance, and customer satisfaction are equally important for sustainable growth.

The RavenStack SaaS Product Intelligence Platform brings these business areas together through an integrated analytics solution.

## Dataset Source & Attribution

This project uses the **RavenStack: Synthetic SaaS Dataset (Multi-Table)**, created by **River @ Rivalytics**.

The dataset contains five interconnected CSV files:

* `accounts.csv`
* `subscriptions.csv`
* `feature_usage.csv`
* `support_tickets.csv`
* `churn_events.csv`

**Original Dataset:** RavenStack: Synthetic SaaS Dataset (Multi-Table)
**Creator:** River @ Rivalytics
**Platform:** Kaggle
**Related Article:** [Building a Dataset Generator App Journey – Rivalytics](https://rivalytics.medium.com)

### Attribution

I would like to acknowledge and thank **River @ Rivalytics** for creating and sharing this synthetic SaaS dataset.

The dataset was used for educational and portfolio purposes in this project. The original data was processed, analysed, and transformed into business insights using Python, SQL, Excel, and Power BI.

The dataset is synthetic and does not contain real customer information or personally identifiable information (PII).

**Dataset ownership remains with its original creator.** Please refer to the original dataset listing for the applicable licence and terms of use.


### Key Objectives

* Analyse customer accounts and industry distribution.
* Evaluate subscription plans and recurring revenue.
* Understand product feature adoption and usage patterns.
* Identify customer churn patterns and reasons.
* Evaluate customer support performance.
* Build interactive business intelligence dashboards.
* Present data-driven findings to support business decisions.

---

## Technology Stack

| Technology       | Application                                                 |
| ---------------- | ----------------------------------------------------------- |
| Python           | Data cleaning, transformation and exploratory data analysis |
| Pandas           | Data manipulation and analysis                              |
| Jupyter Notebook | Analytical workflows and documentation                      |
| MySQL            | Relational database and SQL analysis                        |
| SQL              | Joins, aggregations, filtering and data quality checks      |
| Microsoft Excel  | PivotTables, PivotCharts, Data Model and slicers            |
| Power BI         | Data modelling, DAX measures and interactive dashboards     |
| Git & GitHub     | Version control and project documentation                   |

---

## Dataset Description

The project uses five related CSV datasets.

| Dataset         | Records | Description                                  |
| --------------- | ------: | -------------------------------------------- |
| Accounts        |     500 | Customer account information and industry    |
| Subscriptions   |   5,000 | Subscription plans, MRR, ARR and churn flags |
| Feature Usage   |  25,000 | Product feature usage and error records      |
| Support Tickets |   2,000 | Customer support tickets and satisfaction    |
| Churn Events    |     600 | Customer churn events and recorded reasons   |

**Total records analysed: 33,100**

The datasets are available in:

* `data/raw/` — Original datasets.
* `data/processed/` — Prepared datasets used for analysis.

---

## Project Structure

```text
SaaS Product Intelligence Platform/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
│   ├── 00_data_preparation.ipynb
│   ├── 01_data_quality_audit.ipynb
│   ├── 02_product_analytics.ipynb
│   ├── 03_customer_churn.ipynb
│   ├── 04_subscription_revenue.ipynb
│   ├── 05_customer_segmentation.ipynb
│   └── 06_support_ticket_analysis.ipynb
│
├── sql/
│   ├── analysis/
│   │   ├── 01_support_by_industry.sql
│   │   ├── 02_feature_usage_by_segment.sql
│   │   ├── 03_churn_reasons_by_segment.sql
│   │
│   └── quality_checks/
│       └── 02_subscription_usage_relationship.sql
│
├── excel/
│   └── RavenStack_SaaS_Business_Analysis.xlsx
│
├── powerbi/
│   └── RavenStack_SaaS_Dashboard.pbix
│
└── README.md
```

---

## Project Workflow

### 1. Data Preparation & Quality Assessment — Python

* Imported five raw CSV datasets using Pandas.
* Parsed and standardized date columns.
* Inspected missing values and duplicate records.
* Checked dataset relationships and data consistency.
* Exported processed datasets for downstream analysis.

### 2. Exploratory Data Analysis — Python

Completed six analytical notebooks:

| Notebook                | Analysis                                   |
| ----------------------- | ------------------------------------------ |
| Data Preparation        | Loading, transformation and processing     |
| Data Quality Audit      | Missing values, duplicates and consistency |
| Product Analytics       | Feature adoption, usage and errors         |
| Customer Churn          | Churn patterns and customer behaviour      |
| Subscription Revenue    | MRR, ARR and subscription performance      |
| Customer Segmentation   | Customer groups and industry analysis      |
| Support Ticket Analysis | Ticket volume and resolution performance   |

### 3. SQL Analysis — MySQL

Used SQL to perform relational analysis and answer business questions.

Key activities:

* Analysed support ticket volume by industry.
* Compared feature usage across industries and subscription plans.
* Investigated churn reasons by customer segment.
* Checked subscription-to-feature-usage relationships.
* Created analytical SQL views for reporting.

Created views:

* `vw_account_subscription_overview`
* `vw_feature_usage_summary`
* `vw_support_performance_by_industry`

### 4. Excel Business Analysis Dashboard

Developed an interactive Excel dashboard using:

* Excel Data Model.
* Relationships between five datasets.
* PivotTables and PivotCharts.
* KPI calculations.
* Subscription Plan slicer.
* Industry slicer.

Dashboard analysis includes:

* Revenue by subscription plan.
* Subscription count by plan.
* Customer distribution by industry.
* Churn events by industry.

### 5. Power BI Business Intelligence Dashboard

Created a four-page interactive Power BI report.

#### Page 1 — Executive Overview

* Total Accounts.
* Total Subscriptions.
* Monthly Recurring Revenue (MRR).
* Annual Recurring Revenue (ARR).
* Churn Rate.
* Revenue by subscription plan.
* Customer distribution by industry.

#### Page 2 — Product Usage & Adoption

* Total Usage Records.
* Total Usage Count.
* Total Errors.
* Error Rate.
* Feature popularity.
* Usage by industry.
* Errors by feature.
* Product usage trends.

#### Page 3 — Customer Churn & Segmentation

* Total Subscriptions.
* Churned Subscriptions.
* Non-Churned Subscriptions.
* Churn Rate.
* Churn by industry.
* Churn by subscription plan.
* Churn reasons.
* Customer distribution.

#### Page 4 — Customer Support & Experience

* Total Support Tickets.
* Average Resolution Time.
* Resolved Tickets.
* Average Customer Satisfaction.
* Support tickets by industry.
* Resolution time by industry.
* Ticket status distribution.
* Customer satisfaction by industry.

---

## Key SQL Findings

### Support Performance by Industry

| Industry      | Accounts | Tickets | Tickets per 100 Accounts | Avg. Resolution Time |
| ------------- | -------: | ------: | -----------------------: | -------------------: |
| HealthTech    |       96 |     408 |                   425.00 |            36.68 hrs |
| FinTech       |      112 |     457 |                   408.04 |            36.13 hrs |
| EdTech        |       79 |     316 |                   400.00 |            36.53 hrs |
| Cybersecurity |      100 |     394 |                   394.00 |            35.13 hrs |
| DevTools      |      113 |     425 |                   376.11 |            34.96 hrs |

**Observations:**

* HealthTech recorded the highest support ticket volume relative to its account count.
* DevTools recorded the lowest ticket volume per 100 accounts.
* Average resolution times ranged from approximately 35 to 37 hours.

These findings are descriptive and do not establish the reasons behind the differences.

---

## Data Quality Observations

The data quality audit identified:

* No exact duplicate rows.
* 21 duplicated `usage_id` values in feature usage, each appearing twice.
* 4,514 missing subscription end dates.
* 825 missing customer satisfaction scores.
* 148 missing churn feedback values.
* Some feature usage dates outside subscription date ranges.

These observations were documented for investigation rather than automatically deleting records or replacing missing values.

---

## Important Metric Definitions

* **MRR:** Sum of monthly recurring revenue across subscription records.
* **ARR:** Sum of annual recurring revenue across subscription records.
* **Churned Subscriptions:** Unique subscriptions with `churn_flag = TRUE`.
* **Churn Rate:** Churned subscriptions divided by total subscriptions in the current filter context.
* **Average Resolution Time:** Average ticket resolution time in hours.
* **Error Rate:** Total recorded errors divided by total usage count, subject to the definitions of the source fields.

The churn rate in this project is an overall subscription-level ratio, not a monthly churn rate.

Non-churned subscriptions should not automatically be considered active without checking subscription status and dates.

---

## Key Learnings

Through this project, I gained practical experience in:

* Handling multiple related datasets.
* Data cleaning and transformation using Pandas.
* Exploratory data analysis.
* Writing SQL queries involving joins and aggregations.
* Building relational data models.
* Creating Excel PivotTables and interactive dashboards.
* Developing Power BI dashboards using DAX.
* Translating business questions into analytical solutions.
* Presenting findings through data visualizations.

---

## Future Improvements

* Monthly customer churn and retention analysis.
* Cohort-based customer retention.
* Customer Lifetime Value (LTV) analysis.
* Revenue growth and subscription trend analysis.
* Automated data refresh.
* Additional Power BI drill-through pages.
* Advanced customer segmentation.

---

## Author

**Aniket Thorat**

Data Analytics Portfolio Project

**Technologies:** Python | SQL | Excel | Power BI
