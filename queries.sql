-- ================================================
-- Job Application Tracker - Queries
-- ================================================


-- ------------------------------------------------
-- 1. All applications, newest first
-- ------------------------------------------------
SELECT *
FROM applications
ORDER BY date_applied DESC;


-- ------------------------------------------------
-- 2. Count of applications per status
-- ------------------------------------------------
SELECT
    status,
    COUNT(*) AS total
FROM applications
GROUP BY status
ORDER BY total DESC;


-- ------------------------------------------------
-- 3. Active applications (still in play)
-- ------------------------------------------------
SELECT company, position, status, date_applied
FROM applications
WHERE status NOT IN ('rejected', 'offer', 'not_applied')
ORDER BY date_applied;


-- ------------------------------------------------
-- 4. Rejection rate (% of submitted applications)
-- ------------------------------------------------
SELECT
    ROUND(
        100.0 * SUM(CASE WHEN status = 'rejected' THEN 1 ELSE 0 END)
        / SUM(CASE WHEN status != 'not_applied' THEN 1 ELSE 0 END),
        1
    ) AS rejection_rate_pct
FROM applications;


-- ------------------------------------------------
-- 5. Average days to rejection
-- ------------------------------------------------
SELECT
    ROUND(AVG(JULIANDAY(end_date) - JULIANDAY(date_applied)), 1) AS avg_days_to_rejection
FROM applications
WHERE status = 'rejected'
  AND date_applied IS NOT NULL
  AND end_date IS NOT NULL;


-- ------------------------------------------------
-- 6. Applications per company (shows if you applied
--    to multiple roles at the same place)
-- ------------------------------------------------
SELECT
    company,
    COUNT(*) AS applications_sent
FROM applications
WHERE status != 'not_applied'
GROUP BY company
ORDER BY applications_sent DESC;


-- ------------------------------------------------
-- 7. Applications submitted per week
-- ------------------------------------------------
SELECT
    STRFTIME('%Y-W%W', date_applied) AS week,
    COUNT(*) AS applications
FROM applications
WHERE date_applied IS NOT NULL
GROUP BY week
ORDER BY week;


-- ------------------------------------------------
-- 8. Jobs saved but not yet applied to
-- ------------------------------------------------
SELECT company, position, notes
FROM applications
WHERE status = 'not_applied';
