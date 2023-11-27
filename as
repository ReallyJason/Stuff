#include <iostream>
using namespace std;

int main(){
    int i=1,j=1;
    while(i<3710){
        i=i*2;
        cout << "Height: " << j++ << ". The number of nodes: "<< i << endl;
    }
    return 0;
}
