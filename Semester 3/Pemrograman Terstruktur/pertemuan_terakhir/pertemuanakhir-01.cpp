#include <iostream>
using namespace std;
void hello(){
	cout<<"Ini menggunakan function Void"<<endl;
}

void hello(string nama){
	cout<<"Hello "<<nama<<", Ini menggunakan function Void"<<endl;
}

void hello(string nama, int usia){
	cout<<"Hello "<<nama<<", "<<usia<<" Ini menggunakan function Void"<<endl;
}

int main(){
	cout<<"Materi Function"<<endl;
	hello();//memanggil function baris 3
	hello("Budi");//memanggil function baris 7
	hello("Mamat", 23);//memanggil function baris 11
	hello("Izai", 20);//memanggil function baris 11
}


