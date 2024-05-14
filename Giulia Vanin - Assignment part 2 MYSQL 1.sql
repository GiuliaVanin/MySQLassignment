#TASK 1 - Using count, get the number of cities in the USA
SELECT COUNT(*)
FROM city
WHERE countrycode = 'USA';

#TASK 2 - Find out what the population and average life expectancy for people in Argentina (ARG) is.
SELECT lifeexpectancy
FROM country 
WHERE name = "Argentina";

#TASK 3 - Using ORDER BY, LIMIT, what country has the highest life expectancy?
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 10;

#TASK 4 - Select 25 cities around the world that start with the letter 'F' in a single SQL query.
SELECT name
FROM city
WHERE name LIKE 'F%'
Limit 25;

#TASK 5 - Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
SELECT id, name, population
FROM city
LIMIT 10;

#TASK 6 - Create a SQL statement to find only those cities from city table whose population is larger than 2000000.
SELECT Name, population
FROM city
WHERE population >= 2000000;

# TASK 7 - 	Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.
SELECT Name
FROM city
WHERE name LIKE "BE%";

#TASK 8 - Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
SELECT Name, population
FROM city
WHERE population BETWEEN 500000 AND 1000000;

#TASK 9 - Create a SQL statement to find a city with the lowest population in the city table.
SELECT name, Population
FROM city
ORDER BY population
Limit 1;

# TASK 10 - Create a SQL statement to display all cities from the 'city' table sorted by Name in ascending order.
SELECT name 
FROM city
ORDER BY name ASC;

#TASK 11 - Create a SQL statement to find a country with the largest population in the country table.
SELECT name, population 
FROM country
ORDER BY Population desc
LIMIT 1;

#Create a SQL statement to find the capital of Spain (ESP).
SELECT country.Name, country.Capital
FROM country
WHERE country.Name = 'SPAIN';

#Create a SQL statement to list all the languages spoken in the Caribbean Regions
SELECT DISTINCT cl.Language
FROM country c
JOIN countrylanguage cl ON c.Code = cl.CountryCode
WHERE c.Region = 'Caribbean';

#Create a SQL statement to find all cities from Europe continent
SELECT city.Name
FROM city
JOIN country ON city.CountryCode = country.Code
WHERE country.Continent = 'Europe';
