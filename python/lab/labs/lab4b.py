# To display the Fibonacci sequence up to n-th term
num = int(input("Number of terms = "))
num1 = 0
num2 = 1
count = 0
print("Fibonacci sequence:")
while count < num:
    print(num1, end=' ')
    nth = num1 + num2
    num1 = num2
    num2 = nth
    count += 1
