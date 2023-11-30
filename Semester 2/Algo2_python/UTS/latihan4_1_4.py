a = int(input("Angka1 : "))
operator = input("Operator : ")
b = int(input("Angka2 : "))

match operator:
    case "+" : hasil = a + b
    case "-" : hasil = a - b
    case "*"|"×"|"x"|"X" : hasil = a * b
    case "/"|":" : hasil = a / b
    case "**": hasil = a ** b
    case "//": hasil = a // b
    case _ :
        hasil = 0

print("\nHasil : ", hasil)