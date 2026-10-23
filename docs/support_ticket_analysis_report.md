# Support Ticket Analysis Report

## 1. Introduction

Customer support is an important part of the customer experience for Software-as-a-Service (SaaS) businesses. Analysing support tickets helps organizations understand support demand, resolution times, customer satisfaction, and escalation patterns.

This report presents an analysis of RavenStack's synthetic customer support ticket dataset. The analysis uses Python and Pandas to examine ticket priorities, resolution times, customer satisfaction, and escalation status. The findings provide insights into support operations and identify areas for further investigation.

## 2. Objectives

The main objectives of this analysis are:

- Examine the distribution of support tickets across priority levels.
- Understand overall ticket resolution times.
- Compare resolution times across ticket priorities.
- Analyse customer satisfaction across priority levels.
- Examine the relationship between resolution time and customer satisfaction.
- Compare escalated and non-escalated tickets.
- Identify potential opportunities to improve support operations.

## 3. Dataset Overview

The analysis uses the `ravenstack_support_tickets.csv` dataset.

The dataset contains 2,000 records and 9 columns.

### Dataset Columns

| Column | Description |
|---|---|
| `ticket_id` | Unique identifier assigned to a support ticket |
| `account_id` | Identifier of the customer account associated with the ticket |
| `submitted_at` | Date and time when the ticket was submitted |
| `closed_at` | Date and time when the ticket was closed |
| `resolution_time_hours` | Time taken to resolve the ticket, measured in hours |
| `priority` | Priority assigned to the support ticket |
| `first_response_time_minutes` | Time taken to provide the first response, measured in minutes |
| `satisfaction_score` | Customer satisfaction score recorded for the ticket |
| `escalation_flag` | Indicates whether the ticket was escalated |

### Tools and Technologies

- Python
- Pandas
- Matplotlib
- Jupyter Notebook

## 4. Support Ticket Distribution by Priority

The analysis examined the number and percentage of tickets assigned to each priority level.

| Priority | Ticket Count | Ticket Share |
|---|---:|---:|
| Urgent | 514 | 25.70% |
| High | 510 | 25.50% |
| Medium | 491 | 24.55% |
| Low | 485 | 24.25% |
| **Total** | **2,000** | **100.00%** |

### Key Findings

- Urgent tickets represented the largest group, accounting for 25.70% of all tickets.
- High-priority tickets accounted for 25.50% of the total.
- Medium-priority tickets represented 24.55%.
- Low-priority tickets accounted for 24.25%.
- The difference between the highest and lowest ticket counts was only 29 tickets.

### Business Interpretation

Support demand was distributed relatively evenly across the four priority levels. Urgent and high-priority tickets together accounted for 51.20% of all tickets.

This distribution highlights the importance of maintaining effective support processes across all priority levels while ensuring that urgent issues receive appropriate attention.

## 5. Overall Ticket Resolution Time

Descriptive statistics were calculated to understand the time required to resolve support tickets.

| Metric | Result |
|---|---:|
| Total tickets | 2,000 |
| Average resolution time | 35.86 hours |
| Standard deviation | 21.14 hours |
| Minimum resolution time | 1 hour |
| 25th percentile | 17 hours |
| Median resolution time | 35 hours |
| 75th percentile | 54 hours |
| Maximum resolution time | 72 hours |

### Key Findings

- The average ticket resolution time was 35.86 hours.
- The median resolution time was 35 hours.
- Half of the tickets were resolved within 35 hours.
- Approximately 25% of tickets were resolved within 17 hours.
- Approximately 75% of tickets were resolved within 54 hours.
- The shortest recorded resolution time was 1 hour, while the longest was 72 hours.

### Business Interpretation

The average and median resolution times were relatively close, indicating that they provide similar summaries of the typical resolution time.

However, the standard deviation of 21.14 hours indicates considerable variation in resolution times. Further investigation into ticket complexity, support workload, and priority-handling procedures could help explain these differences.

## 6. Resolution Time by Ticket Priority

The analysis compared average and median resolution times across priority levels.

| Priority | Ticket Count | Average Resolution Time | Median Resolution Time |
|---|---:|---:|---:|
| High | 510 | 36.96 hours | 38 hours |
| Low | 485 | 36.35 hours | 36 hours |
| Medium | 491 | 35.59 hours | 34 hours |
| Urgent | 514 | 34.57 hours | 33 hours |

### Key Findings

- High-priority tickets had the highest average resolution time at 36.96 hours.
- Urgent tickets had the lowest average resolution time at 34.57 hours.
- Low-priority tickets averaged 36.35 hours.
- Medium-priority tickets averaged 35.59 hours.
- The difference between the average resolution times of high-priority and urgent tickets was 2.39 hours.

### Business Interpretation

Urgent tickets were resolved faster on average than tickets in the other priority groups. However, high-priority tickets had the longest average resolution time.

These results suggest that resolution times varied across priority levels, although the differences were relatively small. Additional analysis would be required to determine whether these differences are statistically meaningful or related to ticket complexity and support procedures.

## 7. Customer Satisfaction by Ticket Priority

Customer satisfaction scores were analysed across ticket priority levels. Only tickets with recorded satisfaction scores were included in the calculations.

| Priority | Recorded Responses | Average Satisfaction | Median Satisfaction |
|---|---:|---:|---:|
| High | 295 | 4.00 | 4.0 |
| Low | 287 | 4.02 | 4.0 |
| Medium | 292 | 3.93 | 4.0 |
| Urgent | 301 | 3.97 | 4.0 |

### Key Findings

- Low-priority tickets had the highest average satisfaction score at 4.02.
- Medium-priority tickets had the lowest average score at 3.93.
- High-priority tickets had an average score of 4.00.
- Urgent tickets had an average score of 3.97.
- All four priority groups had a median satisfaction score of 4.0.

### Business Interpretation

Average satisfaction scores were similar across the four priority levels. The difference between the highest and lowest averages was only 0.09 points.

The results suggest that satisfaction was broadly consistent across priority groups. However, missing satisfaction scores limit the analysis, and the available results do not establish whether the small differences between groups are statistically meaningful.

## 8. Relationship Between Resolution Time and Customer Satisfaction

The Pearson correlation coefficient was calculated to examine the linear relationship between ticket resolution time and customer satisfaction.

Only tickets with both resolution time and satisfaction scores available were included.

| Metric | Result |
|---|---:|
| Total tickets in the dataset | 2,000 |
| Tickets included in the correlation analysis | 1,175 |
| Pearson correlation coefficient | 0.012 |

### Key Findings

- A total of 1,175 tickets had both required values recorded.
- The correlation coefficient was 0.012.
- The coefficient was very close to zero, indicating almost no linear relationship between resolution time and customer satisfaction in this dataset.

### Business Interpretation

The analysis did not identify a meaningful linear association between resolution time and customer satisfaction.

Within this dataset, longer resolution times were not meaningfully associated with either higher or lower satisfaction scores in a linear sense.

However, this result does not prove that resolution time has no effect on customer satisfaction. Other factors, such as issue complexity, communication quality, and the effectiveness of the resolution, may influence satisfaction. Correlation alone cannot establish causation.

## 9. Escalation Analysis

The analysis compared ticket volume and resolution times between escalated and non-escalated tickets.

| Escalation Status | Ticket Count | Ticket Share | Average Resolution Time | Median Resolution Time |
|---|---:|---:|---:|---:|
| Not escalated | 1,905 | 95.25% | 35.79 hours | 35 hours |
| Escalated | 95 | 4.75% | 37.20 hours | 39 hours |
| **Total** | **2,000** | **100.00%** | — | — |

### Key Findings

- Only 95 tickets, or 4.75% of the total, were escalated.
- The remaining 1,905 tickets were not escalated.
- Escalated tickets had an average resolution time of 37.20 hours.
- Non-escalated tickets had an average resolution time of 35.79 hours.
- The average resolution time for escalated tickets was 1.41 hours higher.
- The median resolution time for escalated tickets was 4 hours higher.

### Business Interpretation

Escalated tickets took slightly longer to resolve than non-escalated tickets, based on both average and median resolution times.

This difference may warrant further investigation. Escalated tickets could involve more complex issues or require additional coordination, but the current analysis does not establish the reasons for the longer resolution times.

Because only 95 tickets were escalated, conclusions about this group should be interpreted with appropriate caution.

## 10. Visual Analysis

A bar chart was created to compare average ticket resolution times across priority levels.

The chart showed the following ordering:

1. Urgent tickets had the lowest average resolution time.
2. Medium-priority tickets had the second-lowest average.
3. Low-priority tickets had the second-highest average.
4. High-priority tickets had the highest average resolution time.

The visualization makes it easier to compare the four priority groups and highlights the relatively small difference between their average resolution times.

## 11. Business Recommendations

Based on the findings, the following recommendations can be considered.

### 11.1 Review Resolution-Time Differences Across Priorities

High-priority tickets had the highest average resolution time, while urgent tickets had the lowest. The support team could investigate whether these differences are related to ticket complexity, workload, or handling procedures.

### 11.2 Investigate Longer-Running Tickets

The maximum recorded resolution time was 72 hours, while the 75th percentile was 54 hours. Reviewing tickets with longer resolution times could help identify recurring issues and opportunities to improve support efficiency.

### 11.3 Monitor Customer Satisfaction

Average satisfaction scores were similar across priority levels. Continued monitoring of satisfaction scores can help identify changes in customer experience and potential differences between ticket groups.

### 11.4 Investigate Escalated Tickets

Escalated tickets had a higher average and median resolution time than non-escalated tickets. Reviewing the reasons for escalation and the handling process may help identify opportunities to reduce delays.

### 11.5 Improve Satisfaction Data Collection

The analysis included 1,175 tickets in the correlation calculation, compared with 2,000 tickets in the complete dataset. Improving the collection of customer satisfaction feedback would provide a larger sample for future analysis.

### 11.6 Evaluate Support Performance Using Multiple Metrics

Resolution time alone does not fully explain customer satisfaction. Support performance should be evaluated using several measures, including response time, resolution time, customer satisfaction, escalation frequency, and ticket complexity.

## 12. Limitations

The findings should be interpreted in light of the following limitations:

- The dataset is synthetic and may not represent the behaviour of a real SaaS support organization.
- The analysis is descriptive and does not establish causal relationships.
- Satisfaction scores were missing for a substantial portion of tickets.
- The correlation analysis included only tickets with both resolution times and satisfaction scores available.
- Only 95 tickets were escalated, limiting the amount of information available for that group.
- The analysis did not examine ticket complexity, support-team workload, or the reasons for escalation.
- The small differences between average resolution times and satisfaction scores have not been tested for statistical significance.

## 13. Conclusion

The support ticket analysis examined 2,000 tickets to understand ticket priorities, resolution times, customer satisfaction, and escalation patterns.

The average ticket resolution time was 35.86 hours, with a median of 35 hours. Urgent tickets had the lowest average resolution time, while high-priority tickets had the highest. Customer satisfaction scores were relatively similar across priority levels, and the correlation between resolution time and satisfaction was approximately 0.012, indicating almost no linear relationship. Escalated tickets had a slightly higher average resolution time than non-escalated tickets.

These findings provide an overview of support operations and highlight areas for further investigation. However, the observed relationships do not establish causation, and missing satisfaction scores limit the customer satisfaction analysis.

The analysis demonstrates the use of Python, Pandas, and Matplotlib to summarize operational data, compare support metrics, examine relationships between variables, and communicate findings through tables and visualizations.

## 14. Notebook Reference

The analysis was performed in:

`notebooks/06_support_ticket_analysis.ipynb`