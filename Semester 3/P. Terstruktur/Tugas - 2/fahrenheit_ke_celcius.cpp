#include <iostream>
using namespace std;

int main() {
    float  fahrenheit, celcius, tes;

    cout << "<( Program Konversi Fahrenheit ke Celcius )>" << endl << endl;
    cout << "Input Fahrenheit : ";
    cin >> fahrenheit;
    celcius = 5.0/9.0 * (fahrenheit - 32);
    cout << "Output Celcius   : " << celcius << endl;
    return 0; 
}