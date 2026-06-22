SELECT county_state_name,
population,
CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) as Total_Emissions
FROM emissions_data
ORDER BY total_emissions DESC
LIMIT 10