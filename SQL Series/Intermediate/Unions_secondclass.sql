-- Union : combine the result sets of two or more SELECT queries
-- SELECT statement within the UNION must have the same number of columns in the result sets with similar data types
-- UNION operator removes duplicate rows from the result set by default.
 
-- Syntax: 
-- SELECT column1, column2, ...
-- FROM table1
-- UNION
-- SELECT column1, column2, ...
-- FROM table2;
SELECT * 
FROM employee_demographics
UNION
SELECT * 
FROM employee_salary
;

#selecting specific column
#shows the first name and last into the same table 
SELECT age, gender
FROM employee_demographics 
UNION 
SELECT first_name, last_name 
FROM employee_salary
;

#selecting same data(union and union distinct are same)
SELECT first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM employee_salary
;

#UNION ALL(shows duplicates data too)
SELECT first_name, last_name 
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;

#USE case(using label)
SELECT first_name, last_name, 'Old' as label
FROM employee_demographics
WHERE age > 50;

#highly paid old 
SELECT first_name, last_name, 'Old' AS label
FROM employee_demographics 
WHERE age > 50
UNION
SELECT first_name, last_name, 'Highly Paid Employee' AS label
FROM employee_salary
WHERE salary > 70000;

#
SELECT first_name, last_name, 'Old Man' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS label 
FROM employee_demographics 
WHERE age > 40 AND gender = 'Female'
UNION 
SELECT first_name, last_name, 'Higly Paid Employee' AS label
FROM employee_salary 
WHERE salary > 70000
ORDER BY first_name, last_name  
;