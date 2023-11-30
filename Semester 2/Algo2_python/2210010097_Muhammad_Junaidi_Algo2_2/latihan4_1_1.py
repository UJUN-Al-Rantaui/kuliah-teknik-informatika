import os
if os.name == "nt":
    os.system("cls")
else:
    os.system("clear")

print(f"<{' Program memeriksa hari dalam bulan Maret 2012 ':=^60}>")
print("-"*62 + "\n")
tgl = int(input("Masukkan tanggal\t: "))

match tgl:
    case 5|12|19|26 : print("Hari Senin")
    case 6|13|20|27 : print("Hari Selasa")
    case 7|14|21|28 : print("Hari Rabu")
    case 1|8|15|22|29 : print("Hari Kamis")
    case 2|9|16|23|20 : print("Hari Jumat")
    case 3|10|17|24|31 : print("Hari Sabtu")
    case 4|11|18|25 : print("Hari Minggu")
    case _: print("Maaf tidak ada tanggal tersebut")

