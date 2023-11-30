#include <iostream>
using namespace std;



int main() {
    const int hargaPerpulpen = 10000;
    const int hargaPerlusin = 100000;
    const int lusin = 12;

	int jumlahLusin, jumlahBeli, jumlahSatuanPulpen, totalBayar;
	
	cout << "Jumlah beli : ";
	cin >> jumlahBeli;
	jumlahLusin = jumlahBeli / lusin;
	jumlahSatuanPulpen = jumlahBeli % lusin;
	totalBayar = (hargaPerpulpen * jumlahSatuanPulpen) + (hargaPerlusin * jumlahLusin);
	
	cout << "Total bayar : " << totalBayar << endl;
}