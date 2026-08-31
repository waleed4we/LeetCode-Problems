# LeetCode #584, Problem: Find Customer Referee
# Difficulty: Easy

# Task:
# Find customers who were not referred by the customer with id 2
# Also include customers who were not referred by anyone

import pandas as pd

def find_customer_referee(customer: pd.DataFrame) -> pd.DataFrame:
    return customer[
        (customer['referee_id'] != 2) | (customer['referee_id'].isna())][['name']]

# Used Approach :
# 1. Filter customers whose referee_id is not equal to 2
# 2. Include customers whose referee_id is null
# 3. Combine both conditions using the OR operator
# 4. Return only the name column
