-- Aggregations and group-by analysis


USE world_layoffs;
GO


-- Top single-event layoffs
SELECT TOP (5) company, total_laid_off
FROM dbo.layoffs_staging2
ORDER BY total_laid_off DESC;


-- Companies with highest total layoffs (overall)
SELECT TOP (10) company, SUM(total_laid_off) AS total_laid_off
FROM dbo.layoffs_staging2
GROUP BY company
ORDER BY total_laid_off DESC;


-- Top locations by layoffs
SELECT TOP (10) location, SUM(total_laid_off) AS total_laid_off
FROM dbo.layoffs_staging2
GROUP BY location
ORDER BY total_laid_off DESC;


-- Totals by country
SELECT country, SUM(total_laid_off) AS total_laid_off
FROM dbo.layoffs_staging2
GROUP BY country
ORDER BY total_laid_off DESC;


-- Totals by year
SELECT YEAR([date]) AS yr, SUM(total_laid_off) AS total_laid_off
FROM dbo.layoffs_staging2
GROUP BY YEAR([date])
ORDER BY yr ASC;


-- Totals by industry
SELECT industry, SUM(total_laid_off) AS total_laid_off
FROM dbo.layoffs_staging2
GROUP BY industry
ORDER BY total_laid_off DESC;


-- Totals by stage
SELECT stage, SUM(total_laid_off) AS total_laid_off
FROM dbo.layoffs_staging2
GROUP BY stage
ORDER BY total_laid_off DESC;
