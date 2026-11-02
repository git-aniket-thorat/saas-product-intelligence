# RAVENSTACK SAAS PRODUCT INTELLIGENCE PLATFORM

## Final Project Report

**Domain:** SaaS Business Analytics
**Tools:** Python, SQL, MySQL, Excel, Power BI
**Project Type:** End-to-End Data Analytics & Business Intelligence

---

# 1. Introduction

Software-as-a-Service (SaaS) businesses operate on subscription-based revenue models, where customer retention, product engagement, and customer satisfaction play important roles in long-term business performance.

Understanding these factors requires analysing multiple aspects of business operations, including customer accounts, subscription revenue, product usage, customer churn, and support performance.

The RavenStack SaaS Product Intelligence Platform is an end-to-end data analytics project developed to analyse these business areas using Python, SQL, Microsoft Excel, and Power BI.

The project integrates five related datasets and transforms raw data into meaningful business insights through data preparation, exploratory data analysis, relational querying, data modelling, and interactive dashboard development.

The final solution provides a consolidated view of business performance and demonstrates how data analytics can support business monitoring and decision-making.

**Note:** RavenStack is a synthetic project dataset. The findings in this report describe the supplied dataset and do not represent an actual company.

# 2. Problem Statement

SaaS businesses generate large amounts of data through customer subscriptions, product interactions, support requests, and customer cancellations.

However, analysing these datasets independently makes it difficult to understand the overall business situation.

The project addresses the following business questions:

1. How are customers distributed across different industries?
2. Which subscription plans generate the highest recurring revenue?
3. How actively are customers using product features?
4. Which features have higher recorded error counts?
5. Which customer segments experience higher churn?
6. What are the major recorded reasons for customer churn?
7. How efficiently are customer support tickets resolved?
8. How does customer satisfaction vary across industries?

# 3. Project Objectives

The primary objectives are:

* Prepare and clean multiple related business datasets.
* Perform data quality checks and exploratory data analysis.
* Analyse subscription revenue and customer distribution.
* Understand product feature adoption and usage behaviour.
* Investigate churn patterns and customer segmentation.
* Evaluate customer support performance.
* Develop an interactive Excel dashboard.
* Build a four-page Power BI business intelligence report.
* Present analytical findings through structured documentation.

# 4. Dataset Description

The project uses five CSV datasets containing 33,100 records in total.

| Dataset         | Number of Records | Description                                 |
| --------------- | ----------------: | ------------------------------------------- |
| Accounts        |               500 | Customer account information and industry   |
| Subscriptions   |             5,000 | Subscription plans, revenue and churn flags |
| Feature Usage   |            25,000 | Product feature usage and error records     |
| Support Tickets |             2,000 | Customer support tickets and satisfaction   |
| Churn Events    |               600 | Churn events and recorded reasons           |

The original datasets are stored in the `data/raw/` directory, while prepared datasets are stored in `data/processed/`.

# 5. Tools and Technologies

## 5.1 Python

Python was used for data preparation, transformation, exploratory data analysis, and analytical workflows.

Libraries and environment:

* Pandas
* Jupyter Notebook

## 5.2 MySQL

MySQL was used to store the datasets in relational tables and perform SQL-based analysis.

SQL concepts used:

* SELECT and WHERE.
* GROUP BY and ORDER BY.
* JOIN operations.
* Aggregate functions.
* Data quality checks.
* Analytical views.

## 5.3 Microsoft Excel

Excel was used to create an interactive business analysis dashboard.

Features used:

* Excel Data Model.
* Table relationships.
* PivotTables.
* PivotCharts.
* KPI calculations.
* Slicers.

## 5.4 Power BI

Power BI was used to develop the final business intelligence report.

Features used:

* Data transformation.
* Data modelling.
* One-to-many relationships.
* Single-direction cross-filtering.
* DAX measures.
* KPI cards.
* Bar, column, line and donut charts.
* Interactive slicers.

# 6. Project Methodology

The project followed a structured analytics workflow.

### Phase 1: Data Preparation

* Loaded five raw CSV datasets.
* Inspected dataset structures and column names.
* Parsed date columns.
* Prepared datasets for analysis.
* Exported processed CSV files.

### Phase 2: Data Quality Assessment

* Checked missing values.
* Identified duplicate records and identifiers.
* Examined data relationships.
* Investigated date inconsistencies.
* Documented data quality observations.

### Phase 3: Exploratory Data Analysis

Performed analysis covering:

* Product usage.
* Customer churn.
* Subscription revenue.
* Customer segmentation.
* Support ticket performance.

### Phase 4: SQL Analysis

Imported the processed datasets into MySQL and performed relational analysis using SQL queries.

### Phase 5: Excel Dashboard

Created PivotTables, PivotCharts, KPIs and slicers using the Excel Data Model.

### Phase 6: Power BI Dashboard

Established table relationships, created DAX measures, and developed four interactive report pages.

# 7. Data Quality Assessment

The data quality audit identified several observations.

| Data Quality Check                 | Observation                                        |
| ---------------------------------- | -------------------------------------------------- |
| Exact duplicate rows               | None identified                                    |
| Duplicate usage IDs                | 21 duplicated IDs, each appearing twice            |
| Missing subscription end dates     | 4,514                                              |
| Populated subscription end dates   | 486                                                |
| Missing satisfaction scores        | 825                                                |
| Missing churn feedback             | 148                                                |
| Feature usage date inconsistencies | Usage dates found outside subscription date ranges |

These observations were documented rather than automatically deleting records.

Missing subscription end dates may represent subscriptions that have not ended. Similarly, missing satisfaction scores were retained rather than replaced with zero.

The subscription table initially encountered an import issue caused by an extra CSV index column. The data was re-imported into MySQL, and the corrected table was verified to contain 5,000 records.

# 8. SQL Analysis

SQL was used to investigate business performance across industries, subscription plans, product usage, and customer churn.

The main SQL analyses included:

1. Support performance by industry.
2. Feature usage by industry and subscription plan.
3. Churn reasons by customer segment.
4. Subscription-to-feature-usage relationship checks.
5. Creation of analytical SQL views.

### 8.1 Support Performance by Industry

The analysis examined ticket volume and average resolution time across five industries.

| Industry      | Accounts | Tickets | Tickets per 100 Accounts | Avg. Resolution Time |
| ------------- | -------: | ------: | -----------------------: | -------------------: |
| HealthTech    |       96 |     408 |                   425.00 |          36.68 hours |
| FinTech       |      112 |     457 |                   408.04 |          36.13 hours |
| EdTech        |       79 |     316 |                   400.00 |          36.53 hours |
| Cybersecurity |      100 |     394 |                   394.00 |          35.13 hours |
| DevTools      |      113 |     425 |                   376.11 |          34.96 hours |

**Observations:**

* HealthTech had the highest support ticket volume relative to its account count.
* DevTools had the lowest ticket volume per 100 accounts.
* Average resolution time was relatively close across all five industries.
* HealthTech recorded the highest average resolution time, while DevTools recorded the lowest.

These results identify differences in support workload, but further investigation would be required to determine the underlying causes.

### 8.2 SQL Views Created

The following analytical views were created:

* `vw_account_subscription_overview`
* `vw_feature_usage_summary`
* `vw_support_performance_by_industry`

These views provide reusable query results for business analysis and reporting.

# 9. Excel Business Analysis Dashboard

An interactive Excel dashboard was developed using the Excel Data Model.

The five datasets were imported into Excel and connected through relationships.

### Dashboard Components

**Revenue Analysis**

* MRR by subscription plan.
* ARR by subscription plan.
* Subscription count by plan.

**Customer Analysis**

* Customer distribution by industry.
* Churn events by industry.

**Interactive Features**

* Subscription Plan slicer.
* Industry slicer.
* PivotCharts connected to the data model.

The dashboard allows users to explore business performance by applying interactive filters.

# 10. Power BI Business Intelligence Dashboard

A four-page Power BI report was developed to present the major analytical findings.

## 10.1 Data Modelling

The following relationships were established:

| One-side Table | Key             | Many-side Table | Key             | Cardinality |
| -------------- | --------------- | --------------- | --------------- | ----------- |
| Accounts       | account_id      | Subscriptions   | account_id      | One-to-Many |
| Accounts       | account_id      | Support Tickets | account_id      | One-to-Many |
| Accounts       | account_id      | Churn Events    | account_id      | One-to-Many |
| Subscriptions  | subscription_id | Feature Usage   | subscription_id | One-to-Many |

All four relationships use Single cross-filter direction.

This structure allows customer and subscription filters to flow through the related datasets without introducing unnecessary bidirectional filtering.

## 10.2 Page 1 — Executive Overview

The Executive Overview provides a high-level summary of business performance.

### KPIs

* Total Accounts.
* Total Subscriptions.
* Total MRR.
* Total ARR.
* Churn Rate.

### Visualisations

* Monthly recurring revenue by subscription plan.
* Annual recurring revenue by subscription plan.
* Customer distribution by industry.
* Subscription Plan and Industry slicers.

**Business purpose:** Provides management with an overview of customer base, subscription revenue, and churn.

## 10.3 Page 2 — Product Usage & Adoption

This page examines product engagement and feature usage.

### KPIs

* Total Usage Records.
* Total Usage Count.
* Total Errors.
* Error Rate.

### Visualisations

* Most popular product features.
* Product usage by industry.
* Errors by feature.
* Product usage trends.

**Business purpose:** Helps identify popular product features, usage patterns, and areas that may require technical investigation.

## 10.4 Page 3 — Customer Churn & Segmentation

This page focuses on customer retention and churn behaviour.

### KPIs

* Total Subscriptions.
* Churned Subscriptions.
* Non-Churned Subscriptions.
* Churn Rate.

### Visualisations

* Churn by industry.
* Churn by subscription plan.
* Top recorded churn reasons.
* Customer distribution by industry.

**Business purpose:** Helps identify customer segments with higher churn counts and understand the recorded reasons for customer cancellations.

The churn rate used in this project is calculated as:

**Churn Rate = Churned Subscriptions / Total Subscriptions**

This represents the overall percentage of subscriptions flagged as churned in the current filter context. It is not a monthly churn rate.

Non-churned subscriptions should not automatically be considered active without checking their status and subscription dates.

## 10.5 Page 4 — Customer Support & Experience

This page evaluates customer support performance.

### KPIs

* Total Support Tickets.
* Average Resolution Time.
* Resolved Tickets.
* Average Customer Satisfaction.

### Visualisations

* Support tickets by industry.
* Average resolution time by industry.
* Ticket status distribution.
* Customer satisfaction by industry.

**Business purpose:** Helps evaluate support workload, resolution efficiency, and customer experience.

Missing satisfaction scores are excluded from average calculations rather than being treated as zero.

# 11. Key Project Deliverables

The completed project includes:

| Deliverable      | Description                                                                                          |
| ---------------- | ---------------------------------------------------------------------------------------------------- |
| Python Notebooks | Data preparation, data quality, product analytics, churn, revenue, segmentation and support analysis |
| SQL Scripts      | Business analysis, relationship checks and analytical views                                          |
| Excel Workbook   | Interactive business analysis dashboard                                                              |
| Power BI Report  | Four-page interactive business intelligence dashboard                                                |
| README.md        | Project overview, workflow, tools and documentation                                                  |

# 12. Limitations

The project has the following limitations:

* The datasets are synthetic and may not represent real-world SaaS behaviour.
* Some datasets contain missing values.
* Duplicate usage identifiers require further investigation.
* Some feature usage dates fall outside subscription date ranges.
* The churn-rate calculation is an overall ratio rather than a time-based churn metric.
* The analysis identifies patterns but does not establish causation.

# 13. Future Enhancements

The project can be extended through:

1. Monthly customer churn and retention analysis.
2. Cohort-based retention analysis.
3. Customer Lifetime Value (LTV) calculation.
4. Customer Acquisition Cost (CAC) analysis, if acquisition data becomes available.
5. Automated data refresh.
6. Advanced Power BI drill-through reports.
7. Additional customer behaviour analysis.

# 14. Conclusion

The RavenStack SaaS Product Intelligence Platform demonstrates an end-to-end data analytics workflow using Python, SQL, Microsoft Excel, and Power BI.

The project combines data preparation, quality assessment, exploratory analysis, relational querying, data modelling, and interactive dashboard development.

By analysing customer accounts, subscription revenue, product usage, churn, and customer support performance, the project provides a consolidated view of the synthetic SaaS business.

It also demonstrates the practical application of technical analytics skills to business-oriented questions and decision-making.

Overall, this project represents a comprehensive portfolio demonstration of data analysis and business intelligence capabilities.
