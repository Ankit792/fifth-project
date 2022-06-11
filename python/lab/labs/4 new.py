import numpy as np

a = np.array([[3, 6], [5, -10]])
b = np.array([[9, -18], [11, 22]])
print("matrix a = ", a)
print("matrix b = ", b, "\n\n")
c = a + b
d = a - b
e = a.dot(b)
f = a.transpose()
g = a / b
h = np.array([[0, 0], [0, 0]])
for i in range(len(a)):
    for j in range(len(b)):
        h[i][j] = a[i][j] * b[i][j]

print("addition = ", c, "\n")
print("subtraction = ", d, "\n")
print("multiplication = ", e, "\n")
print("transpose = ", f, "\n")
print("divide = ", g, "\n")
print("element wise multiplication = ", h, "\n")
print("delta of matrix a = ", np.linalg.det(a), "\n")
print("delta of matrix b = ", np.linalg.det(b), "\n")
print("inversion of matrix a = ", np.linalg.inv(a), "\n")
print("inversion of matrix b = ", np.linalg.inv(b))
