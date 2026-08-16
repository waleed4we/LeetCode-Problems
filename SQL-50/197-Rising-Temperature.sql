-- LeetCode #197, Problem: Rising Temperature
-- Difficulty: Easy

-- Table:
-- Weather : id, recordDate, temperature

-- Task:
-- Find the IDs of dates where the temperature was higher
-- than the previous day.

-- Approach:
-- 1. Use a self-join on the Weather table.
-- 2. Match today's date with the previous day's date.
-- 3. Compare today's temperature with the previous day's temperature.
-- 4. Return the ID of the day where the temperature increased.

SELECT weather1.id
FROM Weather AS weather1
JOIN Weather AS weather2
    ON weather1.recordDate = weather2.recordDate + 1
WHERE weather1.temperature > weather2.temperature;
