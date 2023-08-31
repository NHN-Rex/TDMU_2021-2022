#include<iostream>
#include<cstring>
#include<vector>
using namespace std;

struct chuho{
    string name;
    int stv;
    float tn;
};

void nhap(string &s, chuho quanlihogd[]){
    for(int i = 0; i < 10; i++){
        getline(cin, quanlihogd[i].name);
        cin >> quanlihogd[i].stv;
        cin >> quanlihogd[i].tn;
        cin.ignore();
    }
    getline(cin, s);
}

bool check(string s, string name){
    if(name.find(s) < name.size())
        return true;
    return false;
}

void xuat(string &s, chuho quanlihogd[]){
    bool temp = false;
    for(int i = 0; i < 10; i++){
        if(check(s, quanlihogd[i].name)){
            cout << quanlihogd[i].name << " " << quanlihogd[i].stv<< endl;
            temp = true;
        }
    }
    if(!temp)
        cout<< "Not found";
}

int main(){
    string s;
    chuho quanlihogd[10];
    nhap(s, quanlihogd);
    xuat(s, quanlihogd);
    return 0;
}