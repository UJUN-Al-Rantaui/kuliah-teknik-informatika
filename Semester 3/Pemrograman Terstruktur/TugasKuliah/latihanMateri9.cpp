#include <iostream>
using namespace std;

int main() {
	string menu, ulang;
	long saldo, setorTunai, tarikTunai;
	
	saldo = 0;
	ulang = "y";
	
	while (ulang == "Y" || ulang == "y"){
	
	cout << "ATM UNISKA" << endl;
	cout << "--------------------------" << endl;
	cout << "1. Cek Saldo" << endl;
	cout << "2. Setor Tunai" << endl;
	cout << "3. Tarik Tunai" << endl;
	cout << "4. Keluar " << endl;
	cout << "--------------------------" << endl;
	
	cout << "Pilih Menu [1-4] : ";
	cin >> menu;
	
	if (menu == "1") {
		cout << "Saldo anda : "  << saldo << endl;
	} else if (menu == "2") {
		cout  << "Input setor tunai : ";
		cin >> setorTunai;
		saldo += setorTunai;
		cout << "Saldo anda sekarang : " << saldo << endl;
	} else if (menu == "3") {
	    cout << "Input tarik tunai : ";
		cin >> tarikTunai;
		saldo -= tarikTunai;
		cout << "Saldo anda sekarang : " << saldo << endl;
	} else if (menu == "4") {
		cout << "Terimakasih telah menggunakan ATM Uniska" << endl;
	} else {
		cout << "Menu yang dipilih tidak tersedia" << endl;
	}
		
	cout << "Apakah mau transaksi lagi [y/t?] ";
	cin >> ulang;
	}
	
}