-- Select the country and distinct count of certification as certification_count
-- Group by country
-- Filter results to countries with more than 10 different certifications
SELECT country, COUNT(DISTINCT(certification)) AS certification_count
FROM films
GROUP BY country
HAVING COUNT(DISTINCT(certification))>10;

SELECT country, ROUND(AVG(budget), 2) AS average_budget
-- Group by country
FROM films
GROUP BY country
-- Filter to countries with an average_budget of more than one billion
HAVING ROUND(AVG(budget), 2) > 1000000000
-- Order by descending order of the aggregated budget
ORDER BY average_budget DESC;

-- Select the release_year for films released after 1990 grouped by year

SELECT release_year
FROM films
WHERE release_year>1990
GROUP BY release_year;

-- Modify the query to also list the average budget and average gross
SELECT release_year, AVG(budget) as avg_budget, AVG(gross) as avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY AVG(gross) DESC
LIMIT 1;
