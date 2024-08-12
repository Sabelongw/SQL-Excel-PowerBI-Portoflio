-- JOINS

SELECT*
FROM employee_demographics;

SELECT*
FROM employee_salary;

select dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER join employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

-- OUTER JOINS

select *
FROM employee_demographics AS dem
LEFT join employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ;
    
    -- Self Join
    
    select *
FROM employee_salary emp1
join employee_salary emp2
	on emp1.employee_id = emp2.employee_id
    ;
    
select emp1.employee_id AS emp_santa,
emp1.first_name AS First_name_santa,
emp1.last_name AS Last_name_santa,
emp2.employee_id AS emp_santa,
emp2.first_name AS First_name_santa,
emp2.last_name AS first_name_santa
FROM employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id
    ;  
    
-- Multiple table

select*
FROM employee_demographics AS dem
INNER join employee_salary AS sal
	ON dem.employee_id = sal.employee_id
inner join parks_departments pd
	on Sal.dept_id = pd.department_id
;

select*
From parks_departments