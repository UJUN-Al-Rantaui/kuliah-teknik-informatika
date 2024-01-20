#include <iostream>
#define PHI 3.14
using namespace std;

int main() {
	int r;
	float luas;
	float keliling;
	
	cout << "Jari-jari lingkaran : ";
	cin >> r;
	luas = PHI * r * r;
	keliling = 2 * PHI * r;
	
	cout << "Luas lingkaran : " << luas << endl;
	cout << "Keliling lingkaran : " << keliling << endl;
}