#include <iostream>
using namespace std;

int main() {
	float a, b, tambah, kurang, kali, bagi;
	
	cout << "Input variabel a : ";
	cin >> a;
	cout << "Input variable b : ";
	cin >> b;

	tambah = a + b;
	cout << "Output Jumlah : " << tambah << endl;
	kurang = a - b;
	cout << "Output Kurang : " << kurang << endl;
	kali = a * b;
	cout << "Output Kali   : "<< kali << endl;
	bagi = a / b;
	cout << "Output Bagi   : "<< bagi << endl;
}