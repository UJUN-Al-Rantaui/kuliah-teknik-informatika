#include <iostream>

int main() {
    std::string nama_lengkap;
    std::string semester;
    std::string npm;
    double nilai_tugas;
    double nilai_uts;
    double nilai_uas;
    double nilai_presensi;
    std::string kode_prodi;
    std::string prodi;
    double nilai_akhir;
    std::string grade;

    std::cout << "Input Nama Lengkap\t: "; std::getline(std::cin, nama_lengkap);
    std::cout << "Input Semester\t\t: "; std::getline(std::cin, semester);
    std::cout << "Input npm\t\t: "; std::getline(std::cin, npm);
    std::cout << "Input Nilai Tugas\t: "; std::cin >> nilai_tugas;
    std::cout << "Input Nilai UTS\t\t: "; std::cin >> nilai_uts;
    std::cout << "Input Nilai UAS\t\t: "; std::cin >> nilai_uas;
    std::cout << "Input Nilai Presensi\t: "; std::cin >> nilai_presensi;
    kode_prodi = npm.substr(2,4);

    std::cout << kode_prodi << std::endl;

    if(kode_prodi == "1001") {
        prodi = "Teknik Informatika";
    } else if (kode_prodi == "1002") {
        prodi = "Sistem Informasi";
    } else {
        prodi = "Bukan FTI";
    }

    nilai_akhir = (0.3 * nilai_tugas) + (0.25 * nilai_uts) + (0.35 * nilai_uas) + (0.1 * nilai_presensi);

    if ((nilai_akhir >= 80) && (nilai_akhir <= 100)) {
        grade = "A";
    } else if ((nilai_akhir >= 75) && (nilai_akhir <= 79)) {
        grade = "B+";
    } else if ((nilai_akhir >= 70) && (nilai_akhir <= 74)) {
        grade = "B";
    } else if ((nilai_akhir >= 65) && (nilai_akhir <= 69)) {
        grade = "C+";
    } else if ((nilai_akhir >= 60) && (nilai_akhir <= 64)) {
        grade = "C";
    } else if ((nilai_akhir >= 50) && (nilai_akhir <= 59)) {
        grade = "D";
    } else if ((nilai_akhir >= 0) && (nilai_akhir <= 49)) {
        grade = "E";
    } else if ( nilai_akhir < 0) {
        grade = "E-";
    } else if ( nilai_akhir > 100) {
        grade = "AAA+++";
    }

    std::cout << "Nama\t\t: " << nama_lengkap << std::endl;
    std::cout << "Semester\t: " << semester << std::endl;
    std::cout << "NPM\t\t: " << npm << std::endl;
    std::cout << "PRODI\t\t: " << prodi << std::endl;
    std::cout << "Nilai Akhir\t: " << nilai_akhir << std::endl;
    std::cout << "GRADE\t\t: " << grade << std::endl; 

}