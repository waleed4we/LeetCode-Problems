-- LeetCode #1068 , Problem: Product Sales Analysis I
-- Difficulty: Easy

-- Tables:
-- Sales: sale_id, product_id, year, quantity, price
-- Product: product_id, product_name

-- Task:
-- Find the product_name, year, and price for each sale_id
-- in the Sales table

select product.product_name,
       sales.year, sales.price
from product
join sales
    on product.product_id = sales.product_id;

-- Approach:
-- 1. Join Product and Sales using product_id
-- 2. Get product_name from the Product table
-- 3. Get year and price from the Sales table
-- 4. Return the required columns for every sale
