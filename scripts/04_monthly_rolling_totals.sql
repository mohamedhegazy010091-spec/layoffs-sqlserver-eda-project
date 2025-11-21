-- Monthly totals + running (cumulative) sum


USE world_layoffs;
GO


WITH MonthlyData AS (
SELECT
FORMAT([date], 'yyyy-MM') AS month_label,
SUM(total_laid_off) AS total_laid_off
FROM dbo.layoffs_staging2
GROUP BY FORMAT([date], 'yyyy-MM')
)
SELECT
month_label,
total_laid_off,
SUM(total_laid_off) OVER (ORDER BY month_label) AS rolling_total_layoffs
FROM MonthlyData
ORDER BY month_label ASC;
