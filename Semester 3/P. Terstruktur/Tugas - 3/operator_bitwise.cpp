#include <iostream>

int main() {   																									
	int a = 181;
	int b = 108;
	int hasil;
	
	hasil = a & b;
	std::cout << "Hasil dari a & b : " << hasil << std::endl;
	
	
	hasil = a | b;
	std::cout << "Hasil dari a | b : " << hasil << std::endl;
	
	
	hasil = a ^ b;
	std::cout << "Hasil dari a ^ b : " << hasil << std::endl;
	
	
	hasil = ~a;
	std::cout << "Hasil dari ~a : " << hasil << std::endl;
	
	
	hasil = a >> 1;
	std::cout << "Hasil dari a >> 1 : " << hasil << std::endl;
	
	
	hasil = b << 2;
	std::cout << "Hasil dari a << 2 : " << hasil << std::endl;
	
}