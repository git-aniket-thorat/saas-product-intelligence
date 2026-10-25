-- Project: RavenStack SaaS Product Intelligence Platform
-- Analysis: Support Workload by Industry
--
-- Business question:
-- Which industries generate the most support tickets
-- relative to their customer base?

USE ravenstack_saas;

SELECT
    a.industry,

    COUNT(DISTINCT a.account_id) AS total_accounts,

    COUNT(t.ticket_id) AS total_tickets,

    ROUND(
        COUNT(t.ticket_id) * 100.0
        / COUNT(DISTINCT a.account_id),
        2
    ) AS tickets_per_100_accounts,

    ROUND(
        AVG(t.resolution_time_hours),
        2
    ) AS avg_resolution_hours

FROM ravenstack_accounts AS a

LEFT JOIN ravenstack_support_tickets AS t
    ON a.account_id = t.account_id

GROUP BY a.industry

ORDER BY tickets_per_100_accounts DESC;