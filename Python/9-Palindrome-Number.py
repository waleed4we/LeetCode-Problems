# LeetCode Problem #9 : Palindrome Number
# Difficulty: Easy

# Task:
# Given an integer x, return True if x is a palindrome, and False otherwise.

class Solution(object):
    def isPalindrome(self, x):
        myNum = str(x)

        for i in range(len(myNum) // 2):
            if myNum[i] != myNum[len(myNum) - 1 - i]:
                return False

        return True

# Approach:
# 1. First, I converted the integer into a string so that I could easily compare
#    characters from the beginning and the end.
# 2. I iterated only through the first half of the string because each character
#    in the first half can be compared with its corresponding character from the end.
# 3. If any pair of characters is different, the number is not a palindrome.
# 4. If all corresponding characters match, return True.
