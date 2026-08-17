# LeetCode # 28, Problem: Find the Index of the First Occurrence in a String
# Difficulty: Easy

# Task:
# Reverse the digits of a signed 32-bit integer
# Return 0 if the reversed number goes outside the 32-bit integer range
# Handle both positive and negative integers

class Solution(object):
    def strStr(self, haystack, needle):

        for i in range(len(haystack) - len(needle) + 1):
            match = True
            for j in range(len(needle)):

                if haystack[i + j] != needle[j]:
                    match = False
                    break

            if match:
                return i
                
        return -1
