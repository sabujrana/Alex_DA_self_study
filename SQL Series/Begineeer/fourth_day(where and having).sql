 Use Parks_and_Recreation;
 
 -- Having vs where


-- SELECT gender, AVG(age)
-- FROM employee_demographics
-- WHERE AVG(age) > 40 
-- GROUP BY gender;

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
 
 
