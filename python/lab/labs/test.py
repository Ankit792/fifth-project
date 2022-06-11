# # Write a program to convert binary numbers into decimal
#
# # num = list(input("binary number is "))
# # # print(num)
# # decimal = 0
# #
# # for i in range(len(num)):
# #     rhs = num.pop()
# #     if rhs == '1':
# #         decimal += pow(2, i)
# # print("decimal number is ", decimal)
#
# Binary = int(input("Enter the binary number: "))
# Decimal = 0
# i = 1
# while Binary != 0:
#     rem = Binary % 10
#     Decimal = Decimal+(rem*i)
#     i = i*2
#     Binary = int(Binary/10)
# print("The Decimal number is:", Decimal)
#
#
# # Write a program to convert decimal numbers into BCD
# # decimal to BCD
# # def decimaltobinary(num):
# #     if (num >= 1):
# #         decimaltobinary(num//2)
# #         print(num % 2, end='')
# # decimaltobinary(15)
#
#
# # # Write a program to plot the graph for below equations y=x^2+2*x+2 using matplotlib, y=-x^2 , y=2x^2, y=(x-1)^2, y=(x-1)^2-4;
# # from matplotlib import pyplot as plt
# # import numpy as np
# #
# # x = np.linspace(-5, 5, 10)
# #
# # y1 = x**2 + 2*x + 2
# # y2 = -x ** 2
# # y3 = 2*(x**2)
# # y4 = (x-1) ** 2
# # y5 = (x-1) ** 2 - 4
# #
# # fig = plt.figure(figsize=(10, 5))
# #
# # plt.subplot(3, 2, 1)
# # plt.plot(x, y1, label='y1 = x**2 + 2*x + 2')
# # plt.legend()
# #
# # plt.subplot(3, 2, 2)
# # plt.plot(x, y2, label='y2 = -x**2')
# # plt.legend()
# #
# # plt.subplot(3, 2, 3)
# # plt.plot(x, y3, label='y3 = 2*(x**2)')
# # plt.legend()
# #
# # plt.subplot(3, 2, 4)
# # plt.plot(x, y4, label='y4 = (x-1) ** 2')
# # plt.legend()
# #
# # plt.subplot(3, 2, 5)
# # plt.plot(x, y5, label='y5 = (x-1) ** 2 - 4')
# # plt.legend()
# #
# # plt.show()

a = "my name is"

