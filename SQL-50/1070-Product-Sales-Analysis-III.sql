-- LeetCode Problem #1070 , Product Sales Analysis III
-- Difficulty: Medium

-- Table:
-- Sales: sale_id, product_id, year, quantity, price

-- Task : Find all sales that occurred in the first year each product was sold.
-- Return product_id, first_year, quantity, and price.

-- Approach:
-- 1. Use a CTE to find the earliest year for each product using MIN(year).
-- 2. Join the CTE with the Sales table using product_id.
-- 3. Match the sale year with the product's earliest year.
-- 4. Return all sales entries from that first year.

WITH min_year AS (
    SELECT
        product_id , MIN(year) AS earliest_year
    FROM Sales
    GROUP BY product_id
)
SELECT
    sales.product_id,
    min_year.earliest_year AS first_year,
    sales.quantity, sales.price
FROM min_year JOIN Sales
    ON min_year.product_id = sales.product_id 
    AND sales.year = min_year.earliest_year;
