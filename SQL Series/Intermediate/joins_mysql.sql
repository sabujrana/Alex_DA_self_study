### Join in SQL:
-- used to combine rows from two or more tables based on related columns between them
  
use parks_and_recreation;

SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

## Inner Join: returns records that have matching values in both tables
-- Syntax: SELECT columns
-- FROM table1
-- INNER JOIN table2
-- ON table1.common_column = table2.common_column;
 
 SELECT * 
 FROM employee_demographics AS dem
 INNER JOIN employee_salary AS sal
 ON dem.employee_id = sal.employee_id
 ;
 
 SELECT dem.employee_id, age, occupation
 FROM employee_demographics AS dem
 INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

## Outer Join: 
# Left outer join:  returns all records from the left table, and the matched records from the right table. The result is NULL from the right side if there is no match
-- Syntax: SELECT columns
-- FROM table1
-- LEFT JOIN table2
-- ON table1.common_column = table2.common_column;

# Right Outer join:  returns all records from the right table, and the matched records from the left table. The result is NULL from the left side when there is no match
-- SELECT columns
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.common_column = table2.common_column;

SELECT * 
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal 
	ON dem.employee_id = sal.employee_id
;

# Self join: regular join but the table is joined with itself.
-- Syntax: 
-- SELECT a.columns, b.columns
-- FROM table a, table b
-- WHERE condition;
 -- We have to specify which table are we pulling from  
 SELECT * 
 FROM employee_salary emp1
 JOIN employee_salary emp2
	ON emp1.employee_id = emp2.employee_id
;

SELECT * 
 FROM employee_demographics AS dem
 LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

SELECT * 
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id +1 = emp2.employee_id
;

-- simplifying the above query 
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa, 
emp1.last_name AS last_name_santa, 
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp, 
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id +1 = emp2.employee_id
;

## JOINING MULTIPLE TABLE TOGETHER
-- showing value of employee_demographics and employee_salary  
SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal 
	ON dem.employee_id = sal. employee_id
;

-- parks_departments table is called reference table 
-- reference table: used primarily to store values that will be referenced by foreign keys in other table
-- often referred to as lookup tables or code tables and are typically used to maintain data integrity and consistency across a database
 -- by standardizing the possible values that can be assigned to a column in another table

-- showing values of reference table which is parks_departments 
SELECT *
FROM parks_departments;

-- JOINING multiple tables 
-- Syntax:
-- SELECT columns
-- FROM table1
-- JOIN table2 ON table1.common_column = table2.common_column
-- JOIN table3 ON table2.common_column = table3.common_column
-- ...;
 
SELECT * 
FROM employee_demographics AS dem 
INNER JOIN employee_salary AS sal 
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments as pd
	ON sal.dept_id = pd.department_id
;
# In the above query there is no common categories, even though they are linked 
# like employee_demographics with employee_salary and employee_salary with parks_departments
