-- Ireland Labour Market Analysis
-- Data Source: Central Statistics Office (CSO) Ireland
-- Labour Force Survey Q2 2026
-- Author: Christopher Adiele

-- Query 1: Which sectors employ the most people in Ireland Q2 2026?
SELECT 
    "NACE Rev 2 Economic Sector" AS Sector,
    "VALUE" AS Employed_Thousands
FROM employment_by_sector
WHERE "Quarter" = '2026Q2'
AND "Sex" = 'Both sexes'
AND "Statistic Label" = 'Persons aged 15-89 years in Employment'
ORDER BY "VALUE" DESC;

-- Query 2: Employment by sector year on year comparison Q2 2025 vs Q2 2026
SELECT 
    "NACE Rev 2 Economic Sector" AS Sector,
    "Quarter",
    "VALUE" AS Employed_Thousands
FROM employment_by_sector
WHERE "Quarter" IN ('2026Q2', '2025Q2')
AND "Sex" = 'Both sexes'
AND "Statistic Label" = 'Persons aged 15-89 years in Employment'
AND "NACE Rev 2 Economic Sector" != 'All NACE economic sectors'
AND "NACE Rev 2 Economic Sector" != 'Services (G to U)'
AND "NACE Rev 2 Economic Sector" != 'Industry and Construction (B to F)'
AND "NACE Rev 2 Economic Sector" != 'Industry (B to E)'
ORDER BY "NACE Rev 2 Economic Sector", "Quarter";

-- Query 3: Employment by region Q2 2026 - which regions employ the most?
SELECT 
    "Region" AS Region,
    "VALUE" AS Employed_Thousands
FROM employment_by_region
WHERE "Quarter" = '2026Q2'
AND "Statistic Label" = 'Persons aged 15 years and over in Employment'
ORDER BY "VALUE" DESC;

-- Query 4: Unemployment rate by region Q2 2026 - where is unemployment highest?
SELECT 
    "Region" AS Region,
    "VALUE" AS Unemployment_Rate_Percent
FROM employment_by_region
WHERE "Quarter" = '2026Q2'
AND "Statistic Label" = 'ILO Unemployment Rate (15 - 74 years)'
ORDER BY "VALUE" DESC;

-- Query 5: Employment trend over last 4 quarters - is Ireland employment growing?
SELECT 
    "Quarter",
    "VALUE" AS Employed_Thousands
FROM employment_by_sector
WHERE "NACE Rev 2 Economic Sector" = 'All NACE economic sectors'
AND "Sex" = 'Both sexes'
AND "Statistic Label" = 'Persons aged 15-89 years in Employment'
AND "Quarter" IN ('2025Q3', '2025Q4', '2026Q1', '2026Q2')
ORDER BY "Quarter";