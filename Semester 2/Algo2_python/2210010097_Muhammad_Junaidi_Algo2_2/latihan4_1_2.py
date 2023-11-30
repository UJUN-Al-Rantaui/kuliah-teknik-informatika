import os
if os.name == "nt":
    os.system("cls")
else:
    os.system("clear")

print(f"<{' Program Jual Disc ':=^60}>")
print("-"*62 + "\n")
beli = int(input("Total pembelian\t: "))

match beli:
    case beli if 0 <= beli <= 1000 : disc = 100
    case beli if 1001 <= beli <= 10000 : disc = 500
    case beli if 10001 <= beli <= 30000 : disc = 2000
    case _:
        disc = 0
        print("Persediaan tidak mencukupi")


print("\nJumlah Pembelian\t: Rp.", beli)
print("discount\t\t: Rp.", disc, "\n")
print("Jumlah yang dibayar : Rp.", beli - disc if beli - disc >= 0 else 0)
