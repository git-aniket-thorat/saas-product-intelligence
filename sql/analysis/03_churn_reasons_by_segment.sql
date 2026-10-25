
USE ravenstack_saas;

SELECT
    a.industry,
    s.plan_tier AS subscription_plan,
    COUNT(DISTINCT s.subscription_id) AS total_subscriptions,
    SUM(s.churn_flag = 'True') AS churned_subscriptions,
    ROUND(
        100.0 * SUM(s.churn_flag = 'True')
        / NULLIF(COUNT(DISTINCT s.subscription_id), 0),
        2
    ) AS churn_rate_pct
FROM ravenstack_subscriptions AS s
INNER JOIN ravenstack_accounts AS a
    ON s.account_id = a.account_id
GROUP BY
    a.industry,
    s.plan_tier
ORDER BY churn_rate_pct DESC;

