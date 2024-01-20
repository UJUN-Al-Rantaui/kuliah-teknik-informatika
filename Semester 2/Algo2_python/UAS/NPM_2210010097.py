import os
os.system('cls')

class Barang:
    def __init__(self, nama, harga, diskon) :
        self.nama = nama
        self.harga = harga
        self.diskon = diskon
    
    def __str__(self):
        return self.nama
    
def print_harga(barang:Barang):
    print(f"Harga {barang} per 1 kotak : {barang.harga}")

def hitung_pembayaran(barang:Barang):
    if not(jml_barang > 10):
        pembayaran =  total_belanja
    else :
        besar_diskon = total_belanja * barang.diskon
        pembayaran = total_belanja - besar_diskon
        print(f"Selamat, anda dapat diskon : {barang.diskon}")
        print(f"Potongan diskon Sebesar :  {besar_diskon}")
    return pembayaran

pensil = Barang("Pensil", 45000, 0.05) 
pulpen = Barang("Pulpen", 30000, 0.08) 
penghapus = Barang("Penghapus", 28000, 0.03) 
penggaris = Barang("Penggaris", 20000, 0.03) 
spidol = Barang("Spidol", 20000, 0.1) 

jml_hadiah = 0
pembayaran_akhir = 0

print(f'''
{'TOKO ALAT TULIS':^30s}
{'Pilih Barang yang dibeli':^30s}
=========================================
1. {pensil}
2. {pulpen}
3. {penghapus}
4. {penggaris}
5. {spidol}
------------------------------------------
''')

pilih = input("\nPilih Alat Tulis yang dibeli : ")

if int(pilih) in range(1,6):
    print_harga([pensil, pulpen, penghapus, penggaris, spidol][int(pilih) -1])
    jml_barang = int(input("Masukan jumlah barang dibeli : "))
    print()

#  hitungan angka
match pilih:
    case '1':
        total_belanja = jml_barang * pensil.harga
        pembayaran  = hitung_pembayaran(pensil)
        
        if jml_barang > 30:
            jml_hadiah = jml_barang // 30 
    case '2':
        total_belanja = jml_barang * pulpen.harga
        pembayaran  = hitung_pembayaran(pulpen)
        
        if jml_barang > 25:
            potongan_diskon = total_belanja * 0.02
            pembayaran_akhir = pembayaran - potongan_diskon
    case '3':
        total_belanja = jml_barang * penghapus.harga
        pembayaran  = hitung_pembayaran(penghapus)
        
        if jml_barang > 25:
            potongan_diskon = total_belanja * 0.05
            pembayaran_akhir = pembayaran - potongan_diskon
    case '4':
        total_belanja = jml_barang * penggaris.harga
        pembayaran  = hitung_pembayaran(penggaris)
        
        if jml_barang > 25:
            potongan_diskon = total_belanja * 0.05
            pembayaran_akhir = pembayaran - potongan_diskon
    case '5':
        total_belanja = jml_barang * spidol.harga
        pembayaran  = hitung_pembayaran(spidol)
        
        if jml_barang > 20:
            jml_hadiah = jml_barang // 20
            potongan_diskon = total_belanja * 0.03
            pembayaran_akhir = pembayaran - potongan_diskon
    case _ :
        print("Tidak OPSI yang sesuai dengan pilihan")

# views
if int(pilih) in range(1, 6):
    print(f"\nTotal Belanja\t: {total_belanja}")
    print(f"Pembayaran\t: {pembayaran}\n")
    
    match pilih:
        case '1' if jml_barang > 30 :
            print(f'anda juga mendapatkan Hadiah {jml_hadiah} kotak penghapus' )
        case '2' if jml_barang > 25 :
            print(f"Anda Juga Mendapat tambahan diskon\t: {0.02:0.0%}")
            print(f"Jadi Total Pembayaran Anda\t\t: {pembayaran_akhir}")
        case '3' | '4' if jml_barang > 25:
            print(f"Anda Juga Mendapat tambahan diskon\t: {0.05:0.0%}")
            print(f"Jadi Total Pembayaran Anda\t\t: {pembayaran_akhir}")
        case '5' if jml_barang > 20:
            print(f'anda juga mendapatkan Hadiah {jml_hadiah} kotak penghapus papan tulis' )
            print(f"Anda Juga Mendapat tambahan diskon\t: {0.03:0.0%}")
            print(f"Jadi Total Pembayaran Anda\t\t: {pembayaran_akhir}")