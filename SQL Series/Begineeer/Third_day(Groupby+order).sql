 Use Parks_and_Recreation;
--   SELECT DISTINCT gender FROM employee_demographics;

-- Group by in SQL: group by will arrange the identical data
-- Syntax: SELECT column_name
-- FROM table_name
-- GROUP BY column_name;

-- SELECT column1, aggregate_function(column2)
-- FROM table_name
-- GROUP BY column1;

 SELECT gender FROM employee_demographics GROUP BY gender;
 
 SELECT gender, AVG(age) FROM employee_demographics GROUP BY gender;
 
 SELECT * FROM  employee_salary;
 
 -- SELECT occupation,salary FROM employee_salary GROUP BY occupation, salary;
 
 SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) FROM employee_demographics GROUP BY gender;
 
 
 -- Order By: sorting of records[Order will be ASC by default] 
 -- Syntax: SELECT column_name
 -- FROM table_name
 -- ORDER BY column_name;
 
 -- SELECT column1, column2
-- FROM table_name
-- ORDER BY column1 [ASC|DESC], column2 [ASC|DESC];
 
 SELECT * FROM employee_demographics ORDER BY first_name desc;
 
 SELECT * FROM employee_demographics ORDER BY gender, age;
 
 SELECT * FROM employee_demographics ORDER BY gender, age desc;
 
 -- using specific column number instead of it's name
 SELECT * FROM employee_demographics ORDER BY 5,4;
 SELECT * FROM employee_demographics ORDER BY age DESC, gender;
 
 
 