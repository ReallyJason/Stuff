#include <iostream>
using namespace std;

int main(){
    int n;
    cout << "How many Patron coins do you need? ";
    cin >> n;
    for(int i=0;i<n;i++){
        if((2*i)+(i/5)==n)cout << "You will get " << 2*i << " for completing areas and " << i/5 << " for boss stages. " << "Therefore, you should complete " << i << " areas.";
        else if((2*i)+(i/5)==n+1)cout << "You will get " << 2*i << " for completing areas and " << i/5 << " for boss stages. " << "Therefore, you should complete " << i << " areas, but you will get an extra coin.";
    }
    return 0;
}
