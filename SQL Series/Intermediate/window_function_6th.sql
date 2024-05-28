USE parks_and_recreation;
-- Window function in MYSQL
-- perform calculations across a set of table rows related to the current row. 

-- window function is somewhat like group by except they don't roll everything up into a row
-- window function allow us to look at partition or a group they each keep their own unique rows in o/p 

 
SELECT * 
FROM employee_demographics;  

-- salary based on gender
SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender; -- rolls everthying up into one row as per gender
-- group by rolls everything up in a row

SELECT gender, AVG(salary) OVER() -- used OVER() window function, means avg salary over everything 
FROM employee_demographics dem
JOIN employee_salary sal 
	ON dem.employee_id = sal.employee_id
;
-- using partition by is like grouping in window function, it won't roll everything to one row 
SELECT gender, AVG(salary) OVER(PARTITION BY gender) -- partition by just like group by but not rolling up  
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

-- WHY we need window function:
-- if we need to show more information in table, window function allows to show without 
-- affecting to the intended columns at all
 
SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;
-- Output won't be change because we used window function, In this we partitioned on the 
-- basis of gender 

SELECT dem.first_name, dem.last_name, gender, AVG(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY dem.first_name, dem.last_name, gender;
-- The output for above quries are different because we grouping(breaking) everything based 
-- on of unique values in these columns(first_name, last_name, gender)
 

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
-- The calculation of the average salary calculation on above quries goes completely 
-- independent with other columns because of window function 

SELECT dem.first_name, dem.last_name, gender, 
SUM(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

-- Rolling Total: starts at a specific value and add on values from subsquent rows based off 
-- our partition 
SELECT dem.first_name, dem.last_name, gender, salary, 
SUM(salary) OVER (PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal 
	ON dem.employee_id = sal.employee_id;
 
 -- ROW NUMBER

SELECT dem.first_name, dem.last_name, gender, salary, 
ROW_NUMBER() OVER(PARTITION BY gender)
FROM employee_demographics dem 
JOIN employee_salary sal 
	ON dem.employee_id = sal.employee_id
;

-- highest to lowest salary 
SELECT dem.first_name, dem.last_name, gender, salary, 
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
-- RANK: this function will rank on the basis of criteria we provided whereas row_number will only 
-- assing number. This will automatically assign unique next+1 new rank to the number coming after 
-- duplicates. For example if two rows got same rank then they will get same rank 
-- and next row will got next+1 rank    
-- That means rank will assign number in accordance with position
 
SELECT dem.first_name, dem.last_name, gender, salary, 
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC ) AS row_num, 
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
    
-- DENSE_RANK: This will mitigate the problem of rank. It will assign same value for duplicates and next new
-- value for next column. That means this will assign number numerically not positionally.
 
SELECT dem.first_name, dem.last_name, gender, salary, 
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num, 
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS densed_rank
FROM employee_demographics dem 
JOIN employee_salary sal 
	ON dem.employee_id = sal.employee_id;