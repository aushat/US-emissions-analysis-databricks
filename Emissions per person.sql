SELECT county_name,
population,
CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) / population AS emissions_per_person
FROM emissions_data
ORDER BY emissions_per_person DESC
LIMIT 10