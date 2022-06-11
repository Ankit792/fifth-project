# To evaluate the power function using while loop.
num = int(input("Enter the number = "))
degree = int(input("Enter the power = "))
result = 1
for n in range(degree):
    result = result * num
print(result)
