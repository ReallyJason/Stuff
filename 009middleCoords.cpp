#include <iostream>
using namespace std;

int main(){
    int coord1x, coord1z, coord2x, coord2z;
    
    cout << "What are the first coords: ";
    cin >> coord1x >> coord1z;
    cout << "What are the second coords: ";
    cin >> coord2x >> coord2z;
    
    int smallx = min(coord1x, coord2x);
    int smallz = min(coord1z, coord2z);

    int xdif=max(coord1x, coord2x)-smallx;
    int zdif=max(coord1z, coord2z)-smallz;
    int mcoord1x=(xdif/2)+smallx;
    int mcoord2x=(xdif/2)+smallx+1;
    int mcoord1z=(zdif/2)+smallz;
    int mcoord2z=(zdif/2)+smallz+1;

    cout << "The coords in the middle are "<< mcoord1x << " " << mcoord1z << "." << endl;
    if(xdif%2==1 && (zdif==0 || zdif%2==0))cout << "The coords in the middle are "<< mcoord2x << " " << mcoord1z << "." << endl;
    else if(zdif%2==1 && (xdif==0 || xdif%2==0))cout << "The coords in the middle are "<< mcoord1x << " " << mcoord2z << "." << endl;
    else if(xdif%2==1 && zdif%2==1){
        cout << "The coords in the middle are "<< mcoord1x << " " << mcoord2z << "." << endl;
        cout << "The coords in the middle are "<< mcoord2x << " " << mcoord1z << "." << endl;
        cout << "The coords in the middle are "<< mcoord2x << " " << mcoord2z << "." << endl;
    }
    return 0;
}
