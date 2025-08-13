-- Select statement

SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name,
birth_date,
age,
(age+10)*5
FROM parks_and_recreation.employee_demographics;
#PEMDAS



SELECT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;

select * 
FROM parks_and_recreation.employee_salary;

SELECT dept_id
FROM parks_and_recreation.employee_salary;


