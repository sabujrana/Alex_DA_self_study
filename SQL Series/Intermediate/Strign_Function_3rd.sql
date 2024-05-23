USE parks_and_recreation;
-- String Function in SQL: Used to perform operation in string data

## Used for manipulating, searching, and formatting string

## String Function

-- LENGTH String function 
-- Syntax: SELECT LENGTH(string) AS string_length;
 
SELECT LENGTH('sabuz');

SELECT first_name, LENGTH(first_name) AS name_length
FROM employee_demographics;

-- UPPER String Function
-- Syntax: SELECT UPPER(string) AS upper_string;

SELECT UPPER('sky') AS name;

SELECT first_name, UPPER(first_name) AS U_CaseName
FROM employee_demographics;

-- Lower String Function:
-- Syntax: SELECT LOWER(string) AS lower_string;
  
SELECT LOWER('sKY');

SELECT first_name, LOWER(first_name) as L_CaseName
FROM employee_demographics;

-- Trim String Function: removes leading and trailing spaces from a string.
-- Syntax: SELECT TRIM(string) AS trimmed_string;
SELECT TRIM('      sky      ');  

-- Left Trim: removes leading spaces from a string.
-- Syntax: SELECT LTRIM(string) AS left_trimmed_string;
SELECT LTRIM('    SKY');

-- Right Trime : removes trailing spaces from a string.
-- Syntax: SELECT RTRIM(string) AS right_trimmed_string;
SELECT RTRIM('SKY    ');

-- Substring function:  extracts a part of a string. 
-- Syntax: SELECT SUBSTRING(string, start_position, length) AS substring;
 
 SELECT SUBSTRING('Sabuz',2,3); ##abu
 
 SELECT first_name, 
 SUBSTRING(first_name, 4),
 SUBSTRING(first_name,3,1),
 LEFT(first_name, 4),
 RIGHT(first_name, 4),
 birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
 FROM employee_demographics;
 
 ### we can use position of some character inside substring function 
 
 -- Replace function:  replaces all occurrences of a substring within a string with another substring.
 -- Syntax: SELECT REPLACE(string, old_substring, new_substring) AS replaced_string;

SELECT first_name, REPLACE(first_name, 'a', 'z') 
FROM employee_demographics; 
 
-- Locate and position function:  used to find the position of a substring within a string.
-- Syntax: SELECT LOCATE('substring', 'string') AS position;
-- Syntax: SELECT POSITION('substring' IN 'string') AS position;

 SELECT LOCATE('X', 'Alexander');
 
 SELECT first_name, LOCATE('a', first_name)
 FROM employee_demographics;
 
-- Concatenation Function:  concatenates two or more strings into one string.
-- Syntax: SELECT CONCAT(string1, string2, ...) AS concatenated_string;

SELECT first_name, last_name, 
CONCAT(first_name,' ', last_name) AS full_name
FROM employee_demographics;  
 
 SELECT first_name, last_name 
 FROM employee_demographics;
 
 



