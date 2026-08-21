# LeetCode #58, Problem: Length of Last Word
# Difficulty: Easy

# Task:
# Return the length of the last word in the given string
# Ignore any spaces at the beginning or end of the string

class Solution(object):
    def lengthOfLastWord(self, s):
        my_s = s.strip()
        count_spaces = 0
        characters_count = 0

        for i in range(len(my_s)):
            characters_count += 1
            if my_s[i] == " ":
                count_spaces += 1

        my_str = ""

        for i in range(len(my_s) - 1, -1, -1):
            if my_s[i] == " ":
                break
            my_str += my_s[i]

        return len(my_str)

# Approach:
# 1. Remove leading and trailing spaces using strip()
# 2. Traverse the string from the end
# 3. Keep adding characters until a space is found
# 4. Return the length of the collected characters

# Time Complexity: O(n)
# Space Complexity: O(n)
