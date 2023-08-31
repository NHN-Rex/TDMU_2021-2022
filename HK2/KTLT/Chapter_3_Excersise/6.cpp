#include<iostream>
#include<string>
using namespace std;

struct sv{
    string name;
    long long mssv;
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
    int count = 0;
    for(int i = 0; i < n; i++){
        if(tdm[i].name.size()<10 && 1000000000000<=tdm[i].mssv && tdm[i].mssv <= 9999999999999
        && tdm[i].age > 0 && (tdm[i].sex == 'F' || tdm[i].sex == 'M' || tdm[i].sex == 'U'))
            count++;
    }
    cout << count;
}

int main(){
    int n;
    cin >> n;
    sv tdm[n];
    nhap(n, tdm);
    xuat(n, tdm);
    return 0;
}