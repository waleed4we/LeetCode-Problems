# LeetCode #7, Problem: Reverse Integer
# Difficulty : Medium

# Task : Reverse the digits of a signed 32-bit integer
# Return 0 if the reversed number goes outside the 32-bit integer range
# Handle both positive and negative integers

class Solution(object):
    def reverse(self, x):
        
        reverse_num = 0
        sign_check = -1 if x < 0 else 1
        x = abs(x)

        while x != 0:
            digit = x % 10
            x = x // 10
            reverse_num = reverse_num * 10 + digit

        reverse_num = reverse_num * sign_check

        if reverse_num < -2**31 or reverse_num > 2**31 - 1:
            return 0

        return reverse_num

# Approach:
# 1. Store the sign of x and convert x to its absolute value
# 2. Extract the last digit using the modulo operator
# 3. Remove the last digit using integer division
# 4. Build the reversed number by multiplying the current result by 10 and adding the extracted digit
# 5. Restore the original sign after reversing all digits
# 6. Check whether the result is within the signed 32-bit integer range
# 7. Return 0 if the result exceeds the allowed range
