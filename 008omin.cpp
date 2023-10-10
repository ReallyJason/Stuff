#include <iostream>
using namespace std;

int main(){
    double five, ten, pfive=1, pten=1;
    cout << "How many 50%: ";
    cin >> five;
    cout << "How many 100%: ";
    cin >> ten;
    
    for(int i=0; i<five; i++){
        pfive=pfive*1.5;
    }
    for(int j=0; j<ten; j++){
        pten=pten*2;
    }
    cout << "50% = " << pfive << " times and " << "100% = " << pten << " times.";
    
    return 0;
}
