#include <iostream>

int main() {
	
	int a = 5;
	std::cout << "Pre & Post Increment" << std::endl;
	std::cout << "Isi variable a : " << a++ << std::endl;                  
	std::cout << "Isi variable a : " << a << std::endl;
	std::cout << "Isi variable a : " << ++a << std::endl;
	std::cout << "Isi variable a : " << a << std::endl;
	
	std::cout << std::endl;
	
	int b = 5;
	std::cout << "Pre & Post Decrement" << std::endl;
	std::cout << "Isi variable b : " << a-- << std::endl;                  
	std::cout << "Isi variable b : " << a << std::endl;
	std::cout << "Isi variable b : " << --a << std::endl;
	std::cout << "Isi variable b : " << a << std::endl;
	
}