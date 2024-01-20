#include <iostream>
using namespace std;

int main() {
	float r, luas, keliling;
	cout << "<( Program Luas dan Keliling Lingkaran )>" << endl << endl;
	cout << "Jari-jari lingkaran : ";
	cin >> r;
	luas = 3.14 * (r * r);
	keliling = 2 * 3.14 * r;
	
	cout << "Luas lingkaran : " << luas << endl;
	cout << "Keliling lingkaran : " << keliling << endl;
}