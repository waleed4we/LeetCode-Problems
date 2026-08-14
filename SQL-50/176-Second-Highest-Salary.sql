-- LeetCode #176 Problem: Second Highest Salary
-- Difficulty: Medium

-- Table: Employee
-- Columns: id, salary

-- Task:
-- Find the second highest distinct salary , If a second highest salary does not exist, return NULL

-- Approach:
-- 1. Rank salaries in descending order using DENSE_RANK() as DENSE_RANK() gives the same rank to duplicate salaries
-- 2. Filter for rank 2 to get the second highest distinct salary
-- 3. Use MAX() so NULL is returned if rank 2 does not exist

SELECT MAX(salary) AS SecondHighestSalary
FROM (
    SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS sal_rank
    FROM Employee
) AS sec_sale
WHERE sal_rank = 2;
