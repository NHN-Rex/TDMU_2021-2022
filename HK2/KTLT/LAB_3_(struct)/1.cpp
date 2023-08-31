#include<iostream>
#include<string>
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

void nhap(menu dsma[]){
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
}

void xuat(menu dsma[]){
    for(int i = 0; i < 10; i++){
        cout << dsma[i].name << endl;
    }
}

int main(){
    menu dsma[10];
    nhap(dsma);
    xuat(dsma);
    return 0;
}