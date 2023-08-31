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

void nhap(string &a, string &b, menu dsma[]){
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
    getline(cin, a);
    getline(cin, b);
}

void xuli(string &a, string &b, menu dsma[]){
    int x, y, count = 0;
    for(int i = 0; i < 10; i++){
        if((dsma[i].name.find(a)==0)&&count==0){
            count++;
            x = i;
        }else if(dsma[i].name.find(b)==0){
            count++;
            y = i;
            break;
        }
    }
    if(((x<=4)&&(y<=4))||((x>4)&&(y>4))){
        menu temp = dsma[x];
        dsma[x] = dsma[y];
        dsma[y] = temp;
    }
}

void xuat(menu dsma[]){
    for(int i = 1; i <= 10; i++){
        cout << i << " " << dsma[i].name << " " << dsma[i].price << endl;
    }
}

int main(){
    string a, b;
    menu dsma[10];
    nhap(a, b, dsma);
    xuli(a, b, dsma);
    xuat(dsma);
    return 0;
}