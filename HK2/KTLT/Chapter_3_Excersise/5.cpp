#include<iostream>
#include<string>
using namespace std;

struct sv{
    string name;
    int mssv;
    int age;
    char sex;
};

void nhap(int &n, sv tdm[]){
    for(int i = 0; i < n; i++){
        cin.ignore();
        getline(cin, tdm[i].name);
        cin >> tdm[i].mssv;
        cin >> tdm[i].age;
        cin >> tdm[i].sex;
    }
}

void xuat(int &n, sv tdm[]){
    for(int i = 0; i < n; i++){
        cout << i + 1<< " "<< tdm[i].name<< " " << tdm[i].mssv << " " << tdm[i].age << " " << tdm[i].sex << endl;
    }
}

int main(){
    int n;
    cin >> n;
    sv tdm[n];
    nhap(n, tdm);
    xuat(n, tdm);
    return 0;
}