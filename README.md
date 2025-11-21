# Layoffs SQL Server EDA Project


This repository contains exploratory data analysis (EDA) scripts for the Layoffs dataset using **SQL Server (T-SQL)**.

---

layoffs-sqlserver-eda-project/

```
├── README.md
├── data/
│ └── layoffs.csv
├── scripts/
│ ├── 01_eda_basic_queries.sql
│ ├── 02_grouped_analysis.sql
│ ├── 03_advanced_analytics.sql
│ └── 04_monthly_rolling_totals.sql
```

---
## What’s included


- `data/layoff_stagings2.csv` — cleaned up dataset (from the previous project ==>> [https://github.com/mohamedhegazy010091-spec/layoffs-sql-cleaning-project] )
- `scripts/` — SQL scripts used for EDA and analysis


## Purpose


The goal is to explore trends and summarize layoffs across companies, locations, industries and time. The scripts demonstrate typical EDA workflow in SQL Server:


- Basic inspection queries
- Aggregations and top-N groupings
- Time-series monthly aggregation and rolling totals
- Ranking and per-year leaderboards


## How to use


1. Restore `data/layoffs.csv` into a SQL Server table called `layoffs_staging2` in a database named `world_layoffs` (or adjust schema names).
2. Open the `scripts/` folder and run the SQL files in order:
- `01_eda_basic_queries.sql`
- `02_grouped_analysis.sql`
- `03_advanced_analytics.sql`
- `04_monthly_rolling_totals.sql`
3. Inspect results and export snapshots for reporting or visualization.
  


## Notes
- These scripts assume `total_laid_off`, `percentage_laid_off`, and `funds_raised_millions` are numeric types. If your staging table stores them as `varchar`, convert them to numeric types or use `TRY_CAST/TRY_CONVERT`.
- Adjust table/schema names if you use a different database.


---

## 🌟 About Me
Hi there! I'm Mohamed Hegazy, a junior data analyst who loves working with data to uncover patterns and insights. I’m passionate about turning raw data into clean, visual, and easy-to-understand information. I mainly work with Excel, SQL, Python, and Power BI to analyze and visualize data effectively.
