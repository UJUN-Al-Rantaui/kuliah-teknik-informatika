print("pilihan barang :")
print("--------------------------")
print("1. pulpen")
print("2. pensil")
print("3. penghapus")
print("4. penggaris")
print("5. spidol")

user_opsi = input('\nPilih Barang : ')



# hitungan
match user_opsi:
    case '1' :
        print("Harga pulpen perkotak :", 30_000)
        jml_beli = int(input("\nMasukkan berapa kotak yang dibeli : "))
        total_belanja = jml_beli * 30_000
        print(f"Total belanja Anda : {total_belanja}")
        
        if not(jml_beli > 10):
            total_pembayaran = total_belanja
        else :
            besaran_diskon = total_belanja * 0.08
            total_pembayaran = total_belanja - besaran_diskon
            print("selamat, anda dapat diskon : 8%")
            print(f"Besaran Diskon : {besaran_diskon}")
            
            print(f"Total Pembayaran : {total_pembayaran}")
        
        if jml_beli > 30:
            jml_hadiah_penghapus = jml_beli // 30
            print(f"Anda Juga mendapatkan hadiah {jml_hadiah_penghapus} kotak penghapus")
    case '2' :
        print("Harga pensil perkotak :", 40_000)
        jml_beli = int(input("\nMasukkan berapa kotak yang dibeli : "))
        total_belanja = jml_beli * 40_000
        print(f"Total belanja Anda : {total_belanja}")
        
        if not(jml_beli > 10):
            total_pembayaran = total_belanja
        else :
            besaran_diskon = total_belanja * 0.05
            total_pembayaran = total_belanja - besaran_diskon
            print(f"selamat, anda dapat diskon : 5%")
            print(f"Besaran Diskon : {besaran_diskon}")
        
        print(f"Total Pembayaran : {total_pembayaran}")
        
        if jml_beli > 25:
            besaran_diskon = total_belanja * 0.02
            total_pembayaran -= besaran_diskon
            print(f"anda juga mendapat tambahan diskon : 2%")
            print(f"Jadi total pembayaran anda : {total_pembayaran}")
    case '3' :
        print("Harga penghapus perkotak :", 28_000)
        jml_beli = int(input("\nMasukkan berapa kotak yang dibeli : "))
        total_belanja = jml_beli * 28_000
        print(f"Total belanja Anda : {total_belanja}")
        
        if not(jml_beli > 10):
            total_pembayaran = total_belanja
        else :
            besaran_diskon = total_belanja * 0.03
            total_pembayaran = total_belanja - besaran_diskon
            print("selamat, anda dapat diskon : 3%")
            print(f"Besaran Diskon : {besaran_diskon}")
        
        print(f"Total Pembayaran : {total_pembayaran}")
        
        if jml_beli > 25:
            besaran_diskon = total_belanja * 0.05
            total_pembayaran -= besaran_diskon
            print("anda juga mendapat tambahan diskon : 5%")
            print(f"Jadi total pembayaran anda : {total_pembayaran}")
    case '4' :
        print("Harga penggaris perkotak :", 28_000)
        jml_beli = int(input("\nMasukkan berapa kotak yang dibeli : "))
        total_belanja = jml_beli * 28_000
        print(f"Total belanja Anda : {total_belanja}")
        
        if not(jml_beli > 10):
            total_pembayaran = total_belanja
        else :
            besaran_diskon = total_belanja * 0.03
            total_pembayaran = total_belanja - besaran_diskon
            print(f"selamat, anda dapat diskon : 3%")
            print(f"Besaran Diskon : {besaran_diskon}")
        
        print(f"Total Pembayaran : {total_pembayaran}")
        
        if jml_beli > 25:
            besaran_diskon = total_belanja * 0.05
            total_pembayaran -= besaran_diskon
            print("anda juga mendapat tambahan diskon : 5%")
            print(f"Jadi total pembayaran anda : {total_pembayaran}")
    case '5' :
        print("Harga spidol perkotak :", 28_000)
        jml_beli = int(input("\nMasukkan berapa kotak yang dibeli : "))
        total_belanja = jml_beli * 28_000
        print(f"Total belanja Anda : {total_belanja}")
        
        if not(jml_beli > 10):
            total_pembayaran = total_belanja
        else :
            besaran_diskon = total_belanja * 0.1
            total_pembayaran = total_belanja - besaran_diskon
            print(f"selamat, anda dapat diskon : 10%")
            print(f"Besaran Diskon : {besaran_diskon}")
        
        print(f"Total Pembayaran : {total_pembayaran}")
        
        if jml_beli > 20:
            jml_hadiah = jml_beli // 20
            besaran_diskon = total_belanja * 0.03
            total_pembayaran -= besaran_diskon
            print("anda juga mendapat tambahan diskon : 3%")
            print(f"Serta Mendapat Hadiah {jml_hadiah} Penghapus papan tulis")
            print(f"Jadi total pembayaran anda : {total_pembayaran}")
    case _ :
        print("Tidak Ada Opsi yang Sesuai Dengan Pilihan Anda")