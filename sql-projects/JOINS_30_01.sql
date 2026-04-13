--                    joins in sql                    --
-- joins are use to combine rows from two or more tables, based on a related column between them.
--   employee                           salary
-- id  -   name                      id  -  salary
-- 101    raj                        102     25000
-- 102     kush                      103     45000



-- INNER JOIN - 101, kush, 25000
-- returns records that have matching values in both tables
-- Syntax
-- SELECT column(s)
-- FROM tableA
-- INNER JOIN tableB
-- ON tableA.col_name = tableB.col_name;


-- left join 
-- returns all records from the left table, and the matched records from the right table
-- Syntax
-- SELECT column(s)
-- FROM tableA
-- LEFT JOIN tableB
-- ON tableA.col_name = tableB.col_name;



-- right join 
-- returns all records from the right table, and the matched records from the left table
-- Syntax
-- SELECT column(s)
-- FROM tableA
-- RIGHT JOIN tableB
-- ON tableA.col_name = tableB.col_name;


-- full join - UNION
-- SELECT column(s)
-- FROM tableA
-- INNER JOIN tableB
-- ON tableA.col_name = tableB.col_name;
-- UNION
-- SELECT column(s)
-- FROM tableA
-- INNER JOIN tableB
-- ON tableA.col_name = tableB.col_name;

-- cross join
-- the CROSS JOIN is used to generate a paired combination of each row of the first table with each row of second table.
-- CROSS JOIN is also known as cartesian join.

use hr_db;

-- 1. From the following tables departments and employees, write a SQL query to 
-- find the first name, last name, department number, and department name for each employee.
SELECT  e.first_name, e.last_name, e.department_id, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- 6. From the following tables departments and employees, write a SQL query to 
-- find all departments, including those without employees.
-- Return first name, last name, department ID, department name.

SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id;

-- 10. From the following tables departments and employees, write a SQL query to 
-- find out which employees have or do not have a department. 
-- Return first name, last name, department ID, department name.
SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM departments d
RIGHT JOIN employees e
ON d.department_id = e.department_id;

