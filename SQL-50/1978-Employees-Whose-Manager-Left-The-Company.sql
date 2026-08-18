-- LeetCode #1978, Problem: Employees Whose Manager Left the Company
-- Difficulty: Easy

-- Task:
-- Find employees whose salary is less than 30000
-- and whose manager has left the company

select employee_id
from employees
where salary < 30000
    and manager_id not in (
      select employee_id from employees
  )
order by employee_id;

-- Approach :
-- 1. Filter employees whose salary is less than 30000
-- 2. Check if their manager_id does not exist in the Employees table
-- 3. Order the result by employee_id
