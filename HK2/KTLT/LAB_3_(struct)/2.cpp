#include<iostream>
#include<cstring>
using namespace std;

struct drink{
    int allowable_age;
};

struct menu{
    string name;
    float price;
    int inventory;
    drink age;
};

void nhap(string &s, menu dsma[]){
    for(int i = 0; i < 5; i++){
        getline(cin, dsma[i].name);
        cin >> dsma[i].price;
        cin >> dsma[i].inventory;
        cin.ignore();
    }
    for(int i = 5; i < 10; i++){
        getline(cin, dsma[i].name);
        cin >> dsma[i].price;
        cin >> dsma[i].inventory;
        cin >> dsma[i].age.allowable_age;
        cin.ignore();
    }
    getline(cin, s);
}

bool check(string &s, string name){
    int x = s.size();
    if(name.find(s) == 0 && name[x] == ' ')
        return false;
    return true; 
}

void xuat(string &s, menu dsma[]){
    for(int i = 0; i < 10; i++){
        if(check(s, dsma[i].name)){
            cout << dsma[i].name << endl;
        }
    }
}


int main(){
    string s;
    menu dsma[10];
    nhap(s, dsma);
    xuat(s, dsma);
    return 0;
}