# LeetCode #28, Problem: Find the Index of the First Occurrence in a String
# Difficulty: Easy

# Task:
# Find the first occurrence of needle in haystack
# Return the starting index of the first occurrence
# Return -1 if needle is not found

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

# Approach :
# 1. Check every possible starting position of needle in haystack
# 2. Compare each character of needle with the corresponding character in haystack
# 3. Set match to False and stop checking if any character does not match
# 4. Return the current index when all characters match
# 5. Return -1 if needle is not found
