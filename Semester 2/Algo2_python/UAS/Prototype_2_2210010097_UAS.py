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

def jml_beli_input():
    return int(input("\nMasukkan berapa kotak yang dibeli : "))

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
penggaris = Barang('Penggaris', 28_000, 0.03)
spidol    = Barang('Spidol', 28_000, 0.10)

print(f"""
pilihan barang :
--------------------------
1. {pensil}
2. {pulpen}
3. {penghapus}
4. {penggaris}
5. {spidol}""")

user_opsi = input('\nPilih Barang : ')

# hitungan
match user_opsi:
    case '1' :
        tampilkan_harga(pensil)
        jml_beli = jml_beli_input()
        total_belanja = jml_beli * pensil.harga
        print(f"Total belanja Anda : {total_belanja}")
        
        total_pembayaran = hit_total_pembayaran(pensil)
        
        print(f"Total Pembayaran : {total_pembayaran}")
        
        if jml_beli > 30:
            jml_hadiah_penghapus = jml_beli // 30
            print(f"Anda Juga mendapatkan hadiah {jml_hadiah_penghapus} kotak penghapus")
    case '2' :
        tampilkan_harga(pulpen)
        jml_beli = jml_beli_input()
        total_belanja = jml_beli * pulpen.harga
        print(f"Total belanja Anda : {total_belanja}")
        
        total_pembayaran = hit_total_pembayaran(pulpen)
        
        print(f"Total Pembayaran : {total_pembayaran}")
        
        if jml_beli > 25:
            besaran_diskon = total_belanja * 0.02
            total_pembayaran -= besaran_diskon
            print(f"anda juga mendapat tambahan diskon : {0.02:0.0%}")
            print(f"Jadi total pembayaran anda : {total_pembayaran}")
    case '3' :
        tampilkan_harga(penghapus)
        jml_beli = jml_beli_input()
        total_belanja = jml_beli * penghapus.harga
        print(f"Total belanja Anda : {total_belanja}")
        
        total_pembayaran = hit_total_pembayaran(penghapus)
        
        print(f"Total Pembayaran : {total_pembayaran}")
        
        if jml_beli > 25:
            besaran_diskon = total_belanja * 0.05
            total_pembayaran -= besaran_diskon
            print(f"anda juga mendapat tambahan diskon : {0.05:0.0%}")
            print(f"Jadi total pembayaran anda : {total_pembayaran}")
    case '4' :
        tampilkan_harga(penggaris)
        jml_beli = jml_beli_input()
        total_belanja = jml_beli * penggaris.harga
        print(f"Total belanja Anda : {total_belanja}")
        
        total_pembayaran = hit_total_pembayaran(penggaris)
        
        print(f"Total Pembayaran : {total_pembayaran}")
        
        if jml_beli > 25:
            besaran_diskon = total_belanja * 0.05
            total_pembayaran -= besaran_diskon
            print(f"anda juga mendapat tambahan diskon : {0.05:0.0%}")
            print(f"Jadi total pembayaran anda : {total_pembayaran}")
    case '5' :
        tampilkan_harga(spidol)
        jml_beli = jml_beli_input()
        total_belanja = jml_beli * spidol.harga
        print(f"Total belanja Anda : {total_belanja}")
        
        total_pembayaran = hit_total_pembayaran(spidol)
        
        print(f"Total Pembayaran : {total_pembayaran}")
        
        if jml_beli > 20:
            jml_hadiah = jml_beli // 20
            besaran_diskon = total_belanja * 0.03
            total_pembayaran -= besaran_diskon
            print(f"anda juga mendapat tambahan diskon : {0.03:0.0%}")
            print(f"Serta Mendapat Hadiah {jml_hadiah} Penghapus papan tulis")
            print(f"Jadi total pembayaran anda : {total_pembayaran}")
    case _ :
        print("Tidak Ada Opsi yang Sesuai Dengan Pilihan Anda")