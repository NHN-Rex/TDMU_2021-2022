#include<iostream>
#include<string>
#include<math.h>
using namespace std;

struct vitridialy{
    string ten;
    int kinhdo, vido;
};

void nhap(int &n, vitridialy diadiem[]){
    for(int i = 0; i < n; i++){
        cin.ignore();
        getline(cin, diadiem[i].ten);
        cin >> diadiem[i].kinhdo;
        cin >> diadiem[i].vido;
    }
}

void xuat(int &n, vitridialy diadiem[]){
    int min = 0;
    for(int i = 1; i < n; i++){
        if(abs(diadiem[min].vido)>abs(diadiem[i].vido)) min = i;
    }
    cout << diadiem[min].ten;
}

int main(){
    int n;
    cin >> n;
    vitridialy diadiem[n];
    nhap(n, diadiem);
    xuat(n, diadiem);
    return 0;
}