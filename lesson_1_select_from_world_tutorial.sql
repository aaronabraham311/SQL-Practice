/* 1. Show name, continent and population of all countries */

SELECT name, continent, population FROM world

/* 2. Show the name for the countries that have a population of at least 200 million. */

SELECT name FROM world
WHERE population >= 200000000

/* 3. Give the name and per capita GDP for countries with populations of at least 200 million

SELECT name, gdp/population FROM world
WHERE population >= 200000000

/* 4. Show the name and population in millions or countries in South America */

SELECT name, (population/1000000) FROM world
WHERE continent = 'South America'

/* 5. Show the name and population for France, Germany and Italy */

SELECT name, population FROM world
WHERE name IN ('France', 'Germany', 'Italy')

/* 6. Show the countries that have a name that includes 'United' */

SELECT name FROM world
WHERE name LIKE '%United%'

/* 7. Show the countries that are big by area (area more than 3 million sq km) or big by population (more than 250 million). Show name, population and area */

SELECT name, population, area FROM world
WHERE area > 3000000 OR population > 250000000

/* 8. Show the countries (name, population and area) that are big by area or by population but not both */

SELECT name, population, area FROM world
WHERE area > 3000000 XOR population > 250000000

/* 9. For South America, show population in millions and GDP in billions, both rounded to two decimal places */

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000,2) FROM world
WHERE continent = 'South America'

/* 10. Show the name and per-capita GDP for countries with a GDP of at least a trillion dollars. Round this to the nearest 1000 */

SELECT name, ROUND(gdp/population, -3) FROM world
WHERE gdp >= 1000000000000

/* 11. Show the name and capital of countries that have the same number of characters in both the name and capital */

SELECT name, capital FROM world
WHERE LENGTH(name) = LENGTH(capital)

/* 12. Show the name and capital of countries where both the name and capital begin with the same letter but not countries where the capital and country have the same name. */

SELECT name, capital FROM world
WHERE LEFT(name,1) = LEFT(capital, 1) AND name <> capital -- <> is NOT EQUALS operator

/* 13. Find countries that has all the vowels but no space */

SELECT name FROM world
WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %'


