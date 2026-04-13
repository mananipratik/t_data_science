-- tables departments, employees, locations, write a SQL query to find the first name, last name, department, city, and state province for each employee.
-- SELECT e.first_name,e.last_name,d.department_name,l.city,l.state_province
-- FROM employees e
-- JOIN departments d 
-- ON e.department_id = d.department_id
-- JOIN locations l 
-- ON d.location_id = l.location_id;

--  tables departments, employees, write a SQL query to find all those employees who work in department ID 80 or 40. Return first name, last name, department number and department name.
-- select e.first_name,e.last_name,d.department_name,d.department_id
-- from employees e
-- join departments d
-- on e.department_id = d.department_id
-- where e.department_id in (80,40);alter


-- tables departments, employees, locations, write a SQL query to find those employees whose first name contains the letter ‘z’. Return first name, last name, department, city, and state province.
-- select e.first_name,e.last_name,d.department_name,l.city,l.state_province
-- from departments d
-- join employees e
-- on d.department_id = e.department_id
-- join locations l
-- on l.location_id = d.location_id
-- where e.first_name like '%z';

-- employees, write a SQL query to find the employees who earn less than the employee of ID 182. Return first name, last name and salary.
-- select first_name,last_name,salary 
-- from employees
-- where salary <(select salary from employees where employee_id = '182');

--  table employees, write a SQL query to find the employees and their managers. Return the first name of the employee and manager.
-- select e.first_name as employee_name,e.employee_id,m.manager_id as manager_id
-- from employees e
-- left join employees m
-- on e.manager_id = m.employee_id;

-- tables departments, locations, write a SQL query to display the department name, city, and state province for each department.
-- select d.department_name,l.city,l.state_province 
-- from locations l
-- join departments d
-- on l.location_id = d.location_id;

-- table employees, write a SQL query to find the employees and their managers. Those managers do not work under any manager also appear in the list. 
-- Return the first name of the employee and manager.
-- select e.first_name as employee_name,
-- m.first_name as manager_name
-- from employees e
-- left join employees m
-- on e.manager_id = m.employee_id;

--  tables employees, write a SQL query to find the employees who work in the same department as the employee with the last name Taylor. 
-- Return first name, last name and department ID.
-- select first_name,last_name,department_id
-- from employees
-- where department_id = (
-- select department_id from employees where last_name = 'taylor'
-- );

-- table employees and jobs, write a SQL query to calculate the difference between the maximum salary of the job and the employee's salary. 
-- Return job title, employee name, and salary difference.
-- select j.job_title,e.first_name,e.last_name,e.salary,(j.max_salary - e.salary) AS salary_difference
-- from jobs j
-- join employees e
-- on e.job_id = j.job_id;

--  table departments, employees, write a SQL query to calculate the average salary, the number of employees receiving commissions in that department.
-- Return department name, average salary and number of employees.
select d.department_name,e.avg(salary),e.count(*)
from employees e
join departments d
on
