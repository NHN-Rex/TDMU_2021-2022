#include <iostream>
using namespace std;

void xuat(int a[], int n){
    for(int i = 1; i <= n; i++){
        cout << a[i] << " ";
    }
    cout << "|" << " ";
}

void hoanvi(int x, int n, bool check[], int a[]){
    for(int i = 1; i <= n; i++){
        if(!check[i]){
            a[x] = i;
            check[i] = 1;
            if(x == n){
                xuat(a, n);
            }else hoanvi(x + 1, n, check, a);
            check[i] = 0;
        }
    }
}

int main(){
    int n; cin >> n;
    bool check[5]{0};
    int a[5];
    hoanvi(1, n, check, a);
    return 0;
}