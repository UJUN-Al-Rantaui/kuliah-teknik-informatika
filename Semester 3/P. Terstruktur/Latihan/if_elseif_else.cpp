#include <iostream>

int main() {
    std::string npm;
    std::string kodeProdi;
    std::string namaProdi;
    std::cout << "Input NPM : ";
    std::cin >> npm;
    kodeProdi = npm.substr(2,4);

    if (kodeProdi == "1001") {
        namaProdi = "Teknik Informatika";
    } else if(kodeProdi == "1002") {
        namaProdi = "Sistem Informasi";
    } else {
        namaProdi = "Bukan FTI";
    }

    std::cout << "Kode Prodi Anda adalah : " << kodeProdi << std::endl;
    std::cout << "Nama Prodi Anda adalah : " << namaProdi << std::endl;

    std::cin;
}