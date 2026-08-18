-- LeetCode #1075 , Problem: Project Employees I
-- Difficulty: Easy

-- Table:
-- Project: project_id, employee_id
-- Employee: employee_id, name, experience_years

-- Task:
-- Find the average experience years of employees for each project & Round the average to 2 decimal places

select project.project_id,
       round(avg(employee.experience_years), 2) as average_years
from project join employee
    on project.employee_id = employee.employee_id
group by project.project_id;

-- Approach:
-- 1. Join Project and Employee using employee_id
-- 2. Group the employees by project_id
-- 3. Calculate the average experience years for each project
-- 4. Round the average to 2 decimal places
