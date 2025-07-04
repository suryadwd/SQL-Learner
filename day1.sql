/* 
SELECT * 
FROM
dbo.orders;

SELECT 
order_date, sales
FROM 
orders;

SELECT 
first_name
FROM 
customers
where
score > 500;

SELECT 
*
FROM 
customers

SELECT 
first_name
FROM 
customers
where 
score != 0;

SELECT 
first_name
FROM 
customers
where 
country = 'Germany';

SELECT 
*
FROM 
customers
ORDER BY 
country  desc,score asc;

SELECT 
country, 
sum(score) AS Tanya
FROM
customers
GROUP BY country;

SELECT 
country,
count(country) AS customer,
sum(score) AS countryscores
FROM 
customers
GROUP BY country

SELECT 
country,
count(country) AS customer,
sum(score) AS countryscores
FROM 
customers
GROUP BY country
HAVING sum(score) > 800;
*/

/*
Find the average score for each country considering only customers with a score not equal to 0.
and return the country and the average score greater then 430.
*/

-- USE MyDatabase;

-- SELECT
-- country,
-- AVG(score) as average_score
-- FROM 
-- customers
-- where score != 0
-- GROUP BY country
-- HAVING AVG(score) > 430;


-- DISTINCT keyword is use to return only the unique values in the result

-- SELECT
-- DISTINCT
-- country
-- FROM
-- customers


-- TOP control the number of  rows to be returned

-- 

/*
Retrive top 3 highest scores country
*/

SELECT
TOP 3
*
FROM
customers
ORDER BY
score DESC;



