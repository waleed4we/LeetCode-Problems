# LeetCode #9 , Problem: Palindrome Number
# Difficulty: Easy

# Task:
# Given an integer x, return True if x is a palindrome, and False otherwise.

class Solution(object):
    def isPalindrome(self, x):
        if x < 0:
            return False

        original = x
        reverse = 0

        while x != 0:
            digit = x % 10
            reverse = reverse * 10 + digit
            x = x // 10

        return original == reverse

# Approach:
# 1. First, check if x is negative. A negative number cannot be a palindrome so return False immediately.
# 2. Store the original value of x because x will be changed while reversing its digits.
# 3. Extract the last digit using x % 10 and build the reversed number using reverse = reverse * 10 + digit.
# 4. Remove the last digit from x using integer division x // 10.
# 5. After reversing all digits, compare the original number with the reversed number. If both are equal, the number is a palindrome.
