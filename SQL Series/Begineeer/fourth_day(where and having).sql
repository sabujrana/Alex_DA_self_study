 Use Parks_and_Recreation;
 
-- Having vs where: Both are use for record filteration

-- Having: filter reocrd after aggregation(grouping)
-- Used with group of rows  
-- Syntax: SELECT column1, aggregate_function(column2)
-- FROM table_name
-- GROUP BY column1
-- HAVING condition;


-- Where: filter before aggregation(grouping)
-- Used with individual rows
-- Syntax: SELECT column1, column2
-- FROM table_name
-- WHERE condition
-- GROUP BY column1;

-- Syntax for where and having on same queries:
-- SELECT column1, aggregate_function(column2)
-- FROM table_name
-- WHERE condition
-- GROUP BY column1
-- HAVING aggregate_condition;

-- SELECT gender, AVG(age)
-- FROM employee_demographics
-- WHERE AVG(age) > 40 
-- GROUP BY gender;
-- Shows error because the queries first group gender and then aggreagate age which should be opposite




SELECT gender, AVG(age) 
FROM employee_demographics 
GROUP BY gender
HAVING AVG(age) > 40 ;

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
;

SELECT occupation, AVG(salary)
FROM employee_salary 
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;

-- WHERE clause works before group by and having after group by with aggregated function
 

 