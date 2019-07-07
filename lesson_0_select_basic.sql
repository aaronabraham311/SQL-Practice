/* 1.  Modify query to show the population of Germany */

SELECT population FROM WORLD
WHERE name = 'Germany'

/* 2. Show the population of Sweden, Denmark and Norway */
SELECT population FROM world
WHERE name IN ('Sweden', 'Denmark', 'Norway');

/* 3. Show countries and corresponding area with an area between 200,000 and 250,000 */
SELECT name, area FROM world
WHERE area BETWEEN 200000 AND 250000
