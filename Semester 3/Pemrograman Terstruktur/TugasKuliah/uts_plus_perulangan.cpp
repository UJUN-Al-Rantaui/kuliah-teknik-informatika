#include <iostream>
using namespace std;

int main() {
	const int biayaAdmin = 2500;
	string ulangi = "y";
	string noToken, noPelanggan, kodePromo;
	int token, potongan;
	
	while (ulangi == "y" ) {
		cout << "LOKET PEMBAYARAN UNISKA" << endl;
		cout << "<========================>" << endl;
		cout << "Pilihan token listrik" <<endl;
		cout << "1. Rp. 20000" << endl;
		cout << "2. Rp. 50000" << endl;
		cout << "3. Rp. 100000" << endl;
		cout << "4. Rp. 150000" << endl;
		cout << "5. Rp. 200000" << endl;
		cout << "<========================>" << endl;
		cout << "Pilih token listrik [1-5] : ";
		cin >> noToken;
		
		token = noToken=="1" ? 20000: 
					  noToken=="2" ? 50000:
					  noToken=="3" ? 100000:
					  noToken=="4" ? 150000:
					  noToken=="5" ? 200000:  0;
		cout << "Input no pelanggan : "; cin >> noPelanggan;
		cout << "Input kode promo   : "; cin >> kodePromo;
		potongan = kodePromo=="FTIUNISKA" || kodePromo=="FKMUNISKA" ? 1500:
							 kodePromo=="FHUNISKA" ? 1200:
							 kodePromo=="FKIUNISKA" ? 1700:
							 kodePromo=="UNISKA2022" ? 2000:0;
		cout << "\n<========================>" << endl;
		cout << "Nomer Pelanggan\t: " << noPelanggan << endl;
		cout << "Token dibeli\t\t: " << token << endl;
		cout << "Biaya admin\t\t: " << biayaAdmin << endl;
		cout << "Kode Promo\t\t: " << kodePromo << endl;
		cout << "Potongan\t\t: " << potongan << endl;
		cout << "Total pembayara\t: " << token + biayaAdmin - potongan << endl;
		cout << "\nTransaksi Lagi[Y/N] ? "; cin >> ulangi;
	}
}