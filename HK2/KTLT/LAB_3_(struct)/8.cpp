#include<iostream>
#include<string>
#include<vector>
using namespace std;

struct sinhvien{
    string hoten;
    string mssv;
    int tuoi;
    char gioitinh;
};

void nhapdssv(vector <struct sinhvien> dssv){
    sinhvien s;
    for(int i = 0; i < 5; i++){
        getline(cin, s.hoten);
        getline(cin, s.mssv);
        cin >> s.tuoi;
        cin >> s.gioitinh;
        cin.ignore();
        dssv.push_back(s);
    }
    cout << dssv[2].hoten << " ";
}

int main(){
    vector <struct sinhvien> dssv;
    nhapdssv(dssv);
    return 0;
}