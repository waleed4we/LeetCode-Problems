# LeetCode Problem #1667 : Fix Names in a Table
# Difficulty: Easy

# Table:
# Users: user_id, name

# Task : Fix the names so that only the first character is uppercase
# and the remaining characters are lowercase
# Return the result ordered by user_id

import pandas as pd

def fix_names(users: pd.DataFrame) -> pd.DataFrame:
    users['name'] = users['name'].str.capitalize()
    return users[['user_id', 'name']].sort_values('user_id').reset_index(drop=True)

# Used Approach :
# 1. Use the .str.title() method to format each name
# 2. Select only the required user_id and name columns
# 3. Sort the result by user_id in ascending order
