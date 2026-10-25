USE ravenstack_saas;

SELECT 'accounts' AS table_name, COUNT(*) AS total_rows
FROM ravenstack_accounts

UNION ALL

SELECT 'subscriptions', COUNT(*)
FROM ravenstack_subscriptions

UNION ALL

SELECT 'feature_usage', COUNT(*)
FROM ravenstack_feature_usage

UNION ALL

SELECT 'support_tickets', COUNT(*)
FROM ravenstack_support_tickets

UNION ALL

SELECT 'churn_events', COUNT(*)
FROM ravenstack_churn_events;