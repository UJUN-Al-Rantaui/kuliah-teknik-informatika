#include <iostream>

int main() {
	int a = 10;
	int b = 5;
	bool hasil;
	std::cout << "Isi variable a : " << a << std::endl;
	std::cout << "Isi variable b : " << b << std::endl;                              
	
	hasil = a == b;
	std::cout << "Apakah a == b ? " << hasil << std::endl;
	
	
	hasil = a != b;
	std::cout << "Apakah a != b ? " << hasil << std::endl;

	
	hasil = a > b;
	std::cout << "Apakah a > b ? " << hasil << std::endl;
	
	
	hasil = a < b;
	std::cout << "Apakah a < b ? " << hasil << std::endl;
	
	
	hasil = a >= b;
	std::cout << "Apakah a >= b ? " << hasil << std::endl;

	
	hasil = a <= b;
	std::cout << "Apakah a <= b ? " << hasil << std::endl;

}