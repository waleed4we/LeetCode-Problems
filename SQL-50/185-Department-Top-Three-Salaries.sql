-- LeetCode Problem #185 , Department Top Three Salaries
-- Difficulty: Hard

-- Tables:
-- Employee: id, name, salary, departmentId
-- Department: id, name

-- Task:
-- Find employees who have a salary in the top three unique
-- salaries within their respective department.

-- Approach:
-- 1. Join Employee with Department to get the department name.
-- 2. Use DENSE_RANK() to rank salaries within each department , DENSE_RANK() gives the same rank to employees with the same salary
-- 3. Partition the ranking by departmentId and order salaries in descending order.
-- 4. Filter employees whose salary rank is less than or equal to 3.

WITH ranked_employees AS (
    SELECT
        department.name AS department, employee.name AS employee,
        employee.salary AS salary, DENSE_RANK() OVER (
                PARTITION BY employee.departmentId
                ORDER BY employee.salary DESC
                            ) AS salary_rank
    FROM employee JOIN department
        ON employee.departmentId = department.id
)
SELECT
    department,
    employee,
    salary
FROM ranked_employees
WHERE salary_rank <= 3;
