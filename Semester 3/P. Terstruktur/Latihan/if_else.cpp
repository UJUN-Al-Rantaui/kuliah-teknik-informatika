#include <iostream>

int main() {
    int a;

    std::cout << "Input Semabarang bilangan bulat\t: "; 
    std::cin >> a;

    if ( a % 2 == 0) {
        std::cout << "Bilangan Genap" << std::endl;
    } else {
        std::cout << "Bilangan Ganjil" << std::endl;
    }
}