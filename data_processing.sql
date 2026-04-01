SELECT top 4 * FROM users_data
SELECT top 4 * FROM transactions_data

    --  check duplicate:
SELECT COUNT(*) AS total_rows
    , COUNT(id) AS unique_userid
FROM users_data

SELECT DISTINCT gender FROM users_data ORDER BY gender ASC

SELECT COUNT(*) AS total_rows
    , COUNT(id) AS unique_transactionid
FROM transactions_data

    --  number_users by age_group
SELECT age_group, COUNT(id) AS number_users
FROM 
    (SELECT id,
        CASE
            WHEN current_age <= 24 THEN '18-24'
            WHEN current_age <= 34 THEN '25-34'
            WHEN current_age <= 44 THEN '35-44'
            WHEN current_age <= 54 THEN '45-54'
            WHEN current_age <= 64 THEN '55-64'
            ELSE '65+'
        END AS age_group
    FROM users_data
) AS age_group
GROUP BY age_group
ORDER BY age_group

    --  number_users by credit_score_group
SELECT credit_score_group, COUNT(id) AS number_users
FROM (
    SELECT id, credit_score,
        CASE
            WHEN credit_score < 580 THEN 'Poor'
            WHEN credit_score BETWEEN 580 AND 669 THEN 'Fair'
            WHEN credit_score BETWEEN 670 AND 739 THEN 'Good'
            WHEN credit_score BETWEEN 740 AND 799 THEN 'Very Good'
            ELSE 'Excellent'
        END AS credit_score_group
    FROM users_data
) AS credit_score_group
GROUP BY credit_score_group

    --  errors
SELECT 
    COLUMN_NAME,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'transactions_data';

SELECT year_month, errors_split
    , COUNT(id) AS number_transactions
FROM (
    SELECT FORMAT([date], 'yyyy-MM') AS year_month
        , ISNULL(LTRIM(RTRIM(value)), 'No Error') AS errors_split
        , id
    FROM transactions_data
    OUTER APPLY string_split(errors, ',')
) AS errors
GROUP BY year_month, errors_split
ORDER BY year_month ASC, number_transactions DESC





