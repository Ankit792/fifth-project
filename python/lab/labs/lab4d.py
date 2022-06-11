# To arrange the numbers in descending order[do not use direct command]
list = [10, 5, 3, 15, 2]
new = 0
for i in range(0, len(list)):
  for j in range(i + 1, len(list)):
    if (list[i] < list[j]):
      new = list[i]
      list[i] = list[j]
      list[j] = new
  print(list[i], end=" ")
