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
Retrive top 3 highest scores country && lowest two 
*/

-- SELECT
-- TOP 3
-- *
-- FROM
-- customers
-- ORDER BY
-- score DESC;

-- SELECT 
-- TOP 2
-- *
-- FROM
-- customers
-- ORDER BY
-- score

-- both below quesry when hit run will executes but if we select any one and hit run only the selected will run

-- SELECT
-- * 
-- FROM
-- customers

-- SELECT
-- * 
-- FROM
-- orders


-- DDL(Data Defination Language) -- they defines the structure 

-- -> create
-- -> alter
-- -> drop

/*
Create a new table called persons with columns:id, person_name, birth_date, phone
*/

-- CREATE
-- TABLE persons (
--   id INT NOT NULL,
--   person_name VARCHAR(50) NOT NULL,
--   birth_date DATE,
--   phone VARCHAR(15) NOT NULL,
--   CONSTRAINT pk_persons_table PRIMARY KEY (id)
-- )

-- ALTER TABLE persons 
-- ADD email VARCHAR(50) NOT NULL

-- ALTER TABLE persons
-- DROP column phone

-- ALTER to make changes in table add new colums, remove
-- DROP TABLE persons to remove the table completly

-- SELECT
-- *
-- FROM 
-- persons

-- DML(Data Manipulation Language) -- they manipulate/manipulate the data
-- -> insert
-- -> update
-- -> delete   

-- INSERT 
-- INTO
-- customers (id, first_name, country, score)
-- values (6, 'surya', 'India', 865), (7, 'suraj', 'India', NULL);

-- INSERT INTO customers values(8,'anuj', 'India', NULL);    --we can skip this (xxxxxxxxxxxxxxxxxxx)

-- SELECT
-- * 
-- FROM
-- customers

-- we can use the insert to insert the data from one table to another 

INSERT INTO persons(id, person_name, birth_date, email)
SELECT
id, first_name, NULL, 'pending'
FROM
customers

SELECT
* 
FROM
persons

