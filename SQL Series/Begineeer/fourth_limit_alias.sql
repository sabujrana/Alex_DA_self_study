 Use Parks_and_Recreation;
 
 SELECT * 
 FROM employee_demographics
 ORDER BY age DESC
 LIMIT 3
 ;
 
 SELECT * 
 FROM employee_demographics
 ORDER BY age DESC
 LIMIT 2,1
 ;
 
 -- Aliasing:  way to change the name of the column, also used in joins
 SELECT gender, AVG(age) as avg_age
 FROM employee_demographics
 GROUP BY gender
 HAVING AVG(age) > 40
 ;
 
 ;
 
 
 
 