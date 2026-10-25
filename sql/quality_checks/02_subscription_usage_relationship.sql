
USE ravenstack_saas;

-- 1. Check how many feature usage records have matching subscriptions
SELECT
    COUNT(*) AS total_usage_records,
    SUM(s.subscription_id IS NOT NULL) AS matched_records,
    SUM(s.subscription_id IS NULL) AS unmatched_records,
    ROUND(
        100.0 * SUM(s.subscription_id IS NOT NULL) / COUNT(*),
        2
    ) AS match_percentage
FROM ravenstack_feature_usage AS fu
LEFT JOIN ravenstack_subscriptions AS s
    ON fu.subscription_id = s.subscription_id;

-- 2. Identify feature usage records without a matching subscription
SELECT
    fu.usage_id,
    fu.subscription_id,
    fu.usage_date,
    fu.feature_name
FROM ravenstack_feature_usage AS fu
LEFT JOIN ravenstack_subscriptions AS s
    ON fu.subscription_id = s.subscription_id
WHERE s.subscription_id IS NULL
LIMIT 20;

