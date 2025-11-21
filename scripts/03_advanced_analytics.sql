-- Top companies per year (ranked)


USE world_layoffs;
GO


WITH Company_Year AS (
SELECT
company,
YEAR([date]) AS years,
SUM(total_laid_off) AS total_laid_off
FROM dbo.layoffs_staging2
GROUP BY company, YEAR([date])
),
Company_Year_Rank AS (
SELECT
company,
years,
total_laid_off,
DENSE_RANK() OVER (PARTITION BY years ORDER BY total_laid_off DESC) AS ranking
FROM Company_Year
)
SELECT company, years, total_laid_off, ranking
FROM Company_Year_Rank
WHERE ranking <= 3
AND years IS NOT NULL
ORDER BY years ASC, total_laid_off DESC;
