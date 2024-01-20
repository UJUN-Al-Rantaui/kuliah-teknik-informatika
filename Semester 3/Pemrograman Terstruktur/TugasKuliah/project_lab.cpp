#include <iostream>
#include <cmath>
using namespace std;

int main() {
	const string username = "root";
	const string password = "rahasia";
	
	string inputUsername;
	string inputPassword;
	bool loginSukses;
	string menu;
	string ulangi = "y";
	
	cout << "<===== Menu Log In =====>" << endl;
	for (int i=1 ; i<=3 ; i++) {
		cout << "Input Username kakak : ";
		getline(cin, inputUsername);
		cout << "Input Password : ";
		getline(cin, inputPassword);
		
		if(inputUsername == username && inputPassword == password){
			loginSukses = true;
			cout << "\nLogin Sukses 😄👍" << endl;
			break;
		} else {
			loginSukses = false;
			cout << "Login gagal" << endl;
			cout << "Input sekali lagi" << endl << endl;
			cout << "Sisa Kesempatan login : " << 3 - i << endl;
		}
	}
	
	if(loginSukses) {
		while (ulangi == "y" || ulangi == "Y") {
		cout << "\n<======= Menu Utama =======>" << endl;
			cout << "1. Penjumlahan " << endl;
			cout << "2. Luas Lingkaran dan Keliling Lingkaran" << endl;
			cout << "3. Konversi Celcius" << endl;
			cout << "4. Luas & Keliling Persegi Panjang " << endl;
			cout << "5. Luas & Keliling Persegi " << endl;
			cout << "6. Keluar" << endl;
			
			cout << "\nPilih menu : ";
			cin >> menu;
			
			if(menu == "1") {
				int num1, num2, sum;
	
				cout << "\n<( Program Penjumlahan )>" << endl;
			    cout << "Masukkan bilangan pertama: ";
			    cin >> num1;
			
			    cout << "Masukkan bilangan kedua: ";
			    cin >> num2;
			
			    sum = num1 + num2;
			
			    cout << "Hasil penjumlahan: " << sum;
			} else if(menu == "2") {
				float r, a, c;
				
				cout << "\n<( Program Luas Lingkaran dan Keliling Lingkaran )>" << endl;
				cout << "Masukkan jari-jari lingkaran: ";
			    cin >> r;
			
			    a = M_PI * pow(r, 2);
			    c = 2 * M_PI * r;
			
			    cout << "Luas lingkaran: " << a << endl;
			    cout << "Keliling lingkaran: " << c << endl;
			} else if(menu == "3") {
				float celsius, fahrenheit, kelvin;
				
				cout << "\n<(  Program Konversi Celcius )>" << endl;
			    cout << "Masukkan suhu dalam Celsius: ";
			    cin >> celsius;
			
			    fahrenheit = (celsius * 9/5) + 32;
			    kelvin = celsius + 273.15;
			
			    cout << "Suhu dalam Fahrenheit: " << fahrenheit << endl;
    			cout << "Suhu dalam Kelvin: " << kelvin << endl;
			} else if(menu == "4") {
				float l, w, a, p;

				cout << "\n<(  Program Luas & Keliling Persegi Panjang )>" << endl;
			    cout << "Masukkan panjang persegi panjang: ";
			    cin >> l;
			
			    cout << "Masukkan lebar persegi panjang: ";
			    cin >> w;
			
			    a = l * w;
			    p = 2 * (l + w);
			
			    cout << "Luas persegi panjang: " << a << endl;
			    cout << "Keliling persegi panjang: " << p << endl;
			} else if(menu == "5") {
				float s, a, p;

				cout << "\n<(  Program Luas & Keliling Persegi )>" << endl;
			    cout << "Masukkan panjang sisi persegi: ";
			    cin >> s;
			
			    a = s * s;
			    p = 4 * s;
			
			    cout << "Luas persegi: " << a << endl;
			    cout << "Keliling persegi: " << p << endl;	
			}else {
				cout << "Pilihanmu tidak ada yang sesuai dengan menu" << endl;
			}
			
			cout << "\nLanjutkan program [Y/N]? ";
			cin >> ulangi;
		}
		
		cout << "Sampai jumpa lagi" << endl;
		cout << "Terima kasih telah memggunakan program kami 😄🙏" << endl;
		
	}
	
}