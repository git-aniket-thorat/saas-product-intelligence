USE ravenstack_saas;

SELECT
    a.industry,
    s.plan_tier AS subscription_plan,
    COUNT(DISTINCT a.account_id) AS accounts_with_usage,
    COUNT(DISTINCT s.subscription_id) AS subscriptions_with_usage,
    COUNT(fu.usage_id) AS usage_records,
    SUM(fu.usage_count) AS total_usage_count,
    SUM(fu.error_count) AS total_errors,
    ROUND(
        100.0 * SUM(fu.error_count)
        / NULLIF(SUM(fu.usage_count), 0),
        2
    ) AS errors_per_100_usage_counts
FROM ravenstack_feature_usage AS fu
INNER JOIN ravenstack_subscriptions AS s
    ON fu.subscription_id = s.subscription_id
INNER JOIN ravenstack_accounts AS a
    ON s.account_id = a.account_id
GROUP BY
    a.industry,
    s.plan_tier
ORDER BY total_usage_count DESC;