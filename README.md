# Ireland Labour Market Analysis — SQL Project

## Project Overview

This project analyses Ireland's Labour Force Survey (LFS) data from the Central Statistics Office (CSO) using SQL. The goal was to answer real business and policy questions about employment trends, regional differences, and sector performance across Ireland using the most recent official government data.

**Data Source:** Central Statistics Office Ireland (cso.ie) — Labour Force Survey Q2 2026

**Tools Used:** SQL (DB Browser for SQLite), CSO Open Data

**Datasets Used:**
- QLF03: Persons in Employment by NACE Economic Sector and Quarter
- QLF08: Persons by Region and Quarter

---

## Business Questions Answered

### Question 1: Which sectors employ the most people in Ireland?
**Finding:** Total employment in Ireland reached 2.84 million in Q2 2026. Services dominates at 2.18 million employed. Human Health and Social Work is the largest individual sector at 394,700 people.

### Question 2: How has employment changed by sector year on year?
**Finding:** Comparing Q2 2025 to Q2 2026 shows consistent growth across most sectors, with Services continuing to drive the majority of employment gains in Ireland.

### Question 3: Which regions in Ireland have the highest employment?
**Finding:** Eastern and Midland region leads with 1.42 million employed. Southern region including Cork follows at 930,600. Northern and Western is significantly lower at 493,200, highlighting a regional employment gap.

### Question 4: Where is unemployment highest across Irish regions?
**Finding:** Midland has the highest unemployment rate at 5.8% despite low overall employment numbers. Dublin sits at 5.7% — high relative to its size, suggesting significant labour market churn in the capital.

### Question 5: Is total employment in Ireland growing?
**Finding:** Employment dipped in Q1 2026 to 2.79 million but recovered strongly in Q2 2026 to 2.84 million — the highest level recorded in this period, suggesting a seasonal pattern with strong underlying growth.

---

## Key Insights

- Ireland's labour market is heavily concentrated in Services and the Eastern and Midland region
- A clear regional employment gap exists between Dublin and Eastern regions versus Northern and Western Ireland
- Despite high overall employment, Dublin has a relatively high unemployment rate suggesting high job turnover
- Total employment shows a seasonal Q1 dip followed by strong Q2 recovery — a pattern worth monitoring for workforce planning
- Human Health and Social Work is the single largest employing sector, reflecting Ireland's ageing population and healthcare investment

---

## SQL Queries

All queries are saved in `ireland_labour_market_analysis.sql`

---

## About This Project

This project was built independently as part of my data analytics portfolio. Using real Irish government data rather than generic datasets allowed me to draw insights directly relevant to the Irish labour market and economy. The analysis demonstrates practical SQL skills applied to a real world business and policy context.
