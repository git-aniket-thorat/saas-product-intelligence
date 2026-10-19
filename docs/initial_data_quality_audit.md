# Initial Data Quality Audit Report

## SaaS Product Intelligence Platform

### 1. Introduction

The purpose of this audit was to assess the completeness, consistency, validity, and relational integrity of the datasets used in the SaaS Product Intelligence Platform project.

The project uses five datasets covering customer accounts, subscriptions, feature usage, support tickets, and churn events. The audit was conducted using Python and pandas to identify potential data-quality issues before proceeding with data cleaning, SQL analysis, and dashboard development.

The original datasets were inspected without intentionally removing records or replacing missing values.

### 2. Dataset Overview

The project contains five datasets with a combined total of 33,100 records across 50 original columns.

| Dataset         | Number of Records | Original Columns |
| --------------- | ----------------: | ---------------: |
| Accounts        |               500 |               10 |
| Subscriptions   |             5,000 |               14 |
| Feature Usage   |            25,000 |                8 |
| Support Tickets |             2,000 |                9 |
| Churn Events    |               600 |                9 |
| **Total**       |        **33,100** |           **50** |

The datasets provide information about customers, subscription revenue, product engagement, customer support, and churn behaviour. These data sources can be connected through account and subscription identifiers.

### 3. Missing-Value Analysis

The initial audit identified missing values in three columns.

| Dataset         | Column               | Missing Values | Missing Percentage |
| --------------- | -------------------- | -------------: | -----------------: |
| Subscriptions   | `end_date`           |          4,514 |             90.28% |
| Support Tickets | `satisfaction_score` |            825 |             41.25% |
| Churn Events    | `feedback_text`      |            148 |             24.67% |

A subsequent check showed that all 4,514 subscriptions without an end date have `churn_flag = False`, while all 486 subscriptions with a recorded end date have `churn_flag = True`. This pattern is consistent with the possibility that the end date distinguishes ongoing subscriptions from churned subscriptions. However, the interpretation should be confirmed against the dataset definitions.

Missing satisfaction scores may indicate that customers did not provide feedback. Missing churn feedback may indicate that customers did not provide written explanations for leaving. These values should not automatically be replaced with zero or removed.

### 4. Duplicate Records and Identifier Integrity

No completely duplicated rows were identified in any of the five datasets.

However, the feature usage dataset contains 21 duplicated occurrences of `usage_id`. The investigation identified 21 affected identifier values, each appearing twice, representing 42 rows associated with repeated IDs.

The repeated IDs refer to different subscriptions and usage dates. The records also differ in other attributes, including feature names or usage counts in most cases. Therefore, these are not simply exact copies of the same rows.

This finding indicates a potential identifier-integrity issue. The source data and identifier-generation rules should be investigated before any records are removed or modified.

The primary-key checks passed for the accounts, subscriptions, support tickets, and churn events datasets. The feature usage dataset requires further investigation because its intended primary key is not unique.

### 5. Relational Integrity

Four relationships were tested:

* Subscriptions to Accounts
* Feature Usage to Subscriptions
* Support Tickets to Accounts
* Churn Events to Accounts

The audit identified zero orphan records in all four relationships. Every tested child identifier matched an identifier in the corresponding parent dataset.

These results support the expected relationships between the tables, although they do not establish that every record is logically correct.

### 6. Date Validation

All seven tested date columns contained zero non-missing values that failed date parsing.

The audit also found:

* Zero subscriptions with an end date preceding the start date.
* Zero support tickets closed before submission.
* Zero mismatches between recorded support resolution time and the elapsed time calculated from submission and closure timestamps, using a tolerance of 0.01 hours.
* Zero churn events dated before the associated account's signup date.

These results indicate that the tested dates and timestamps are internally consistent under the rules applied.

However, the feature usage date checks identified a significant concern. A total of **19,142 feature usage records occurred before the recorded start date** of their associated subscriptions. An additional **290 records occurred after the recorded subscription end date**.

The high number of usage records preceding subscription start dates requires investigation. Possible explanations include inconsistencies in the generated data, differences in how the dates are defined, or limitations in the assumed relationship between usage events and subscription periods.

These possibilities should be examined before the records are used for engagement or churn analysis.

### 7. Numerical and Financial Validation

The numerical validation checks identified no violations of the rules implemented in the notebook.

Specifically, the checks found no:

* Non-positive account or subscription seat counts.
* Negative feature usage counts, durations, or error counts.
* Negative monthly or annual recurring revenue values.
* Negative refund amounts.
* Negative support resolution times or first-response times.
* Non-missing satisfaction scores outside the assumed range of 1–5.

The stored annual recurring revenue values also matched monthly recurring revenue multiplied by 12 for every subscription record.

These results indicate that the tested numerical fields satisfy the selected validation rules. The assumed business definitions, including the satisfaction scale and ARR calculation, should be confirmed against the dataset documentation.

### 8. Overall Assessment

The initial audit found that all five datasets loaded successfully and that most of the tested structural, numerical, and date-consistency checks passed.

Three areas require particular attention:

1. The 21 repeated feature usage identifiers.
2. The high number of feature usage records dated before their associated subscription start dates.
3. The 290 feature usage records dated after their associated subscription end dates.

The missing-value patterns also require documented interpretation, especially the relationship between subscription end dates and churn flags.

The results provide a useful baseline for understanding the datasets, but they do not yet establish that all data are ready for analysis.

### 9. Recommended Next Steps

The following actions are recommended before proceeding with data cleaning:

1. Investigate the repeated feature usage IDs and establish whether they represent identifier-generation problems or another source-data issue.
2. Investigate why so many feature usage records predate their associated subscription start dates.
3. Review the 290 usage records occurring after recorded subscription end dates.
4. Confirm the business definitions of subscription status, churn, satisfaction scores, and annual recurring revenue.
5. Document which missing values are expected and which represent genuine data-quality problems.
6. Preserve the raw CSV files and perform any approved cleaning in a separate processing stage.
7. Repeat the relevant validation checks after cleaning to verify that the intended issues have been addressed.

### 10. Conclusion

The initial audit established a baseline understanding of the structure and quality of the SaaS datasets. The data passed the tested foreign-key, numerical, and several date-consistency checks, but the repeated feature usage identifiers and subscription-period inconsistencies require further investigation.

The audit does not yet establish that the datasets are fully ready for analysis. Resolving the identified concerns and documenting the decisions made during cleaning will help ensure that subsequent SQL queries, engagement metrics, churn calculations, and Power BI dashboards are based on reliable data.
