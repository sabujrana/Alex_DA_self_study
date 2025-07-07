-- WHERE CLAUSE
-- WHERE helps to filter records or rows of data, return the rows which will fullfill the specific condition
-- SELEC will select or filter the actual column 

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie'; -- filtering the records according to the column condition, we use comparision operator

SELECT * 
FROM employee_salary
WHERE salary > 50000; -- we use arithematic comparision operator(<, >, <=, >=, ==)

SELECT * 
FROM employee_salary
WHERE salary <= 50000;

SELECT * 
FROM employee_demographics
WHERE gender = 'Female';

SELECT * 
FROM employee_demographics
WHERE gender != 'Female';

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- LOGICAL OPERATOR IN WHERE CLAUSE (AND, OR, NOT)

SELECT * 
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
AND gender = 'male';

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male';

SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male';

-- PEMDAS ALSO APPLICABLE 
SELECT * 
FROM employee_demographics
WHERE (first_name = 'Tom' AND age = 36) OR age > 55;

-- Like statement: used to look for specific pattern, doesn't have to match exactly
-- we can use % and _ as special character where % means anything and _ means specific values
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE '%er%';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a%';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a___';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a___%';

SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1989%';









