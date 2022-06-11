# factorial of first 8 numbers
def factorial(num):
    factorial = 1
    while num > 0:
        factorial = factorial * num
        num = num - 1
    print("factorial of 8 is = ", end='')
    print(factorial)
factorial(8)