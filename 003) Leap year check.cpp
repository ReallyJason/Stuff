#include<iostream>
using namespace std;
int main() {
    int year;
    cout << "Which year would you like to know whether it is a leap year? ";
    cin >> year;
    if(((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) cout << "The year " << year << " is a leap year.";
    else cout << "The year "<< year << " is not a leap year.";
    return 0;
}
