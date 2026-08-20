-- LeetCode #585, Problem: Investments in 2016
-- Difficulty: Medium

-- Table:
-- Insurance: pid, tiv_2015, tiv_2016, lat, lon

-- Task:
-- Find the sum of tiv_2016 for policyholders who have the same
-- tiv_2015 value as at least one other policyholder and have a unique lat and lon location
-- Round the result to 2 decimal places

select sum(tiv_2016) as tiv_2016
from insurance
where tiv_2015 in (
    select tiv_2015
    from insurance
    group by tiv_2015
    having count(*) > 1
)
and (lat, lon) in (
    select lat, lon
    from insurance
    group by lat, lon
    having count(*) = 1
);

-- Approach:
-- 1. Find tiv_2015 values that appear more than once
-- 2. Find lat and lon pairs that appear exactly once
-- 3. Keep only rows satisfying both conditions
-- 4. Calculate the sum of tiv_2016
-- 5. Round the result to 2 decimal places
