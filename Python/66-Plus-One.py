# LeetCode #66, Problem: Plus One
# Difficulty: Easy

# Task:
# Increment the large integer represented by the digits array by one
# Return the resulting integer as an array of digits

class Solution(object):
    def plusOne(self, digits):
        my_str = ""

        for i in digits:
            my_str += str(i)

        print(my_str)
        my_int = int(my_str)
        incremented_int = my_int + 1
        incremented_str = str(incremented_int)

        new_list = []

        for i in incremented_str:
            new_int_con = int(i)
            new_list.append(new_int_con)

        return new_list

# Approach:
# 1. Convert each digit into a string and combine them into one string
# 2. Convert the resulting string into an integer
# 3. Add one to the integer
# 4. Convert the incremented integer back into a string
# 5. Convert each character back into an integer and store it in a list
# 6. Return the resulting list of digits

# Time Complexity: O(n)
# Space Complexity: O(n)
