nums = [64, 25, 12, 22, 11]

# Traverse through all array elements
for i in range(len(nums)):

    # Find the minimum element in remaining
    # unsorted array
    min_idx = i     # it will hold position

    for j in range(i + 1, len(nums)):   # or range(i,len(A)+1)
        if nums[min_idx] > nums[j]:
            min_idx = j

    # Swap the found minimum element with
    # the first element
    temp = nums[i]
    nums[i] = nums[min_idx]
    nums[min_idx] = temp  # or to swap use
    # nums[i], nums[min_idx] = nums[min_idx], nums[i]

    print(nums)

# # Driver code to test above
# print("Sorted array")
# for i in range(len(nums)):
#     print("%d" % nums[i])
