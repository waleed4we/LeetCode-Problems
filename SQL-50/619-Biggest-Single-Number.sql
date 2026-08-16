-- LeetCode #619, Problem: Biggest Single Number
-- Difficulty: Easy

-- Table:
-- MyNumbers: num

-- Task:
-- Find the largest number that appears exactly once in the MyNumbers table.
-- If there is no single number, return NULL.

-- Approach:
-- 1. Use a CTE to group the MyNumbers table by num.
-- 2. Use HAVING COUNT(num) = 1 to keep only numbers that appear once.
-- 3. Apply MAX() on the resulting single numbers to find the largest one.
-- 4. MAX() automatically returns NULL if there are no single numbers.

WITH count_ofNum As (
    Select num As all_numbers
    From MyNumbers
    Group By num
    Having Count(num) = 1
)
Select MAX(all_numbers) As num
From count_ofNum;
