# LeetCode #1873 , Calculate Special Bonus
# Difficulty: Easy

# Table :
# Employees: employee_id, name, salary

# Task: Calculate the bonus for each employee
# An employee receives 100% of their salary as a bonus if :
#   1. Their employee_id is odd
#   2. Their name does not start with 'M'
# Otherwise, the bonus is 0
# Return the result ordered by employee_id

import pandas as pd

def calculate_special_bonus(employees: pd.DataFrame) -> pd.DataFrame:
    employees['bonus'] = 0
    employees.loc[
        (employees['employee_id'] % 2 != 0) &
        (~employees['name'].str.startswith('M')),
        'bonus'
    ] = employees['salary']

    return employees[['employee_id', 'bonus']]

# Approach:
# 1. Create a bonus column and initialize it with 0 for all employees
# 2. Use .loc[] to filter employees whose employee_id is odd and whose name does not start with 'M'
# 3. For employees satisfying both conditions, set their bonus equal to their salary
# 4. Return only employee_id and bonus column
