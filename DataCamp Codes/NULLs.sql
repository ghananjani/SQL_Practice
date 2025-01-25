-- Count the number of films we have language data for
SELECT COUNT(*) as count_language_known
FROM films
WHERE language IS NOT NULL;
