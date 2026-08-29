-- LeetCode #1280 , Problem: Students and Examinations
-- Difficulty: Easy

-- There Are 3 Tables :
-- Students: student_id, student_name
-- Subjects: subject_name
-- Examinations: student_id, subject_name

-- Task:
-- Find the number of times each student attended each exam
-- Return all students and all subjects including those with zero attendance
-- Order the result by student_id and subject_name

select students.student_id, students.student_name,
       subjects.subject_name, count(examinations.student_id) as attended_exams
from students cross join subjects
left join examinations
    on students.student_id = examinations.student_id
    and subjects.subject_name = examinations.subject_name
group by students.student_id, students.student_name, subjects.subject_name
order by students.student_id,
         subjects.subject_name;

-- Approach:
-- 1. Use CROSS JOIN to create every possible student-subject combination
-- 2. Use LEFT JOIN to match exam attendance while keeping students with no attendance
-- 3. Use COUNT(examinations.student_id) to count attended exams
-- 4. COUNT ignores NULL values so students with no attendance get 0
-- 5. GROUP BY student and subject to calculate the attendance count
-- 6. Order the result by student_id and subject_name
