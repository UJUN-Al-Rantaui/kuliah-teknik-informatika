import os
os.system('cls')

class Barang:
    def __init__(self, nama, harga, diskon_lebih_10):
        self.nama = nama
        self.harga = harga
        self.diskon_lebih_10 = diskon_lebih_10
        
    def __str__(self):
        return self.nama
    
def tampilkan_harga(barang):
        print(f"Harga {barang} perkotak : {barang.harga}")

def hit_total_pembayaran(barang):
    if not(jml_beli > 10):
        total_pembayaran = total_belanja
    else :
        besaran_diskon = total_belanja * barang.diskon_lebih_10
        total_pembayaran = total_belanja - besaran_diskon
        print(f"selamat, anda dapat diskon : {barang.diskon_lebih_10:0.0%}")
        print(f"Besaran Diskon : {besaran_diskon}")
    return total_pembayaran

pensil    = Barang('Pensil', 45_000, 0.05)
pulpen    = Barang('Pulpen', 30_000, 0.08)
penghapus = Barang('Penghapus', 28_000, 0.03)
penggaris = Barang('Penggaris', 20_000, 0.03)
spidol    = Barang('Spidol', 40_000, 0.10)
jml_hadiah = 0
total_pembayaran2 = 0


print(f"""
pilihan barang :
--------------------------
1. {pensil}
2. {pulpen}
3. {penghapus}
4. {penggaris}
5. {spidol}""")

opsi = input('\nPilih Barang : ')

if int(opsi) in range(1, 6):
    tampilkan_harga([pensil, pulpen, penghapus, penggaris, spidol][int(opsi) - 1])
    jml_beli = int(input("\nMasukkan berapa kotak yang dibeli : "))

# hitungan
match opsi:
    case '1' :
        total_belanja = jml_beli * pensil.harga
        total_pembayaran = hit_total_pembayaran(pensil)
        
        if jml_beli > 30:
            jml_hadiah = jml_beli // 30
    case '2' :
        total_belanja = jml_beli * pulpen.harga
        total_pembayaran = hit_total_pembayaran(pulpen)
        
        if jml_beli > 25:
            besaran_diskon = total_belanja * 0.02
            total_pembayaran2 = besaran_diskon - besaran_diskon
    case '3' :
        total_belanja = jml_beli * penghapus.harga
        total_pembayaran = hit_total_pembayaran(penghapus)
        
        if jml_beli > 25:
            besaran_diskon = total_belanja * 0.05
            total_pembayaran2 = besaran_diskon - besaran_diskon
    case '4' :
        total_belanja = jml_beli * penggaris.harga
        total_pembayaran = hit_total_pembayaran(penggaris)
        
        if jml_beli > 25:
            besaran_diskon = total_belanja * 0.05
            total_pembayaran2 = besaran_diskon - besaran_diskon
    case '5' :
        total_belanja = jml_beli * spidol.harga
        total_pembayaran = hit_total_pembayaran(spidol)
        
        if jml_beli > 20:
            jml_hadiah = jml_beli // 20
            besaran_diskon = total_belanja * 0.03
            total_pembayaran2 = besaran_diskon - besaran_diskon
    case _ :
        print("Tidak Ada Opsi yang Sesuai Dengan Pilihan Anda")

# Tampilan
if int(opsi) in range(1, 6):      
    print(f"Total belanja Anda : {total_belanja}")
    print(f"Total Pembayaran : {total_pembayaran}")
    
    match opsi:
        case '1' if jml_beli > 30 :
            print(f"Anda Juga mendapatkan hadiah {jml_hadiah} kotak penghapus")
        case '2' if jml_beli > 25 :
            print(f"anda juga mendapat tambahan diskon : {0.02:0.0%}")
            print(f"Jadi total pembayaran anda : {total_pembayaran2}")
        case '3' | '4' if jml_beli > 25 :
            print(f"anda juga mendapat tambahan diskon : {0.05:0.0%}")
            print(f"Jadi total pembayaran anda : {total_pembayaran2}")
        case '5' if jml_beli > 20 :
            print(f"anda juga mendapat tambahan diskon : {0.03:0.0%}")
            print(f"Serta Mendapat Hadiah {jml_hadiah} Penghapus papan tulis")
            print(f"Jadi total pembayaran anda : {total_pembayaran2}")