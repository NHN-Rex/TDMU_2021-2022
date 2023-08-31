#include<iostream>
#include<string>
using namespace std;

struct drink{
    int allowable_age;
};

struct kh{
    string id;
    string name;
    int age;
    float usd;
};

struct menu{
    string name;
    float price;
    int inventory;
    drink age;
    kh khachhang;
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
    for(int i = 10; i < 15; i++){
        getline(cin, dsma[i].khachhang.id);
        getline(cin, dsma[i].khachhang.name);
        cin >> dsma[i].khachhang.age;
        cin >> dsma[i].khachhang.usd;
        cin.ignore();
    }
}

void xuat(menu dsma[]){
    for(int i = 0; i < 10; i++){
        cout << i+1<<" "<< dsma[i].name << " " << dsma[i].price << endl;
    }
    for(int i = 10; i < 15; i++){
        cout << i-9<<" "<< dsma[i].khachhang.id << " " << dsma[i].khachhang.name << " " << dsma[i].khachhang.age << endl;
    }
}

int main(){
    menu dsma[15];
    nhap(dsma);
    xuat(dsma);
    return 0;
}