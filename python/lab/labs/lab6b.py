# i) To find the maximum & minimum item in a list of items
list = [25, 126, 983, 187, 757, 331, 484, 595, 270]
print('maximum item in list is ', max(list))
print('minimum item in list is ', min(list))


# ii) Implement Bubble sort
def bubbleSort(lis):
    for num in range(len(lis)-1, 0, -1):
        for i in range(num):
            if lis[i] > lis[i+1]:
                temp = lis[i]
                lis[i] = lis[i+1]
                lis[i+1] = temp


lis = [54, 26, 93, 17, 77, 31, 44, 55, 20]
bubbleSort(lis)
print(lis)

# iii) To know how many times an element occurred in the list
li = ["a", "c", "b", "a", "c", "b", "a", "c"]
occur = li.count("a")
print("a : ", occur)
occur = li.count("b")
print("b : ", occur)
occur = li.count("c")
print("c : ", occur)
# name = input("enter")
# if name in a_list:
#     print(str(name), a_list.count(name))


# iv) To create student list in python programming elective (At least 10 students) and search for the particular student
l = ['Abhishek', 'Uday', 'Somnath', 'Vaibhav', 'Mohit', 'Ujas', 'Neeraj', 'Ankit', 'Rishabh', 'Subrat']
name = input("Enter name of particular student : ")
if name in l:
    print('{} is inside the list'.format(name))
else:
    print('{} is not present in the list'.format(name))

