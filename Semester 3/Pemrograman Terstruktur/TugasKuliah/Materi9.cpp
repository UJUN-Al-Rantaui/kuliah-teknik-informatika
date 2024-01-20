#include <iostream>
using namespace std;

int main() {
	
	for (int a = 1 ; a<=5 ; a++) {
		for (int j = 1; j<=a ; j++) {
		cout << "* ";
		}
		cout << endl;
	}

	cout << endl << endl;
	
	for (int a = 1 ; a<=5 ; a++) {
		for (int j = a; j<=5 ; j++) {
		cout << "* ";
		}
		cout << endl;
	}
}