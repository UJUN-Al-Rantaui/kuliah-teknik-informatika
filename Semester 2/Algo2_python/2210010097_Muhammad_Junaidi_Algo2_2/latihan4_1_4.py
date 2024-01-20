import os
if os.name == "nt":
    os.system("cls")
else:
    os.system("clear")

print(f"<{' Kalkolator ':=^50}>")
print("-"*52 + "\n")

while(True):
    try:
        a = int(input("Angaka1\t: "))
        break
    except:
        print("Angak tidak sah")

operator = input("Operator: ")

while(True):
    try:
        b = int(input("Angaka2\t: "))
        break
    except:
        print("Angak tidak sah")

match operator:
    case "+" : hasil = a + b
    case "-" : hasil = a - b
    case "*"|"×"|"x"|"X" : hasil = a * b
    case "/"|":" : hasil = a / b
    case "**": hasil = a ** b
    case "//": hasil = a // b
    case _ :
        hasil = 0
        print("operator tidak dikenal")

print(f"\nHasil : {hasil}")



    