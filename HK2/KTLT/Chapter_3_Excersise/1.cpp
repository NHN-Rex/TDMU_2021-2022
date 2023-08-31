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
    for(int i = 0; i < 10; i++){
        cout << quanlihogd[i].name<<endl;
    }
}

int main(){
    chuho quanlihogd[10];
    nhap( quanlihogd);
    xuat( quanlihogd);
    return 0;
}