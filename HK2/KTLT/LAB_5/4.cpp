#include<iostream>
#include<vector>
using namespace std;

int main(){
    unsigned long int n; cin >> n;
    unsigned long int d = n/2;
    if(d%2==0) d+=1;
    for(unsigned long int i = d; i >= 1; i-=2){
        if(n%i==0){
            cout << i;
            return 0;
        }
    }
}