-- LeetCode #1729 , Problem: Find Followers Count
-- Difficulty: Easy

-- Table:
-- Followers: user_id, follower_id

-- Task:
-- Find the number of followers for each user.
-- Return the result ordered by user_id in ascending order.

-- Approach:
-- 1. Group the Followers table by user_id.
-- 2. Count the follower_id for each user to get their followers count.
-- 3. Order the result by user_id in ascending order.

SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id;
