use non;

-- 1. From the following table, write a SQL query to find those employees whose salaries are higher than the average for all departments. Return employee ID, first name, last name, job ID.
SELECT employee_id, first_name, last_name, job_id,salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);		-- First calculate average salary of the company. Then compare every employees salary

-- 2. From the following table, write a SQL query to check whether there are any employees with salaries exceeding 3700. Return first name, last name and department ID.
SELECT first_name, last_name, department_id
FROM employees			-- Check if salary > 3700 Show their name and department
WHERE salary > 3700;

-- 3. From the following table, write a SQL query to find the departments managed by Susan. Return all the fields of departments.
SELECT *
FROM departments
WHERE manager_id = (			-- First find Susan’s employee_id Then find the department she manages using that employee_id
    SELECT employee_id
    FROM employees
    WHERE first_name = 'Susan'
);

-- 4. From the following table, write a SQL query to find those employees who earn the second-lowest salary of all the employees. Return all the fields of employees.
SELECT *
FROM employees
WHERE salary = (
    SELECT MIN(salary)			-- find the lowest salary
    FROM employees
    WHERE salary > (
        SELECT MIN(salary) FROM employees 		-- this is the second-lowest
    )
);

-- 5. From the following table, write a SQL query to find those managers who supervise four or more employees. Return manager name, department ID.
-- SELECT e.first_name, e.last_name, e.department_id,e.manager_id
-- FROM employees e
-- WHERE e.employee_id IN (
--     SELECT manager_id
--     FROM employees
--     GROUP BY manager_id
--     HAVING COUNT(*) >= 4				
-- );

-- 6. From the following table, write a SQL query to find those employees who earn less than the average salary and work at the department where Laura (first name) is employed. Return first name, last name, salary, and department ID.
SELECT first_name, last_name, salary, department_id
FROM employees
WHERE salary < (SELECT AVG(salary) FROM employees)				-- Calculate average salary of all employees
  AND department_id = (					-- belong to Laura’s department, AND have salary < average salary
        SELECT department_id
        FROM employees
        WHERE first_name = 'Laura'				-- find Laura’s department_id
  );

-- 7. From the following table, write a SQL query to find those employees who earn more than the minimum salary of a department of ID 40. Return first name, last name, salary, and department ID.
SELECT first_name, last_name, salary, department_id
FROM employees
WHERE salary > (					-- whose salary is greater than that minimum.
    SELECT MIN(salary)				-- minimum salary in department 40.
    FROM employees
    WHERE department_id = 40
);
