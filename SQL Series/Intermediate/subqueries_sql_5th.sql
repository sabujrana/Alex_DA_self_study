-- Subqueries : query nested inside another query 
-- used to perform operations that require multiple steps, and result can be used by outer query
 
USE parks_and_recreation;

SELECT * 
FROM employee_demographics
WHERE employee_id IN
				( SELECT employee_id -- can't add multiple column because operand contains 1 column
					FROM employee_salary
                    WHERE dept_id = 1
	
);
 
-- Example of Subquery in SELECT
SELECT first_name, salary, AVG(salary)
FROM employee_salary
GROUP BY first_name, salary;

SELECT first_name, salary,
	(
    SELECT AVG(salary)
    FROM employee_salary
    )
FROM employee_salary; 

-- Subquries in FROM statement: Subqueries can be used in the FROM clause to create a derived table.
SELECT * 
FROM employee_demographics;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT * 
FROM 
(
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
) AS Agg_table
;

-- Finding average of all of those value of select statement
SELECT AVG(max_age), AVG(min_age), AVG(age_count)
FROM 
( SELECT gender, 
AVG(age) AS avg_age,
MAX(age) AS max_age, 
MIN(age) AS min_age,
COUNT(age) as age_count
FROM employee_demographics
GROUP BY gender) AS Agg_table
;





