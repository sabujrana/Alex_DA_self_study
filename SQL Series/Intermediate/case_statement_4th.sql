-- Case Statement: versatile conditional expression that allows you to return specific
-- values based on different conditions
-- Allows to add logic in Select statement just like if...else in other programming language

-- Syntax: 
-- CASE expression
		-- WHEN value1 THEN result1
		--  WHEN value2 THEN result2
		--     ...
		--  ELSE resultN
	-- END

USE parks_and_recreation;
 
SELECT first_name, 
last_name,
age, 
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN 'On deaths door'
END AS Age_Brackets
FROM employee_demographics;
 
-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- FInance = 10% 
SELECT first_name, last_name, salary,
CASE 
	WHEN salary < 50000 THEN salary+(salary*0.05)
    WHEN salary > 50000 THEN salary+(salary*0.07)
END	AS New_Salary,
CASE
	WHEN dept_id = 6 THEN salary*.10
END AS bonus
FROM employee_salary;

SELECT *
FROM employee_salary;

SELECT *
FROM parks_departments;



