# Customer Churn Analysis Report

## 1. Objective

The objective of this analysis was to examine subscription churn patterns, compare churn across subscription plans and customer industries, investigate subscription duration, and identify the most frequently recorded churn reasons in the RavenStack SaaS dataset.

## 2. Key Findings

### 2.1 Overall Subscription Churn

The dataset contains 5,000 subscription records. Of these, 486 are marked as churned and 4,514 are marked as not churned.

The overall subscription churn percentage is **9.72%**. This represents the proportion of subscription records marked as churned, not necessarily the churn rate of unique customers over a defined period.

### 2.2 Churn by Subscription Plan

The analysis compared subscription churn percentages across Enterprise, Pro, and Basic plans. The chart indicated that Enterprise had the highest churn percentage, followed by Pro and Basic.

These differences may warrant further investigation, but the analysis alone does not establish why churn varies between plans.

### 2.3 Churn by Customer Industry

The industry analysis showed the highest churn percentage in DevTools, followed by Cybersecurity and HealthTech. FinTech and EdTech had lower percentages in the displayed comparison.

Further investigation could examine whether these patterns remain consistent after considering the number of subscriptions in each industry and other relevant factors.

### 2.4 Subscription Duration Before Churn

The 486 churned subscriptions had the following duration statistics:

* **Mean duration:** 88.06 days
* **Median duration:** 42 days
* **Minimum duration:** 0 days
* **Maximum duration:** 624 days

The average duration was higher than the median, suggesting that some longer-lasting subscriptions increased the average. The median indicates that half of the churned subscriptions lasted 42 days or less.

### 2.5 Recorded Churn Reasons

The 600 churn event records were distributed across six reason categories:

| Reason     | Events | Percentage |
| ---------- | -----: | ---------: |
| Features   |    114 |     19.00% |
| Support    |    104 |     17.33% |
| Budget     |    104 |     17.33% |
| Unknown    |     95 |     15.83% |
| Competitor |     92 |     15.33% |
| Pricing    |     91 |     15.17% |

Features was the most frequently recorded reason, accounting for 19% of churn events. Support and budget were tied at 17.33%.

Although no `reason_code` values were missing, 95 events were explicitly labelled `unknown`. This distinction is important when assessing the completeness of churn information.

## 3. Business Recommendations

1. **Investigate product feature gaps:** Review feedback associated with feature-related churn to identify potential improvements.
2. **Review customer support:** Investigate support-related churn events for recurring service issues or opportunities to improve customer assistance.
3. **Examine plan-level churn:** Compare churn across plans while considering subscription counts and customer characteristics.
4. **Investigate early churn:** Examine onboarding, initial product engagement, and support interactions for subscriptions that end shortly after starting.
5. **Improve churn reason tracking:** Review how churn reasons are collected and recorded to reduce reliance on the `unknown` category.

These recommendations are potential areas for investigation, not proven solutions. Their effectiveness would need to be assessed using additional data.

## 4. Limitations

* The overall churn percentage is calculated at the subscription level rather than the unique customer level.
* Churn event records may not correspond one-to-one with churned subscriptions.
* The observed relationships do not establish causation.
* Subscription duration analysis includes only subscriptions marked as churned.
* The industry and plan comparisons describe the available dataset and may be affected by differences in group sizes.
* Further validation is needed before treating the findings as representative of actual business performance.

## 5. Conclusion

This analysis examined subscription churn across plans and industries, measured the duration of churned subscriptions, and summarised recorded churn reasons.

The dataset shows a subscription churn percentage of 9.72%, a median duration of 42 days among churned subscriptions, and features as the most frequently recorded churn reason. The results identify areas for further investigation in product development, customer support, onboarding, and churn data collection.

Additional analysis of customer-level behaviour, subscription timelines, and engagement patterns would help establish a more complete understanding of churn.
