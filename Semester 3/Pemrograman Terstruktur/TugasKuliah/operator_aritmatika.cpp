#include <iostream>
using namespace std;

int main() {
	float a;
	float b;
	float hasilJumlah;
	float hasilKurang;
	float hasilKali;
	float hasilBagi;
	
	cout << "Masukkan variabel a : ";
	cin >> a;
	cout << "Masukkan variable b : ";
	cin >> b;
	
	hasilJumlah = a + b;
	hasilKurang = a - b;
	hasilKali = a * b;
	hasilBagi = a / b;
	
	cout << "Hasil Jumlah : " << hasilJumlah << endl;
	cout << "Hasil Kurang : " << hasilKurang << endl;
	cout << "Hasil Kali   : "<< hasilKali << endl;
	cout << "Hasil Bagi   : "<< hasilBagi << endl;
}