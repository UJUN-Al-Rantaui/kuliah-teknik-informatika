#include <iostream>

int main() {
	
	bool a = true;
	bool b = false;
	bool hasil;
	std::cout << "Nilai dari a : " << a << std::endl;                               
	std::cout << "Nilai dari b : " << b << std::endl;
	
	hasil = a && a;
	std::cout << "Hasil dari a && a : " << hasil << std::endl;
	
	
	hasil = a && b;
	std::cout << "Hasil dari a && b : " << hasil << std::endl;
	
	
	hasil = a || b;
	std::cout << "Hasil dari a || b : " << hasil << std::endl;
	
	
	hasil = b || b;
	std::cout << "Hasil dari b || b : " << hasil << std::endl;
	
	
	hasil = !a;
	std::cout << "Hasil dari !a : " << hasil << std::endl;
	
	
	hasil = !b;
	std::cout << "Hasil dari !b : " << hasil << std::endl;
	
}