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
