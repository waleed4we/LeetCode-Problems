-- LeetCode #570 , Problem: Managers with at Least 5 Direct Reports
-- Difficulty: Medium

-- Table:
-- Employee: id, name, department, managerId

-- Task:
-- Find the managers who have at least five direct reports.

-- Approach:
-- 1. Self join the Employee table to connect each manager with their direct reports.
-- 2. Group the records by the manager's id and name.
-- 3. Count the number of direct reports for each manager.
-- 4. Return managers whose direct report count is at least 5.

select e1.name
from employee as e1
join employee as e2
    on e1.id = e2.managerId
group by e1.id, e1.name
having count(*) >= 5;
