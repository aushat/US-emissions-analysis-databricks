# 🌿 U.S. Emissions Analytics Dashboard

Exploring U.S. greenhouse gas emissions using EPA 2023 data — built with SQL queries in Databricks and visualized through an interactive dashboard.

## 📊 Dashboard Overview
- **Geographic map** of emissions across the continental US
- **Scatter plot** exploring the relationship between population and emissions per person
- **Pie chart** showing the top 10 states responsible for 51% of total US emissions
- **Bar chart** ranking highest-emitting counties by total CO2e (metric tons)

## 🔍 Key Insights
- Texas, Florida, and Ohio are among the top contributing states
- Harris County, TX and Maricopa County, AZ are the highest-emitting counties
- Higher population states tend to have lower emissions per person

## 🛠️ Tools Used
- **Databricks** — SQL Editor + Dashboards
- **SQL** — data querying
- **Dataset** — EPA 2023 emissions data

## 📂 SQL Queries
| File | Description |
|------|-------------|
| `Emissions_Data_2023.csv` | Raw Data file from EPA 2023 data|
| `Total Emissions.sql` | Top 10 states by total CO2e emissions |
| `County Emissions.sql` | Highest emitting counties |
| `Emissions per person.sql` | Emissions per capita by state |
| `Location_data.sql` | Geographic coordinates for map visualization |
| `% of emission of 10 states from country.sql` | Each state's share of total US emissions |

## 📸 Dashboard Preview
> 📄 [View Full Dashboard PDF](Emissions_Dashboard.pdf)
