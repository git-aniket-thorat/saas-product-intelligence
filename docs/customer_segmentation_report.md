# Customer Segmentation Analysis Report

## 1. Introduction

Customer segmentation helps businesses understand how their customers differ in terms of industry, geography, subscription plans, account size, and customer behaviour. It helps identify patterns that can support customer retention, marketing strategies, and business decision-making.

This analysis uses the RavenStack SaaS account dataset to examine customer distribution across different segments, compare churn rates, and identify potential opportunities for improving customer retention.

## 2. Objectives

The main objectives of this analysis are:

- Examine customer distribution across industries.
- Identify the countries contributing the most accounts.
- Analyze customer distribution across subscription plans.
- Compare customer sizes across industries and subscription plans.
- Compare churn rates between trial and non-trial accounts.
- Identify industries and referral sources associated with higher churn rates.
- Examine subscription plan distribution across countries.
- Provide business recommendations based on the findings.

## 3. Dataset Overview

The analysis uses `ravenstack_accounts.csv`, which contains 500 account records and 10 columns.

Important columns include:

- `account_id`: Unique identifier for an account.
- `industry`: Industry associated with the account.
- `country`: Country associated with the account.
- `plan_tier`: Subscription plan assigned to the account.
- `seats`: Number of seats associated with the account.
- `is_trial`: Indicates whether the account is a trial account.
- `churn_flag`: Indicates whether the account is marked as churned.
- `referral_source`: Source through which the account was acquired.

Python, Pandas, and Matplotlib were used for data analysis, aggregation, and visualizations.

## 4. Customer Distribution by Industry

The analysis grouped accounts by industry and calculated the number of accounts in each category.

| Industry | Number of Accounts | Customer Share |
|---|---:|---:|
| DevTools | 113 | 22.6% |
| FinTech | 112 | 22.4% |
| Cybersecurity | 100 | 20.0% |
| HealthTech | 96 | 19.2% |
| EdTech | 79 | 15.8% |

### Key Findings

- DevTools had the highest number of accounts, with 113 accounts.
- FinTech followed closely with 112 accounts.
- Cybersecurity accounted for 100 accounts.
- HealthTech had 96 accounts.
- EdTech had the lowest number of accounts, with 79 accounts.

### Business Implications

The distribution of accounts is relatively balanced across the five industries, although DevTools and FinTech have slightly higher representation.

The business could investigate whether these industries differ in product requirements, customer engagement, subscription revenue, and retention.

However, account count alone does not indicate which industry is the most profitable or offers the greatest growth potential.

## 5. Customer Distribution by Country

The analysis grouped accounts by country to understand their geographic distribution.

| Country | Number of Accounts | Customer Share |
|---|---:|---:|
| US | 291 | 58.2% |
| UK | 58 | 11.6% |
| IN | 49 | 9.8% |
| AU | 32 | 6.4% |
| DE | 25 | 5.0% |
| CA | 23 | 4.6% |
| FR | 22 | 4.4% |

### Key Findings

- The United States contributed 291 accounts, representing 58.2% of the dataset.
- The United Kingdom was the second-largest country, with 58 accounts.
- India contributed 49 accounts.
- Australia contributed 32 accounts.
- Germany, Canada, and France had smaller account counts.

### Business Implications

The United States represents the largest geographic segment in the dataset.

The business could investigate customer requirements, subscription preferences, and retention patterns across countries to understand whether different markets require different strategies.

However, the distribution represents the available dataset and does not establish the overall market size or growth potential of each country.

## 6. Customer Distribution by Subscription Plan

The analysis grouped accounts by subscription plan to determine which plans were most common.

| Subscription Plan | Number of Accounts | Customer Share |
|---|---:|---:|
| Pro | 178 | 35.6% |
| Basic | 168 | 33.6% |
| Enterprise | 154 | 30.8% |

### Key Findings

- Pro was the most common subscription plan, with 178 accounts.
- Basic accounted for 168 accounts.
- Enterprise accounted for 154 accounts.
- The distribution was relatively balanced across all three plans.

### Business Implications

Pro had the highest account count, although the differences between the three plans were relatively small.

The business could investigate whether customers on different plans differ in product usage, revenue contribution, retention, and support requirements.

The number of accounts alone does not establish which plan generates the most revenue or profit.

## 7. Customer Size Across Industries

The analysis grouped accounts by industry and calculated account counts, average seats, median seats, and total seats.

| Industry | Account Count | Average Seats | Median Seats | Total Seats |
|---|---:|---:|---:|---:|
| EdTech | 79 | 25.48 | 13.0 | 2,013 |
| FinTech | 112 | 21.72 | 16.0 | 2,433 |
| Cybersecurity | 100 | 19.76 | 14.5 | 1,976 |
| HealthTech | 96 | 19.62 | 17.0 | 1,884 |
| DevTools | 113 | 17.47 | 12.0 | 1,974 |

### Key Findings

- EdTech had the highest average number of seats per account, at 25.48.
- FinTech had the highest total seat count, with 2,433 seats.
- DevTools had the lowest average seat count, at 17.47.
- HealthTech had the highest median seat count, at 17.0.
- EdTech's average seat count was considerably higher than its median.

### Business Implications

The results indicate differences in account size across industries.

EdTech's relatively high average compared with its median suggests that some accounts with larger seat counts may be influencing the average.

FinTech's high total seat count reflects both its number of accounts and the seats associated with those accounts.

The business could use these findings to investigate industry-specific customer requirements and account sizes. However, seat count alone does not establish revenue or profitability.

## 8. Churn Analysis: Trial vs. Non-Trial Accounts

The analysis compared trial and non-trial accounts by calculating the total number of accounts, churned accounts, and churn rate.

| Account Type | Account Count | Churned Accounts | Churn Rate |
|---|---:|---:|---:|
| Non-trial | 403 | 85 | 21.09% |
| Trial | 97 | 25 | 25.77% |

### Key Findings

- Non-trial accounts had a churn rate of 21.09%.
- Trial accounts had a churn rate of 25.77%.
- The churn rate for trial accounts was 4.68 percentage points higher than that of non-trial accounts.
- There were 97 trial accounts and 403 non-trial accounts in the dataset.

### Business Implications

Trial accounts had a higher observed churn rate than non-trial accounts.

The business could investigate the trial experience, product onboarding, feature activation, and conversion process to understand whether trial customers face difficulties obtaining value from the product.

Improving onboarding and helping customers understand the product's benefits may be worth investigating.

However, the observed difference does not prove that trial status causes churn. Further analysis would be required to identify the reasons behind the difference.

## 9. Churn by Industry

The analysis grouped accounts by industry and calculated the number of churned accounts and the churn rate for each industry.

| Industry | Account Count | Churned Accounts | Churn Rate |
|---|---:|---:|---:|
| DevTools | 113 | 35 | 30.97% |
| FinTech | 112 | 25 | 22.32% |
| HealthTech | 96 | 21 | 21.88% |
| EdTech | 79 | 13 | 16.46% |
| Cybersecurity | 100 | 16 | 16.00% |

### Key Findings

- DevTools had the highest observed churn rate, at 30.97%.
- FinTech had a churn rate of 22.32%.
- HealthTech had a churn rate of 21.88%.
- EdTech had a churn rate of 16.46%.
- Cybersecurity had the lowest observed churn rate, at 16.00%.

### Business Implications

DevTools stands out as the industry with the highest observed churn rate.

The business could investigate whether product fit, onboarding, customer expectations, feature requirements, or support experiences contribute to the pattern.

Cybersecurity had the lowest observed churn rate among the five industries. Further investigation could help determine whether its customers differ in engagement, product requirements, or other characteristics.

These findings identify segments worth investigating but do not explain why churn occurs or establish that industry causes churn.

## 10. Churn by Referral Source

The analysis grouped accounts by referral source and calculated account counts, customer share, churned accounts, and churn rates.

| Referral Source | Account Count | Customer Share | Churned Accounts | Churn Rate |
|---|---:|---:|---:|---:|
| organic | 114 | 22.8% | 20 | 17.54% |
| other | 103 | 20.6% | 25 | 24.27% |
| ads | 98 | 19.6% | 23 | 23.47% |
| event | 96 | 19.2% | 29 | 30.21% |
| partner | 89 | 17.8% | 13 | 14.61% |

### Key Findings

- Organic referrals contributed the highest number of accounts, with 114.
- Event-referred accounts had the highest observed churn rate, at 30.21%.
- Partner-referred accounts had the lowest observed churn rate, at 14.61%.
- Accounts categorized under other referral sources had a churn rate of 24.27%.
- Accounts acquired through ads had a churn rate of 23.47%.
- Organic-referred accounts had a churn rate of 17.54%.

### Business Implications

The differences in churn rates across referral sources may help the business identify areas for further investigation.

The business could review the expectations, onboarding experiences, and customer characteristics of event-referred accounts to understand their higher observed churn rate.

Partner-referred accounts had the lowest observed churn rate. Investigating their customer characteristics and experiences may provide useful insights into customer acquisition and retention.

However, these results do not establish that a particular referral source causes higher or lower churn. Other differences between customer groups may contribute to the observed patterns.

## 11. Customer Size Across Subscription Plans

The analysis grouped accounts by subscription plan and calculated account counts, average seats, median seats, and total seats.

| Subscription Plan | Account Count | Average Seats | Median Seats | Total Seats |
|---|---:|---:|---:|---:|
| Basic | 168 | 22.01 | 15.0 | 3,697 |
| Pro | 178 | 19.95 | 16.0 | 3,551 |
| Enterprise | 154 | 19.69 | 13.0 | 3,032 |

### Key Findings

- Basic accounts had the highest average seat count, at 22.01.
- Pro accounts had an average of 19.95 seats.
- Enterprise accounts had the lowest average seat count, at 19.69.
- Basic accounts had the highest total seat count, with 3,697 seats.
- Pro had the highest account count, with 178 accounts.

### Business Implications

The results show that average account size does not consistently increase with subscription plan tier in this dataset.

Basic accounts had the highest average seat count, while Enterprise accounts had the lowest average seat count.

The business could investigate how customers are assigned to plans and whether plan selection reflects seat count, feature requirements, or other factors.

These findings also highlight the importance of considering customer size separately from subscription plan when analyzing customer segments.

## 12. Subscription Plan Distribution Across Countries

The analysis used a cross-tabulation to compare the number of accounts across countries and subscription plans.

| Country | Basic | Enterprise | Pro |
|---|---:|---:|---:|
| AU | 10 | 8 | 14 |
| CA | 6 | 8 | 9 |
| DE | 6 | 12 | 7 |
| FR | 6 | 9 | 7 |
| IN | 22 | 13 | 14 |
| UK | 23 | 18 | 17 |
| US | 95 | 86 | 110 |

### Key Findings

- The United States had the highest number of accounts across all three subscription plans.
- Pro was the most common plan among US accounts, with 110 accounts.
- Basic was the most common plan among UK accounts, with 23 accounts.
- Basic was also the most common plan among Indian accounts, with 22 accounts.
- Enterprise was the most common plan among German accounts, with 12 accounts.
- Pro was the most common plan among Australian accounts, with 14 accounts.

### Business Implications

The cross-tabulation provides a useful overview of the geographic distribution of subscription plans.

The United States has the highest counts across all plans, consistent with its larger overall representation in the dataset.

The business could compare within-country percentages to investigate plan preferences across geographic markets. This would help avoid drawing conclusions based only on raw counts, which are affected by differences in the number of accounts in each country.

## 13. Visualizations

Several visualizations were created to support the analysis and make customer patterns easier to interpret.

The visualizations include:

1. **Churn Rate by Trial Status:** Compares churn rates between trial and non-trial accounts.
2. **Churn Rate by Referral Source:** Highlights differences in churn rates across acquisition channels.
3. **Average Seats by Subscription Plan:** Compares average account size across Basic, Pro, and Enterprise plans.

These charts complement the tabular analysis by making differences between customer segments easier to identify.

## 14. Business Recommendations

Based on the findings, the following actions are recommended:

1. **Investigate DevTools churn:** Examine customer feedback, product usage, onboarding, and support interactions to better understand the industry's relatively high observed churn rate.

2. **Review the trial experience:** Investigate onboarding, activation, and product engagement among trial accounts to identify potential areas for improvement.

3. **Evaluate event-referred accounts:** Examine customer expectations, lead qualification, and onboarding experiences associated with event-based acquisition.

4. **Study partner-referred accounts:** Investigate the characteristics and experiences of partner-referred customers to understand their comparatively lower observed churn rate.

5. **Analyze customer size separately from plan tier:** Avoid assuming that higher subscription tiers always correspond to larger accounts. Consider seat count and customer requirements when analyzing segments.

6. **Compare geographic plan preferences:** Use within-country percentages alongside raw account counts to better understand subscription plan distribution across countries.

7. **Monitor customer retention by segment:** Track churn rates across industries, trial status, and referral sources over time to identify whether these observed patterns persist.

8. **Investigate customer characteristics:** Combine segmentation results with product usage, subscription revenue, and support data to develop a more complete understanding of customer behaviour.

## 15. Limitations

Several limitations should be considered when interpreting these results:

- The analysis is based on 500 accounts in the supplied dataset and may not represent the broader SaaS market.
- The findings describe observed patterns and do not establish causal relationships.
- Account counts and seat counts do not directly measure revenue, profitability, or customer lifetime value.
- The higher churn rate in a segment does not, by itself, explain why customers churn.
- Raw country-plan counts are influenced by differences in the total number of accounts in each country.
- Additional analysis is required to validate the observed patterns and investigate the factors associated with customer churn.

## 16. Conclusion

The customer segmentation analysis identified differences in account distribution across industries, countries, subscription plans, customer sizes, and churn-related segments.

The United States contributed the largest share of accounts, while Pro was the most common subscription plan. EdTech had the highest average seats per account, and FinTech had the highest total seats. Trial accounts, DevTools customers, and event-referred accounts showed comparatively higher churn rates in their respective comparisons.

These findings highlight the importance of understanding customer characteristics and identifying segments that may need further investigation to improve retention. However, the observed differences do not establish the causes of churn, and account distribution alone does not indicate profitability.

Further analysis combining customer segmentation with product usage, subscription revenue, and support data could provide a more complete understanding of customer behaviour and help guide retention strategies.

**Notebook:** `notebooks/05_customer_segmentation.ipynb`