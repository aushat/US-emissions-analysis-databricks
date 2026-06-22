WITH state_emissions AS (
  SELECT state_abbr,
         SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) AS total_emissions
  FROM emissions_data
  GROUP BY state_abbr
),
top_10_total AS (
  SELECT SUM(total_emissions) AS top_10_sum
  FROM (
    SELECT total_emissions
    FROM state_emissions
    ORDER BY total_emissions DESC
    LIMIT 10
  )
),
country_total AS (
  SELECT SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) AS country_sum
  FROM emissions_data
)
SELECT 
  ROUND((top_10_total.top_10_sum / country_total.country_sum) * 100, 2) AS top_10_pct_of_country
FROM top_10_total, country_total 