-- Basic inspection and one-off queries


USE world_layoffs;
GO


-- Show sample rows
SELECT TOP (200) *
FROM dbo.layoffs_staging2;


-- Max single-event layoffs
SELECT MAX(total_laid_off) AS max_laid_off
FROM dbo.layoffs_staging2;


-- Max / Min percentage laid off (where available)
SELECT MAX(percentage_laid_off) AS max_pct, MIN(percentage_laid_off) AS min_pct
FROM dbo.layoffs_staging2
WHERE percentage_laid_off IS NOT NULL;


-- Rows where percentage = 1 (100%)
SELECT *
FROM dbo.layoffs_staging2
WHERE percentage_laid_off = 1;


-- Companies with 100% layoffs ordered by funds raised (if numeric)
SELECT *
FROM dbo.layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY TRY_CAST(funds_raised_millions AS BIGINT) DESC;
