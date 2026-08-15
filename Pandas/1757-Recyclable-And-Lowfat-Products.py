# LeetCode #1757, Problem: Recyclable and Low Fat Products
# Difficulty: Easy

# Table:
# Products: product_id, low_fats, recyclable

# Task:
# Find the product IDs of products that are both low fat and recyclable.

# Approach:
# 1. Filter products where low_fats is 'Y' and recyclable is 'Y'.
# 2. Select only the required product_id column.
# 3. Return the filtered DataFrame.

import pandas as pd

def find_products(products: pd.DataFrame) -> pd.DataFrame:
    return products[
        (products['low_fats'] == 'Y') & (products['recyclable'] == 'Y')][['product_id']]
