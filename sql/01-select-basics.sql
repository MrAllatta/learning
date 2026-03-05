-- Kaggle: bigquery-public-data.world_bank_intl_education
SELECT
    country_name,
    indicator_name,
    value
FROM
    `bigquery-public-data.world_bank_intl_education.international_education`
WHERE
    indicator_code = '{indicator_code}'
    AND year = {year}
ORDER BY value DESC
LIMIT {limit}
