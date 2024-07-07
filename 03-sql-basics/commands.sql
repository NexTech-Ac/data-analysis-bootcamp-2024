 -- SELECT and FROM Clauses
-- The SELECT clause specifies the columns to be retrieved from the database, 
-- FROM clause specifies the table from which to retrieve the data.
SELECT * FROM employees; -- Get a list of all employees.


-- WHERE clause
-- The WHERE clause filters the records based on a specified condition.
SELECT * FROM employees WHERE gender = 'Female'; -- Get a list of female employees.

-- JOIN clause
-- JOIN clause combines rows from two or more tables based on a related column between them.
SELECT e.first_name, e.last_name, d.department_name -- Get a list of employees along with their department names.
FROM employees e
JOIN employee_salaries es ON e.employee_id = es.employee_id 
JOIN departments d ON es.dept_id = d.department_id;

-- ORDER BY Clause
SELECT first_name, last_name, age 
FROM employees
ORDER BY last_name ASC; -- Get a list of employees ordered by their last names.

-- GROUP BY Clause
-- The GROUP BY clause groups rows that have the same values in specified columns into summary rows, like COUNT, SUM, AVG, etc.
SELECT d.department_name, COUNT(e.employee_id) AS num_employees -- Get the count of employees by department.
FROM employees e
JOIN employee_salaries es ON e.employee_id = es.employee_id
JOIN departments d ON es.dept_id = d.department_id
GROUP BY d.department_name;

-- HAVING Clause
-- The HAVING clause is used to filter groups based on a specified condition, similar to WHERE but for groups.
SELECT d.department_name, COUNT(e.employee_id) AS num_employees
FROM employees e
JOIN employee_salaries es ON e.employee_id = es.employee_id
JOIN departments d ON es.dept_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 1; -- Get the departments with more than 1 employee.

-- LIMIT Clause
-- The LIMIT clause specifies the number of records to return.

SELECT * FROM employees LIMIT 5;

