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
    for(int i = 10; i < 15; i++){
        getline(cin, dsma[i].khachhang.id);
        getline(cin, dsma[i].khachhang.name);
        cin >> dsma[i].khachhang.age;
        cin >> dsma[i].khachhang.usd;
        cin.ignore();
    }
    getline(cin, s);
}

int check(menu ten, menu dsma[]){
    int count = 0;
    for(int i = 0; i < 5; i++){
        if(ten.khachhang.usd>=dsma[i].price)
            count++;
    }
    for(int i = 5; i < 10; i++){
        if((ten.khachhang.age>=dsma[i].age.allowable_age)&&(ten.khachhang.usd>=dsma[i].price))
            count++;
    }
    return count;
}

void xuat(string &s, menu dsma[]){
    for(int i = 5; i < 15; i++){
        if(s==dsma[i].khachhang.id){
            cout << check(dsma[i], dsma);
        }
    }

}

int main(){
    string s;
    menu dsma[15];
    nhap(s, dsma);
    xuat(s, dsma);
    return 0;
}