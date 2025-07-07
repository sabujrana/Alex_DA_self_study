-- Group By: group the rows having same values in the specified  column

SELECT * 
FROM employee_salary;

SELECT * 
FROM employee_demographics;

-- showing unique gender using distinct keywords
SELECT DISTINCT gender
FROM employee_demographics;
-- above and down sql statement performs the same operation but group by rolling up all values

-- showing unique gender using group by 
SELECT gender 
FROM employee_demographics
GROUP BY gender;


-- shows error
SELECT first_name 
FROM employee_demographics
GROUP BY gender; -- this gives error cause select list is not in group by clause and contains nonaggregated column
-- when you select column which is not aggregated column or if you're not using aggregated function then it has to match with groyp by clause

-- showing the unique gender
SELECT gender 
FROM employee_demographics
GROUP BY gender; 

-- showing average age according to gender
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender; 

-- group by occupation on employee salary
SELECT occupation 
FROM employee_salary
GROUP BY occupation; -- shows the unique value of occupation

-- group by for multiple column 
SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary; -- it shows mulatiple unique salary value for office manager(same value)

-- average based on gender
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender; 

-- min and max age based on gender
SELECT gender, MIN(age), MAX(age)
FROM employee_demographics
GROUP BY gender;

-- count of age based on gender
SELECT gender, COUNT(age)
FROM employee_demographics
GROUP BY gender; 

-- ORDER BY : sort the result in either ascending or descending order, by default the sorting will be done in ASC(Ascending order)
SELECT * 
FROM employee_demographics;

-- sorting the table on ascending order by the name 
SELECT * 
FROM employee_demographics
ORDER BY first_name ASC;

-- sorting on descending order 
SELECT * 
FROM employee_demographics
ORDER BY first_name DESC;

 -- sorting based on gender 
 SELECT * 
 FROM employee_demographics
 ORDER BY gender ;
 
 -- sorting based on age and gender 
 SELECT * 
 FROM employee_demographics
 ORDER BY gender, age;
 
 -- descending the age 
 SELECT * 
 FROM employee_demographics
 ORDER BY gender, age DESC;
 
 -- wrong approach : gender column won't be use, cause gender also has unique value for the age. if same age with different gender then it should sort accordingly
 SELECT * 
 FROM employee_demographics
 ORDER BY age, gender;
 
 -- sorting by column position
 SELECT * 
 FROM employee_demographics
 ORDER BY 5, 4; 
 
 





