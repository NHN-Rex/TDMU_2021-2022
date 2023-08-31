#include<iostream>
#include<string>
#include<vector>
using namespace std;

struct chuho{
    string name;
    int stv;
    float tn;
};

void nhap(chuho quanlihogd[]){
    for(int i = 0; i < 10; i++){
        getline(cin, quanlihogd[i].name);
        cin >> quanlihogd[i].stv;
        cin >> quanlihogd[i].tn;
        cin.ignore();
    }
}

void xuat(chuho quanlihogd[]){
    int min = 0;
    for(int i = 1; i < 10; i++){
        if((quanlihogd[min].tn/quanlihogd[min].stv)
        >(quanlihogd[i].tn/quanlihogd[i].stv)){
            min = i;
        }
    }
    cout << quanlihogd[min].name;
}

int main(){
    chuho quanlihogd[10];
    nhap( quanlihogd);
    xuat( quanlihogd);
    return 0;
}