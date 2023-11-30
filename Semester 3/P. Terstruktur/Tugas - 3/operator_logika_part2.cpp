#include <iostream>           																

int main() {
	bool hasil;
	
	hasil = (false && true) || (true || false);
	std::cout << "Hasil : " << hasil << std::endl;
	
	hasil = !false && (false || true);
	std::cout << "Hasil : " << hasil << std::endl;
	
	hasil = ((true && true) || (false || true)) & !true;
	std::cout << "Hasil : " << hasil << std::endl;
	
}