#include <iostream>
using namespace std;

#define hargaPerpulpen 10000
#define hargaPerlusin 100000
#define lusin 12

int main() {
	int jumlahLusin;
	int jumlahBeli;
	int jumlahSatuanPulpen;
	int totalBayar;
	
	cout << "Jumlah beli : ";
	cin >> jumlahBeli;
	jumlahLusin = jumlahBeli / lusin;
	jumlahSatuanPulpen = jumlahBeli % lusin;
	totalBayar = (hargaPerpulpen * jumlahSatuanPulpen) + (hargaPerlusin * jumlahLusin);
	cout << "Total bayar : " << totalBayar << endl;
}