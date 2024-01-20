print("TOKO ALAT TULIS")
print("pilihan barang")
print("=============>")
print("             1. pensil")
print("             2. pulpen")
print("             3. penghapus")
print("             4. penggaris")
print("             5. spidol")

dipilih = input('\nPilih Barang : ')

jml_hadiah = 0
total_pembayaran_akhir = 0
match dipilih:
    case '1' :
        harga = 45000
        print("Harga pulpen perkotak :", harga)
        jml_beli = int(input("\nMasukkan berapa kotak yang dibeli : "))
        total_belanja = jml_beli * harga
        
        if jml_beli > 10:
            diskon = 0.05
            potongan_harga = total_belanja * diskon
            total_pembayaran = total_belanja - potongan_harga
        else :
            total_pembayaran = total_belanja
        
        if jml_beli > 30:
            jml_hadiah = jml_beli // 30
    case '2' :
        harga = 30000
        print("Harga pensil perkotak :", harga)
        jml_beli = int(input("\nMasukkan berapa kotak yang dibeli : "))
        total_belanja = jml_beli * harga
        
        if jml_beli > 10:
            diskon = 0.08
            potongan_harga = total_belanja * diskon
            total_pembayaran = total_belanja - potongan_harga
        else :
            total_pembayaran = total_belanja
        
        if jml_beli > 25:
            potongan_harga = total_belanja * 0.02
            total_pembayaran_akhir = total_pembayaran - potongan_harga
    case '3' :
        harga = 28_000
        print("Harga penghapus perkotak :", harga)
        jml_beli = int(input("\nMasukkan berapa kotak yang dibeli : "))
        total_belanja = jml_beli * harga
        
        if jml_beli > 10:
            diskon = 0.03
            potongan_harga = total_belanja * diskon
            total_pembayaran = total_belanja - potongan_harga
        else :
            total_pembayaran = total_belanja
        
        if jml_beli > 25:
            potongan_harga = total_belanja * 0.05
            total_pembayaran_akhir = total_pembayaran - potongan_harga
    case '4' :
        harga = 20_000
        print("Harga penggaris perkotak :", harga)
        jml_beli = int(input("\nMasukkan berapa kotak yang dibeli : "))
        total_belanja = jml_beli * harga
        
        if jml_beli > 10:
            diskon = 0.03
            potongan_harga = total_belanja * diskon
            total_pembayaran = total_belanja - potongan_harga
        else :
            total_pembayaran = total_belanja
        
        if jml_beli > 25:
            potongan_harga = total_belanja * 0.05
            total_pembayaran_akhir = total_pembayaran - potongan_harga
    case '5' :
        harga = 40000
        print("Harga spidol perkotak :", harga)
        jml_beli = int(input("\nMasukkan berapa kotak yang dibeli : "))
        total_belanja = jml_beli * harga
        
        if jml_beli > 10:
            diskon = 0.1
            potongan_harga = total_belanja * diskon
            total_pembayaran = total_belanja - potongan_harga
        else :
            total_pembayaran = total_belanja
        
        if jml_beli > 20:
            jml_hadiah = jml_beli // 20
            potongan_harga = total_belanja * 0.03
            total_pembayaran_akhir = total_pembayaran - potongan_harga
    case _ :
        print("Tidak Ada Opsi yang Sesuai Dengan Pilihan Anda")
        

print("Total belanja Anda :",total_belanja)

if jml_beli > 10:
    print("\nselamat, anda dapat diskon :", int(diskon * 100), "%")
    print("Besaran Diskon :",potongan_harga)

print("\nTotal Pembayaran :",total_pembayaran)
print()

if dipilih == '1' and jml_beli > 25:
   print(f"Anda Juga mendapatkan hadiah {total_pembayaran_akhir} kotak penghapus")
elif dipilih == '2' and jml_beli > 30 :
    print("anda juga mendapat tambahan diskon : 2%")
    print(f"Jadi total pembayaran anda : {total_pembayaran_akhir}")
elif dipilih == '3' or dipilih == '4' and jml_beli == 25:
    print("anda juga mendapat tambahan diskon : 5%")
    print(f"Jadi total pembayaran anda : {total_pembayaran_akhir}")
elif dipilih == "5" and  jml_beli> 20:
    print("anda juga mendapat tambahan diskon : 3%")
    print(f"Serta Mendapat Hadiah {jml_hadiah} Penghapus papan tulis")
    print(f"Jadi total pembayaran anda : {total_pembayaran_akhir}")