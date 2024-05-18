Use Parks_and_Recreation;
### Select statement: filter or select actual columns

-- Selecting single column from tabele 
SELECT first_name 
FROM employee_demographics;

-- Selecting all column from the table 
select * from employee_demographics;

-- Selecting multiple column from table
select first_name, last_name, birth_date from employee_demographics;

-- Changing column [column value modification as per need]
select first_name,
last_name, 
age,
age+2
from employee_demographics;

-- Arithematic operator(P{Parenthesis}E{Exponent}M{Multiplication}D{Division}A{Addition}S{Subtraction})
 select First_name, 
 age, 
 (age*2)-age
 from employee_demographics;
 
-- Distinct in SQL
-- Syntax: SELECT DISTINCT column_name
-- FROM table_name;

select Distinct first_name from employee_demographics;

Select gender from employee_demographics;
select distinct gender from employee_demographics;

Select distinct first_name, gender from employee_demographics;

####  Where clause: filters the record 
-- Syntax: SELECT * 
-- FROM table_name 
-- WHERE condition; 
Select * from employee_salary
where first_name = 'Leslie';

-- Comparision operator in where clause
Select * from employee_salary where salary > 50000;

SELECT * FROM employee_salary WHERE salary >= 50000;

SELECT * FROM employee_demographics WHERE gender = 'Female';

SELECT * FROM employee_demographics WHERE gender != 'Female';

SELECT * FROM employee_demographics WHERE birth_date > '1985-01-01';

-- Logical operator in where clause (AND, OR NOT)
SELECT * FROM employee_demographics WHERE birth_date > '1985-01-01' and gender = 'Female';

SELECT * FROM employee_demographics WHERE birth_date > '1985-01-01' OR gender = 'Female';

-- Isolated conditional statement-- 
-- SELECT * FROM employee_demographics WHERE last_name = 'Perkins' OR age > 55;
SELECT * FROM employee_demographics WHERE (last_name = 'Perkins') OR age > 55;

-- Like Statement (pattern matching-> regular expression?? )
-- This will only applicable for string comparision 
--  %(anything) and _(specific value)
 
 SELECT * FROM employee_demographics WHERE first_name LIKE 'Jer%';
 
 SELECT * FROM employee_demographics WHERE first_name LIKE '%er%';

SELECT * FROM employee_demographics WHERE first_name LIKE 'a%'; 

SELECT * FROM employee_demographics WHERE first_name LIKE 'a___'

 
 