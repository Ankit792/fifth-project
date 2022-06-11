# Write a python program to create, append and remove lists in python.
# Take list as
# College = [18, "Scet", 'E', 30, 70, 57, 67, 47]

College = [18, "Scet", 'E', 30, 70, 57, 67, 47]

# i) display College[2]
print("College[2] : ", College[2])

# ii) append college "CKPCET"
College.append("CKPCET")
print(College)

# iii) Display all the content of list with proper datatype
for i in College:
    a = type(i)
    print('datatype of {} is {}'.format(i, a))

# iv) perform the command like create ,append, remove, delete, update 1 , update 2 for the given list
college = list(range(1, 8))
print("create : ", college)

college.append(8)
print("append : ", college)

del college[1]
print("delete : ", college)

college.remove(5)
print("remove : ", college)

college[2] = 16
print("update 1 : ", college)

college[0: 3] = 3, 4, 5
print("update 2 : ", college)
