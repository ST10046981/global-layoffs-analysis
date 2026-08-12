SELECT * FROM layoffs
ORDER BY company asc

SELECT SUM(total_laid_off) AS [Total employees laid off] FROM layoffs


SELECT COUNT(DISTINCT company) AS [Companies with layoffs] FROM layoffs
WHERE total_laid_off IS NOT NULL


SELECT COMPANY, SUM(TOTAL_LAID_OFF) FROM layoffs
GROUP BY company
ORDER BY 2 DESC

SELECT COUNTRY, SUM(TOTAL_LAID_OFF) AS [Total layoffs] FROM layoffs
GROUP BY country
ORDER BY COUNTRY DESC

--Data cleaning: I noticed that United States appeard twice in my previous query.

SELECT COUNTRY, LEN(country) AS [Length], DATALENGTH(country) AS [Data Length]
FROM layoffs
WHERE country LIKE '%United States%';

UPDATE layoffs
SET country = TRIM(country);

UPDATE layoffs
SET country = REPLACE(country, '.', '')
WHERE country LIKE 'United States%';