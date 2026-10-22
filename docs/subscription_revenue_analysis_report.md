# Subscription Revenue Analysis Report

## 1. Introduction

Subscription revenue analysis helps businesses understand how recurring revenue is distributed across subscription plans, billing frequencies, and subscription statuses. It can also provide insights into the relationship between subscription upgrades, downgrades, and revenue.

This analysis uses the RavenStack SaaS subscription dataset to examine recurring revenue patterns and identify potential business opportunities and risks.

## 2. Objectives

The main objectives of this analysis are:

* Calculate total Monthly Recurring Revenue (MRR) and Annual Recurring Revenue (ARR) across subscription records.
* Compare revenue contributions across subscription plans.
* Examine revenue distribution by billing frequency.
* Investigate recurring revenue associated with upgrade and downgrade flags.
* Compare revenue associated with churned and non-churned subscription records.
* Identify potential business insights and recommendations.

## 3. Dataset Overview

The analysis uses `ravenstack_subscriptions.csv`, which contains 5,000 subscription records and 14 columns.

Important columns include:

* `subscription_id`: Unique identifier for a subscription record.
* `plan_tier`: Subscription plan category.
* `mrr_amount`: Monthly recurring revenue associated with a subscription record.
* `arr_amount`: Annual recurring revenue associated with a subscription record.
* `billing_frequency`: Billing frequency, such as monthly or annual.
* `upgrade_flag`: Indicates whether the upgrade flag is set.
* `downgrade_flag`: Indicates whether the downgrade flag is set.
* `churn_flag`: Indicates whether the subscription record is marked as churned.

Python, Pandas, and Matplotlib were used for calculations, data aggregation, and visualizations.

## 4. Overall Revenue Analysis

The total revenue values calculated by summing the subscription records were:

| Metric    |        Total |
| --------- | -----------: |
| Total MRR |  $11,338,747 |
| Total ARR | $136,064,964 |

The dataset's ARR values are consistent with the relationship between MRR and ARR, where ARR is calculated as MRR multiplied by 12.

**Interpretation:** These figures represent aggregated values across the dataset. Because the records include historical and churned subscriptions, they should not be interpreted as the company's current recurring revenue.

## 5. Revenue by Subscription Plan

The analysis grouped subscriptions by `plan_tier` and calculated total MRR, total ARR, and subscription count.

| Subscription Plan | Subscription Records |  Total MRR |    Total ARR | Share of Total MRR |
| ----------------- | -------------------: | ---------: | -----------: | -----------------: |
| Enterprise        |                1,723 | $8,473,221 | $101,678,652 |             74.73% |
| Pro               |                1,675 | $2,105,089 |  $25,261,068 |             18.57% |
| Basic             |                1,602 |   $760,437 |   $9,125,244 |              6.71% |

### Key Findings

* Enterprise subscriptions contributed approximately 74.73% of the total MRR represented in the dataset.
* Pro subscriptions contributed approximately 18.57%.
* Basic subscriptions contributed approximately 6.71%.
* Although subscription counts were relatively similar across the three plans, their total revenue contributions differed substantially.

### Business Implications

Enterprise subscriptions represent the largest revenue concentration in the dataset. Maintaining the value and satisfaction of Enterprise customers may therefore be important for protecting recurring revenue.

The business could also investigate which Enterprise features, service levels, and customer needs contribute to the plan's revenue contribution. However, this analysis alone does not establish why Enterprise subscriptions generate more revenue.

## 6. Revenue by Billing Frequency

The analysis compared revenue across monthly and annual billing frequencies.

| Billing Frequency | Subscription Records |  Total MRR |   Total ARR | Share of Total MRR |
| ----------------- | -------------------: | ---------: | ----------: | -----------------: |
| Monthly           |                2,539 | $5,741,349 | $68,896,188 |             50.63% |
| Annual            |                2,461 | $5,597,398 | $67,168,776 |             49.37% |

### Key Findings

* Monthly billing contributed approximately 50.63% of total MRR.
* Annual billing contributed approximately 49.37%.
* Monthly billing had 78 more subscription records than annual billing.
* The difference between their total MRR values was $143,951.

### Business Implications

The aggregated revenue contribution was relatively balanced between monthly and annual billing.

The business could investigate whether annual billing improves customer retention, cash-flow predictability, or customer lifetime value. These questions require additional analysis; the current results alone do not demonstrate that one billing frequency is more profitable or produces better retention.

## 7. Revenue by Upgrade and Downgrade Status

The analysis grouped subscription records using `upgrade_flag` and `downgrade_flag`. Total MRR, total ARR, and subscription counts were calculated for each combination.

| Upgrade Flag | Downgrade Flag | Subscription Records |  Total MRR |    Total ARR |
| ------------ | -------------- | -------------------: | ---------: | -----------: |
| False        | False          |                4,276 | $9,656,818 | $115,881,816 |
| True         | False          |                  195 |   $418,932 |   $5,027,184 |
| False        | True           |                  506 | $1,222,563 |  $14,670,756 |
| True         | True           |                   23 |    $40,434 |     $485,208 |

### Key Findings

* Most subscription records (4,276) have neither the upgrade nor downgrade flag set.
* Records with only the downgrade flag set account for $1,222,563 in total MRR.
* Records with only the upgrade flag set account for $418,932 in total MRR.
* Only 23 subscription records have both flags set.

### Business Implications

The downgrade-only group has a higher aggregated MRR than the upgrade-only group. This is a comparison of group totals, not evidence that downgrades increase revenue or that upgrades reduce it.

The business should investigate revenue changes at the subscription level and examine the timing of upgrades and downgrades to understand their actual financial impact.


## 8. Revenue by Churn Status

The analysis compared subscription records marked as churned with those not marked as churned.

| Metric                       |  Not Churned |     Churned |
| ---------------------------- | -----------: | ----------: |
| Subscription Records         |        4,514 |         486 |
| Total MRR                    |  $10,159,608 |  $1,179,139 |
| Total ARR                    | $121,915,296 | $14,149,668 |
| Average MRR per Subscription |    $2,250.69 |   $2,426.21 |
| Share of Total MRR           |        89.6% |       10.4% |

### Key Findings

* Approximately 9.72% of subscription records were marked as churned.
* Churned records accounted for approximately 10.4% of total MRR across the dataset.
* The average MRR of churned subscription records was approximately $2,426.21.
* The average MRR of records not marked as churned was approximately $2,250.69.
* The average MRR in the churned group was approximately 7.8% higher.

### Business Implications

The higher average MRR among churned records suggests that the churned group contains relatively higher-revenue subscriptions on average.

This makes it worthwhile to investigate the characteristics and needs of these subscriptions, including their plan tiers, subscription durations, and recorded churn reasons.

However, the $1,179,139 total MRR associated with churned records should not be described as confirmed monthly revenue lost due to churn. The dataset includes historical records, and the calculation does not establish the timing of revenue loss.

## 9. Visualizations

Two bar charts were created to support the analysis:

1. **Total MRR by Subscription Plan:** Compares total MRR across Basic, Pro, and Enterprise plans.
2. **Total MRR by Billing Frequency:** Compares total MRR between monthly and annual billing.

The plan comparison highlights Enterprise as the largest contributor to aggregated MRR. The billing-frequency comparison shows a relatively balanced revenue distribution between monthly and annual billing.

## 10. Business Recommendations

Based on the findings, the following actions are recommended:

1. **Monitor Enterprise revenue concentration:** Track Enterprise subscription retention and investigate the factors associated with its large revenue contribution.
2. **Investigate higher-value churned subscriptions:** Examine the plans, customer characteristics, and churn reasons associated with higher-MRR subscriptions marked as churned.
3. **Evaluate billing strategies:** Compare retention and customer lifetime value across monthly and annual billing before making pricing or billing-policy changes.
4. **Analyze subscription changes over time:** Use subscription history to measure revenue changes before and after upgrades or downgrades.
5. **Separate current and historical revenue:** Use subscription dates and status to calculate current recurring revenue separately from historical subscription totals.
6. **Improve revenue monitoring:** Develop a dashboard that tracks MRR, ARR, churn, plan-level revenue contribution, and billing-frequency trends using clearly defined metrics.

## 11. Limitations

Several limitations should be considered when interpreting these results:

* The revenue calculations sum values across all subscription records, including historical and churned records.
* The results do not establish the company's current MRR or ARR.
* The MRR associated with churned records is not necessarily the actual revenue lost in a particular period.
* The upgrade and downgrade flags alone do not measure the precise revenue impact of subscription changes.
* The analysis describes patterns in the available dataset and does not establish causal relationships.

## 12. Conclusion

The subscription revenue analysis identified Enterprise as the largest contributor to aggregated MRR, with approximately 74.73% of the total. Monthly and annual billing contributed relatively similar amounts, while churned subscription records accounted for approximately 10.4% of aggregated MRR.

The churned group also had a higher average MRR than the group not marked as churned, suggesting an opportunity to investigate higher-value subscriptions and their reasons for churn.

These findings provide a foundation for further revenue analysis and business decision-making. Future work should distinguish current revenue from historical subscription totals and investigate revenue changes over time.

**Notebook:** `notebooks/04_subscription_revenue_analysis.ipynb`
