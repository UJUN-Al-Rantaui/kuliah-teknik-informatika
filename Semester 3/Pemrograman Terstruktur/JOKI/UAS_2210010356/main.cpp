#include <iostream>
#include <iomanip>
using namespace std;

int main(){
    string username;
    string password;
    string menu;
    bool login_sukses;
    string nama_penginap;
    string kode_kamar;
    string tanggal_menginap;
    int lama_menginap;
    string kode_promo;
    string nama_kamar;
    float biaya_permalam;
    float subtotal;
    float potongan;
    float total_keseluruhan;
    float total_setelah_pajak;
    float pajak;

    bool lanjutkan = true;
    string ulangi;

    while(lanjutkan){
        cout << "PROGRAM TRANSAKSI PENGINAPAN DI HOTEL FTI UNISKA" << endl;
        cout << "=================================================="<< endl;
        cout << "Silahakan login untuk masuk ke system"<< endl;
        for(int i=1; i<=3 ; i++) {
        cout << "Input username : "; getline(cin, username);
        cout << "Input password : "; getline(cin, password);

            if(username == "admin" && password == "admin" || username == "petugas" && password == "petugas") {
                login_sukses = true;
                break;
            } else{
                login_sukses = false;
                cout << "Username dan Password salah. Silahkan Ulangi!" << endl;
                cout << "Kesempatan mengulang : " << 3-i << "kali" << endl; 
            }
        }

        if(login_sukses){
            if(username == "admin")
                cout << "1. Input Transaksi" << endl;
            cout << "2. cetak transaksi terakhir" << endl;
            cout << "3. Keluar" << endl;
            cout << "input menu [1-3] : ";
            getline(cin, menu);

            if(menu=="1" && username=="admin"){
                cout << "PROGRAM TRANSAKSI PENGINAPAN DI HOTEL FTI UNISKA" << endl;
                cout << "<<========================================================>>" << endl;
                cout << "Input Nama penginap    : "; getline(cin, nama_penginap);
                cout << "Input Kode Kamar       : "; getline(cin, kode_kamar);
                cout << "Input tanggal menginap : "; getline(cin, tanggal_menginap);
                cout << "Lama menginap          : "; cin >> lama_menginap;
                cout << "Input kode promo       : "; getline(cin, kode_promo); getline(cin, kode_promo);

                if(kode_kamar == "ST-BF"){
                    nama_kamar = "Suite With Breakfast";
                    biaya_permalam = 950000;
                } else if(kode_kamar == "ST-NBF"){
                    nama_kamar = "Suite Without Breakfast";
                    biaya_permalam = 875000;
                } else if(kode_kamar == "EX-BF"){
                    nama_kamar = "Executive With Breakfast";
                    biaya_permalam = 850000;
                } else if(kode_kamar == "EX-NBF"){
                    nama_kamar = "Executive Without Breakfast";
                    biaya_permalam = 770000;
                } else if(kode_kamar == "SP-BF"){
                    nama_kamar = "Superior With Breakfast";
                    biaya_permalam = 650000;
                } else if(kode_kamar == "SP-NBF"){
                    nama_kamar = "Superior Without Breakfast";
                    biaya_permalam = 575000;
                } else {
                    nama_kamar = "KODE TIPE KAMAR TIDAK ADA";
                    biaya_permalam = 0;
                }

                subtotal = biaya_permalam * lama_menginap;
                pajak = 0.11 * subtotal;
                total_setelah_pajak = subtotal + pajak;

                if(kode_promo == "HEMAT01" && total_setelah_pajak >= 1100000) {
                    potongan = 0.10 * total_setelah_pajak;
                } else if(kode_promo == "HEMAT02" && total_setelah_pajak >= 1500000) {
                    potongan = 0.15 * total_setelah_pajak;
                } else if(kode_promo == "HEMAT03" && total_setelah_pajak >= 2500000) {
                    potongan = 0.20 * total_setelah_pajak;
                }  else {
                    potongan = 0;
                }
                total_keseluruhan = total_setelah_pajak - potongan;

                cout << "Data transaksi pembayaran penginapan di hotel FTI UNISKA" << endl;
                cout << "=========================================================" << endl;
                cout << "Nama penginapan       : " << nama_penginap << endl;
                cout << "Tanggal menginap      : " << tanggal_menginap << endl;
                cout << "Lama menginap         : " << lama_menginap << endl;
                cout << "Kode tipe kamar       : " << kode_kamar << endl;
                cout << "Nama tipe kamar       : " << nama_kamar << endl;
                cout << "Biaya Permalam        : " << biaya_permalam << endl;
                cout << "Subtotal              : " << fixed << setprecision(2) << subtotal << endl;
                cout << "Pajak 11%             : " << pajak << endl;
                cout << "total setelah pajak   : " << total_setelah_pajak << endl;
                cout << "Kode Promo            : " << kode_promo << endl;
                cout << "Potongan              : " << potongan << endl;
                cout << "Total keseluruhan     : " << total_keseluruhan << endl;
            }else if(menu == "2"){
                cout << "Data transaksi pembayaran penginapan di hotel FTI UNISKA" << endl;
                cout << "=========================================================" << endl;
                cout << "Nama penginapan       : " << nama_penginap << endl;
                cout << "Tanggal menginap      : " << tanggal_menginap << endl;
                cout << "Lama menginap         : " << lama_menginap << endl;
                cout << "Kode tipe kamar       : " << kode_kamar << endl;
                cout << "Nama tipe kamar       : " << nama_kamar << endl;
                cout << "Biaya Permalam        : " << biaya_permalam << endl;
                cout << "Subtotal              : " << fixed << setprecision(2) << subtotal << endl;
                cout << "Pajak 11%             : " << pajak << endl;
                cout << "total setelah pajak   : " << total_setelah_pajak << endl;
                cout << "Kode Promo            : " << kode_promo << endl;
                cout << "Potongan              : " << potongan << endl;
                cout << "Total keseluruhan     : " << total_keseluruhan << endl;
            } else if(menu == "3"){
                cout << "Keluar Program" << endl;
                return 0;
            }

            cout << "Lajutkan Program [Y/T] ? ";
            getline(cin, ulangi);
            if(ulangi=="Y" || ulangi=="y" || ulangi=="YES" || ulangi=="yes") {
                lanjutkan = true;
            } else {
                lanjutkan = false;
            }

        } 
    }
}