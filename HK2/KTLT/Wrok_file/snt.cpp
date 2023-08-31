#include <iostream>
#include <ctype.h>
#include <math.h>
using namespace std;

bool checksnt(int &a){
    for(int i = 0; i <= sqrt(a); i++){
        if(a%i==0) return false;
    }
    return true;
}
    
int main(){
    FILE *d, *g; int c, tong = 0;
    g = fopen("tsnt.txt", "w");
    d = fopen("snt.txt", "r");
    c = fgetc(g);
    while(!feof(d)){
        if(checksnt(c)) {
            tong+=c;
            fputc(c, g);
        }
    }
    fputc(tong, g);
    return 0;
}