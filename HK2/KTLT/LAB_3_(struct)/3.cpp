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

void nhap(int &a, int &b, menu dsma[]){
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
    cin >> a >> b;
}

int xuli(int &a, int &b, menu dsma[]){
    menu temp = dsma[a-1];
    dsma[a-1] = dsma[b-1];
    dsma[b-1] = temp;
    return 0;
}

void xuat(menu dsma[]){
    for(int i = 0; i <= 10; i++){
        cout << i+1 << " " << dsma[i].name << " " << dsma[i].price << endl;
    }
}

int main(){
    int a, b;
    menu dsma[10];
    nhap(a, b, dsma);
    xuli(a, b, dsma);
    xuat(dsma);
    return 0;
}