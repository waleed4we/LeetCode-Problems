# LeetCode #1 , Problem: Two Sum
# Difficulty: Easy

# Task:
# Given an array of integers nums and an integer target, return the indices
# of the two numbers that add up to target.

class Solution(object):
    def twoSum(self, nums, target):

        for i in range(len(nums)):
            for j in range(i + 1, len(nums)):
                if nums[i] + nums[j] == target:
                    return [i, j]

# Approach:
# 1. Use two nested loops to check every possible pair of elements.
# 2. The first loop selects the first element using index i.
# 3. The second loop starts from i + 1 so that we do not use the same element twice and do not check the same pair again.
# 4. If nums[i] + nums[j] equals the target, return their indices.
