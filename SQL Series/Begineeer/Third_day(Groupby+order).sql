 Use Parks_and_Recreation;
 -- Group by in SQL
--   SELECT DISTINCT gender FROM employee_demographics;
 SELECT gender FROM employee_demographics GROUP BY gender;
 
 SELECT gender, AVG(age) FROM employee_demographics GROUP BY gender;
 
 SELECT * FROM  employee_salary;
 
 -- SELECT occupation,salary FROM employee_salary GROUP BY occupation, salary;
 
 SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age) FROM employee_demographics GROUP BY gender;
 
 
 -- Order By
 SELECT * FROM employee_demographics ORDER BY first_name desc;
 
 SELECT * FROM employee_demographics ORDER BY gender, age;
 
 SELECT * FROM employee_demographics ORDER BY gender, age desc;
 
 -- using column number instead of it's name
 SELECT * FROM employee_demographics ORDER BY 5,4;
 SELECT * FROM employee_demographics ORDER BY age DESC, gender;
 
 
 