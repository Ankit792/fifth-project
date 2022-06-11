#190420111009--WAPP for finding vowels in the text file, convert the character in opposite case and save
            #them in the same file. Also find the number of words and spaces in the same file at the end.


my_file = open("mohit.txt","r")
mohit = (my_file.read())
print(mohit.swapcase())
my_file.close()

print("enter file name:")
filename = str(input())
filehandle = open("mohit.txt","r")
space = 0
a = ' '
for char in filehandle.read():
    if char in a:
        space += 1
filehandle.close()
print(space)

print("enter file name:")
filename = str(input())
filehandle = open("mohit.txt","r")
V = 0
vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
for char in filehandle.read():
    if char in vowels:
        V += 1
filehandle.close()
print(V)
