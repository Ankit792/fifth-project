# Python Program to Swap Two Variables
t = ''
x = input("Enter first number: ")
y = input("Enter second number: ")
t = x
x = y
y = t
print("Value of swapped x is: {}".format(x))
print("Value of Swapped y is: " + y)


# Python program to calculate area of triangle
ba = float(input("Enter base: "))
h = float(input("Enter heaight: "))
area = 0.5 * ba * h
print("Area of triangle is: {}".format(area))


# Python program to find roots of quadratic equation
import math
a = float(input("Enter value of a: "))
b = float(input("Enter value of b: "))
c = float(input("Enter value of c: "))
d = ((b * b) - (4 * a * c))
x1 = (-b + (math.sqrt(d)))/(2*a)
x2 = (-b - (math.sqrt(d)))/(2*a)
print("roots are: " + str(x1) + ", " + str(x2))

# Write a Python program to print the following string in a specific form
print("Twinkle, twinkle, little star,\n  "
      "\tHow I wonder what you are!\n "
      "\t\tUp above the world so high,\n "
      "\t\t\tLike a d2iamond in the sky.")
