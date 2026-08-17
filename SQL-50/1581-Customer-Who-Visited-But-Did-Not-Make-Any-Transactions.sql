-- LeetCode #1581, Problem: Customer Who Visited but Did Not Make Any Transactions
-- Difficulty: Easy

-- Tables:
-- Visits: visit_id, customer_id
-- Transactions: transaction_id, visit_id, amount

-- Task:
-- Find the customers who visited the mall without making any transactions
-- and count how many times each customer made these types of visits

select visits.customer_id,
       count(*) as count_no_trans
from visits
left join transactions
    on visits.visit_id = transactions.visit_id
where transactions.transaction_id is null
group by visits.customer_id
order by 2;

-- Approach:
-- 1. Use LEFT JOIN to keep all visits and match their transactions
-- 2. Filter rows where transaction_id is NULL to find visits without transactions
-- 3. Group the remaining visits by customer_id
-- 4. Use COUNT(*) to count each customer's visits without transactions
-- 5. Order the result by count_no_trans
