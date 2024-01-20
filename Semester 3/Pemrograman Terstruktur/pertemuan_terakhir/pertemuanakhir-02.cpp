#include <iostream>
using namespace std;

void menu1(); //deklarasi function menu1
void menu2();//deklarasi function menu2
void menu3();//deklarasi function menu3
void menu4();//deklarasi function menu4
float luas, keliling; //variabel global

int main(){
	int menu; //variabel lokal
	cout<<"Program Super Lengkap: "<<endl;
	cout<<"Pilih Menu: "<<endl;
	cout<<"1. Persegi "<<endl;
	cout<<"2. Persegi Panjang "<<endl;
	cout<<"3. Lingkaran "<<endl;
	cout<<"4. Jejar Genjang "<<endl;
	
	cout<<"Input Menu: [1-4]:"; cin>>menu;
	if(menu == 1){
		menu1();
	}else if(menu == 2){
		menu2();
	}else if(menu == 3){
		menu3();
	}else if(menu == 4){
		menu4();
	}
}

void menu1(){ //definisi function menu1
	float sisi; //variabel sisi lokal, hanya bisa diakses di function menu1
	cout<<"Program Persegi"<<endl;
	cout<<"Input SISI : "; cin>>sisi;
	luas = sisi * sisi; //memberikan nilai pada variabel luas
	//variabel luas aksesnya global bisa dipanggil dari function mana saja
	cout<<"Hasil Luas : "<<luas<<endl;
}

void menu2(){
	float alas, tinggi;
	cout<<"Program Persegi Panjang"<<endl;
	cout << "Input Alas : ";
	cin >> alas;
	cout << "Input Tinggi : ";
	cin >> tinggi;
	luas = alas * tinggi;
	keliling = alas + tinggi * 2; 
	cout << "Luas : " << luas << endl;
	cout << "Tinggi : " << tinggi << endl;
}

void menu3(){
	float r, a, c;
	const float PI = 3.14;
	
	cout << "\n<( Program Luas Lingkaran dan Keliling Lingkaran )>" << endl;
	cout << "Masukkan jari-jari lingkaran: ";
	cin >> r;

	a = PI * r * r;
	c = 2 * PI * r;

	cout << "Luas lingkaran: " << a << endl;
	cout << "Keliling lingkaran: " << c << endl;
}

void menu4(){
	float alas, tinggi, sisi_miring;
	cout<<"Program Jajar Genjang"<<endl;
	cout << "Input Alas : ";
	cin >> alas;
	cout << "Input Sisi Miring : ";
	cin >> sisi_miring;
	cout << "Input Tinggi : ";
	cin >> tinggi;
	luas = alas * tinggi;
	keliling = alas + sisi_miring * 2; 
	cout << "Luas : " << luas << endl;
	cout << "Keliling : " << keliling << endl;
}