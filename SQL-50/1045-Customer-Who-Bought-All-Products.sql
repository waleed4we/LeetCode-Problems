-- LeetCode #1045 , Problem: Customers Who Bought All Products
-- Difficulty: Medium

-- Tables:
-- Customer: customer_id, product_key
-- Product: product_key

-- Task:
-- Find the customers who bought all the products available in the Product table.

-- Approach:
-- 1. Group the Customer table by customer_id then Count the distinct products purchased by each customer
-- 2. Count the total number of products in the Product table then Compare both counts
-- 3. Return customers whose distinct product count equals the total number of products.

select customer_id
from Customer
group by customer_id
having count(distinct product_key) = (
    select count(product_key)
    from Product
);
