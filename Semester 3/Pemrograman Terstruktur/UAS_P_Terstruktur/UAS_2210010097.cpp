#include <iostream>
#include <iomanip>
#include <map>
using namespace std;

struct user{
    string username;
    string password;
};

struct info_login{
    bool is_login;
    user login_user;
};

struct Input_transaksi{
    string nama_penginap;
    string kode_kamar;
    int lama_menginap;
    string tanggal_menginap;
    string kode_promo;
};

struct Transaksi {
    string nama_penginap;
    string kode_tipe_kamar;
    string nama_tipe_kamar;
    float biaya_permalam;
    float subtotal;
    float persen_pajak = 0.11;
    float pajak;
    float total_setelah_pajak;
    float potongan;
    float total_keseluruhan;
    int lama_menginap;
    string tanggal_menginap;
    string kode_promo;
};

bool login(user user_input);
info_login login_view();
// Transaksi hitung_transaksi(Input_transaksi input_transaksi);
void cetak_transaksi(Input_transaksi input_transaksi);

int main() {
    string menu;
    string lanjutkan;
    Input_transaksi input_transaksi;
    input_transaksi.nama_penginap = "";
    Transaksi transaksi;
    
    while(true){
        info_login info_log_user = login_view();

        cout << info_log_user.login_user.username << endl;

        if(info_log_user.is_login){
                cout << "menu utama : " << endl;
                if(info_log_user.login_user.username == "admin") cout << "1. Input Transaksi" << endl;
                cout << "2. cetak transaksi terakhir" << endl;
                cout << "3. Keluar" << endl;
                cout << "input menu [1-3] : ";
                getline(cin, menu);

                if(menu == "1" && info_log_user.login_user.username == "admin"){
                    cout << "PROGRAM TRANSAKSI PENGINAPAN DI HOTEL FTI UNISKA" << endl;
                    cout << "<<========================================================>>" << endl;
                    cout << "Input Nama penginap    : "; getline(cin, input_transaksi.nama_penginap);
                    cout << "Input Kode Kamar       : "; getline(cin, input_transaksi.kode_kamar);
                    cout << "Input tanggal menginap : "; getline(cin, input_transaksi.tanggal_menginap);
                    cout << "Lama menginap          : "; cin >> input_transaksi.lama_menginap;
                    cout << "Input kode promo       : "; getline(cin, input_transaksi.kode_promo);getline(cin, input_transaksi.kode_promo);
 
                    cetak_transaksi(input_transaksi);
                } else if(menu == "2"){
                    if(input_transaksi.nama_penginap != "") {
                        cetak_transaksi(input_transaksi);
                    } else {
                        cout << "Belum ada data transaksi pembayaran" << endl;
                    }
                } else {
                    cout << "Keluar" << endl;
                    break;
                }

                cout << "Lanjutkan Program [Y/T]? ";
                getline(cin, lanjutkan);
                if(lanjutkan == "T" || lanjutkan == "t" || lanjutkan == "TIDAK" || lanjutkan == "tidak") break;
        }

    }


}

bool login(user user_input){
    user admin;
    admin.username = "admin";
    admin.password = "admin";

    user petugas;
    petugas.username = "petugas";
    petugas.password = "petugas";

    return (user_input.username == admin.username && user_input.password == admin.password)
       || (user_input.username == petugas.username && user_input.password == petugas.password);
}

info_login login_view(){
    info_login info_login_user;
    info_login_user.is_login = false;
    user login_user;

    for(int i=1 ; i<=3 ; i++){
        cout << "Silahkan login untuk masuk ke sistem" << endl;
        cout << "Username input : ";
        getline(cin, login_user.username);
        cout << "password input : ";
        getline(cin, login_user.password);

        if(login(login_user)){
            info_login_user.is_login = true; 
            info_login_user.login_user = login_user; 
        } else {
            cout << "Username dan Password salah. Silahkan Ulangi" << endl;
            cout << "Kesempatan mnegulang : "<< 3 - i << " kali" << endl;
        }
    }
    return info_login_user;
}


// Transaksi hitung_transaksi(Input_transaksi input_transaksi) {
//     Transaksi transaksi;
//     transaksi.nama_penginap = input_transaksi.nama_penginap;
//     transaksi.kode_tipe_kamar = input_transaksi.kode_kamar;
//     transaksi.lama_menginap = input_transaksi.lama_menginap;
//     transaksi.tanggal_menginap = input_transaksi.tanggal_menginap;
//     transaksi.kode_promo = input_transaksi.kode_promo;

//     if(transaksi.kode_tipe_kamar == "ST-BF"){
//         transaksi.nama_tipe_kamar = "Suite With Breakfast";
//         transaksi.biaya_permalam = 950000;
//     } else if(transaksi.kode_tipe_kamar == "ST-NBF"){
//         transaksi.nama_tipe_kamar = "Suite Without Breakfast";
//         transaksi.biaya_permalam = 875000;
//     } else if(transaksi.kode_tipe_kamar == "EX-BF"){
//         transaksi.nama_tipe_kamar = "Executive With Breakfast";
//         transaksi.biaya_permalam = 850000;
//     } else if(transaksi.kode_tipe_kamar == "EX-NBF"){
//         transaksi.nama_tipe_kamar = "Executive Without Breakfast";
//         transaksi.biaya_permalam = 770000;
//     } else if(transaksi.kode_tipe_kamar == "SP-BF"){
//         transaksi.nama_tipe_kamar = "Superior With Breakfast";
//         transaksi.biaya_permalam = 650000;
//     } else if(transaksi.kode_tipe_kamar == "SP-NBF"){
//         transaksi.nama_tipe_kamar = "Superior Without Breakfast";
//         transaksi.biaya_permalam = 575000;
//     } else {
//         transaksi.nama_tipe_kamar = "KODE TIPE KAMAR TIDAK ADA";
//         transaksi.biaya_permalam = 0;
//     }

//     transaksi.subtotal = transaksi.biaya_permalam * transaksi.lama_menginap;
//     transaksi.pajak = transaksi.persen_pajak * transaksi.subtotal;
//     transaksi.total_setelah_pajak = transaksi.subtotal + transaksi.pajak;

//     if(transaksi.kode_promo == "HEMAT01" && transaksi.total_setelah_pajak == 1100000) {
//         transaksi.potongan = 0.10 * transaksi.total_setelah_pajak;
//     } else if(transaksi.kode_promo == "HEMAT02" && transaksi.total_setelah_pajak == 1500000) {
//         transaksi.potongan = 0.15 * transaksi.total_setelah_pajak;
//     } else if(transaksi.kode_promo == "HEMAT03" && transaksi.total_setelah_pajak == 2500000) {
//         transaksi.potongan = 0.20 * transaksi.total_setelah_pajak;
//     }  else {
//         transaksi.potongan = 0;
//     }
//     transaksi.total_keseluruhan = transaksi.total_setelah_pajak - transaksi.potongan;
// }

void cetak_transaksi(Input_transaksi input_transaksi){
    Transaksi transaksi;
    transaksi.nama_penginap = input_transaksi.nama_penginap;
    transaksi.kode_tipe_kamar = input_transaksi.kode_kamar;
    transaksi.lama_menginap = input_transaksi.lama_menginap;
    transaksi.tanggal_menginap = input_transaksi.tanggal_menginap;
    transaksi.kode_promo = input_transaksi.kode_promo;

    if(transaksi.kode_tipe_kamar == "ST-BF"){
        transaksi.nama_tipe_kamar = "Suite With Breakfast";
        transaksi.biaya_permalam = 950000;
    } else if(transaksi.kode_tipe_kamar == "ST-NBF"){
        transaksi.nama_tipe_kamar = "Suite Without Breakfast";
        transaksi.biaya_permalam = 875000;
    } else if(transaksi.kode_tipe_kamar == "EX-BF"){
        transaksi.nama_tipe_kamar = "Executive With Breakfast";
        transaksi.biaya_permalam = 850000;
    } else if(transaksi.kode_tipe_kamar == "EX-NBF"){
        transaksi.nama_tipe_kamar = "Executive Without Breakfast";
        transaksi.biaya_permalam = 770000;
    } else if(transaksi.kode_tipe_kamar == "SP-BF"){
        transaksi.nama_tipe_kamar = "Superior With Breakfast";
        transaksi.biaya_permalam = 650000;
    } else if(transaksi.kode_tipe_kamar == "SP-NBF"){
        transaksi.nama_tipe_kamar = "Superior Without Breakfast";
        transaksi.biaya_permalam = 575000;
    } else {
        transaksi.nama_tipe_kamar = "KODE TIPE KAMAR TIDAK ADA";
        transaksi.biaya_permalam = 0;
    }

    transaksi.subtotal = transaksi.biaya_permalam * transaksi.lama_menginap;
    transaksi.pajak = transaksi.persen_pajak * transaksi.subtotal;
    transaksi.total_setelah_pajak = transaksi.subtotal + transaksi.pajak;

    if(transaksi.kode_promo == "HEMAT01" && transaksi.total_setelah_pajak >= 1100000) {
        transaksi.potongan = 0.10 * transaksi.total_setelah_pajak;
    } else if(transaksi.kode_promo == "HEMAT02" && transaksi.total_setelah_pajak >= 1500000) {
        transaksi.potongan = 0.15 * transaksi.total_setelah_pajak;
    } else if(transaksi.kode_promo == "HEMAT03" && transaksi.total_setelah_pajak >= 2500000) {
        transaksi.potongan = 0.20 * transaksi.total_setelah_pajak;
    }  else {
        transaksi.potongan = 0;
    }
    transaksi.total_keseluruhan = transaksi.total_setelah_pajak - transaksi.potongan;

    cout << "Data transaksi pembayaran penginapan di hotel FTI UNISKA" << endl;
    cout << "=========================================================" << endl;
    cout << "Nama penginapan       : " << transaksi.nama_penginap << endl;
    cout << "Tanggal menginap      : " << transaksi.tanggal_menginap << endl;
    cout << "Lama menginap         : " << transaksi.lama_menginap << endl;
    cout << "Kode tipe kamar       : " << transaksi.kode_tipe_kamar << endl;
    cout << "Nama tipe kamar       : " << transaksi.nama_tipe_kamar << endl;
    cout << "Biaya Permalam        : " << transaksi.biaya_permalam << endl;
    cout << "Subtotal              : " << fixed << setprecision(2) << transaksi.subtotal << endl;
    cout << "Pajak 11%             : " << transaksi.pajak << endl;
    cout << "total setelah pajak   : " << transaksi.total_setelah_pajak << endl;
    cout << "Kode Promo            : " << transaksi.kode_promo << endl;
    cout << "Potongan              : " << transaksi.potongan << endl;
    cout << "Total keseluruhan     : " << transaksi.total_keseluruhan << endl;
}