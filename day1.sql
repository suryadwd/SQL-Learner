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

*/

SELECT 
country,
count(country) AS customer,
sum(score) AS countryscores
FROM 
customers
GROUP BY country
HAVING sum(score) > 800;










