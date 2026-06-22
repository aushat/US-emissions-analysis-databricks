SELECT state_abbr,
sum(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) AS Total_Emissions
FROM emissions_data
GROUP BY state_abbr
ORDER BY total_emissions DESC
LIMIT 10