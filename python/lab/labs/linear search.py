# Searching an element in a list/array in python
# can be simply done using \'in\' operator
# Example:
# if x in arr:
#   print arr.index(x)

# If you want to implement Linear Search in python

# Linearly search x in arr[]
# If x is present then return its location
# else return -1

pos = -1     # to find position -1 bez normal indexing starts from 0
# def search(list, n):
#     i = 0
#     while i< len(list):
#         if list[i] == n:
#             globals()['pos'] = i
#             return True
#         i = i + 1
#     return False

def search(list, n):
    for i in range(len(list)):
        if list[i] == n:
            globals()['pos']=i
            return i

    return False

list = [5, 9, 6, 10, 13]
n = 10

if search(list,n):
    print("Found at ", pos + 1)
else:
    print("Not Found")
