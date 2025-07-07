-- SELECT statement 
-- we can limit the rows to reduce the processing time 

-- SELECTING ALL ITEMS FROM THE TABLE
SELECT * 
FROM employee_demographics;  -- (semicolon represents the end of the statement, without specifying the database)alter


SELECT * 
FROM parks_and_recreation.employee_demographics; -- (we specify the database as well so that we can run from anywhere)


-- SELECTING SPECIFIC COLUMN FROM THE TABLE 
SELECT first_name 
FROM parks_and_recreation.employee_demographics;

-- SELECTING MULTIPLE SPECIFIC COLUM FROM THE TABLE 
SELECT first_name, last_name, birth_date
FROM parks_and_recreation.employee_demographics;

-- alternatives to make more readable 
SELECT first_name, 
last_name, 
birth_date
FROM parks_and_recreation.employee_demographics;

-- above alternative way help some operated column to read easily 
SELECT first_name, 
last_name, 
birth_date, 
age, 
age + 10
FROM parks_and_recreation.employee_demographics;

-- MATHEMATICAL OPERATION FOLLOWS PEMDAS(Parenthesis, Exponential, Multiplication, Division, Addition, Subtraction)

-- Example: 
SELECT first_name, 
last_name,
birth_date, 
age, 
(age + 10) * 10 + 10
FROM parks_and_recreation.employee_demographics;

-- DISTINCT : Selct a unique value within a column 
SELECT GENDER
FROM parks_and_recreation.employee_demographics; -- show general list of the gender

SELECT DISTINCT GENDER
FROM parks_and_recreation.employee_demographics; -- it shows unique value only



