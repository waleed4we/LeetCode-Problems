-- LeetCode #1141, Problem: User Activity for the Past 30 Days I
-- Difficulty: Easy

-- Table:
-- Activity: user_id, session_id, activity_date, activity_type

-- Task:
-- Find the daily active user count for the 30-day period
-- ending on 2019-07-27, inclusively.
-- A user is considered active if they performed at least one activity on that day.

-- Approach:
-- 1. Filter the activity dates to the required 30-day period.
-- 2. Group the activities by activity_date.
-- 3. Count distinct users for each day because a user can perform multiple activities on the same day.
-- 4. Return the activity date as day and the number of active users.

select activity_date as day,
       count(distinct user_id) as active_users
from Activity
where activity_date > '2019-07-27'::date - INTERVAL '30 days'
  and activity_date <= '2019-07-27'
group by activity_date;
