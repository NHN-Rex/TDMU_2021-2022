#include <iostream>
using namespace std;
int main(){
    int n;cin >>n;
    if(n <= 0) return 0;
    long int x[n], y[n];
    x[0] = 1;
    y[0] = 0;
    for(int i = 1; i < n+1; i ++){
        x[i] = x[i-1]+y[i-1];
        y[i] = 3 * x[i-1] + y[i-1];
    }
    cout << x[n] << " " << y[n];
    return 0;
}