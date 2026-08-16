-- LeetCode #596 , Problem: Classes With at Least 5 Students
-- Difficulty: Easy

-- Table:
-- Courses: student, class

-- Task:
-- Find all classes that have at least five students.

-- Approach:
-- 1. Group the Courses table by class.
-- 2. Count the number of students in each class.
-- 3. Use HAVING to keep only classes with at least 5 students.

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;
