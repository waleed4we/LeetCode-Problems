# LeetCode #1517 , Users With Valid Email
# Difficulty: Easy

# Table :
# Users: user_id, name, mail

# Task: Find users who have valid emails
# A valid email must:
#   1. Start with a letter
#   2. Contain only letters, digits, underscore, period, and dash in the prefix
#   3. End with the exact domain '@leetcode.com'
# Return user_id, name, and mail

import pandas as pd

def valid_emails(users: pd.DataFrame) -> pd.DataFrame:
    return users[
        users['mail'].str.match(r'^[A-Za-z][A-Za-z0-9_.-]*@leetcode\.com$', na=False)
    ]

# Approach:
# 1. Use .str.match() to validate the entire email pattern
# 2. [A-Za-z] ensures that the prefix starts with a letter
# 3. [A-Za-z0-9_.-]* allows letters, digits, underscore, period, and dash
# 4. @leetcode\.com$ ensures that the domain is exactly '@leetcode.com'
# 5. na=False treats missing email values as invalid
# 6. Return the filtered users
