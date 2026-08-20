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
