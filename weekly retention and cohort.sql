  --Retention and Churn rate by weekly cohort.
WITH
  weekly_cohorts AS (
  SELECT
    DATE_TRUNC(subscription_start, WEEK) AS week_by_cohort,
    user_pseudo_id,
    subscription_end
  FROM
    `tc-da-1.turing_data_analytics.subscriptions`
  WHERE
    subscription_start BETWEEN DATE('2020-11-01')
    AND DATE('2021-02-07') ),
  retention AS (
  SELECT
    week_by_cohort,
    COUNT(DISTINCT user_pseudo_id) AS retained_week_0,
    COUNT (DISTINCT
      CASE
        WHEN DATE_SUB(COALESCE(subscription_end, DATE('2021-02-07')), INTERVAL 1 WEEK) > week_by_cohort THEN user_pseudo_id
        ELSE NULL
    END
      ) AS retained_week_1,
    COUNT (DISTINCT
      CASE
        WHEN DATE_SUB(COALESCE(subscription_end, DATE('2021-02-07')), INTERVAL 2 WEEK) > week_by_cohort THEN user_pseudo_id
        ELSE NULL
    END
      ) AS retained_week_2,
    COUNT (DISTINCT
      CASE
        WHEN DATE_SUB(COALESCE(subscription_end, DATE('2021-02-07')), INTERVAL 3 WEEK) > week_by_cohort THEN user_pseudo_id
        ELSE NULL
    END
      ) AS retained_week_3,
    COUNT (DISTINCT
      CASE
        WHEN DATE_SUB(COALESCE(subscription_end, DATE('2021-02-07')), INTERVAL 4 WEEK) > week_by_cohort THEN user_pseudo_id
        ELSE NULL
    END
      ) AS retained_week_4,
    COUNT (DISTINCT
      CASE
        WHEN DATE_SUB(COALESCE(subscription_end, DATE('2021-02-07')), INTERVAL 5 WEEK) > week_by_cohort THEN user_pseudo_id
        ELSE NULL
    END
      ) AS retained_week_5,
    COUNT (DISTINCT
      CASE
        WHEN DATE_SUB(COALESCE(subscription_end, DATE('2021-02-07')), INTERVAL 6 WEEK) > week_by_cohort THEN user_pseudo_id
        ELSE NULL
    END
      ) AS retained_week_6
  FROM
    weekly_cohorts
  GROUP BY
    week_by_cohort)
SELECT
  week_by_cohort,
  retained_week_0,
  retained_week_1,
  retained_week_2,
  retained_week_3,
  retained_week_4,
  retained_week_5,
  retained_week_6
FROM
  retention
ORDER BY
  week_by_cohort;



