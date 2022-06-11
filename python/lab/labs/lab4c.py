# To arrange the numbers in ascending order[do not use direct command]
list = [23, 55, 21,1]
new = 0
for i in range(0, len(list)):
  for j in range(i + 1, len(list)):
    if list[i] > list[j]:
      new = list[i]
      list[i] = list[j]
      list[j] = new
  print(list[i], end=" ")
