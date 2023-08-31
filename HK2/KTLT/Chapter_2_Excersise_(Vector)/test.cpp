#include<iostream>
#include<vector>
using namespace std; 

void nhap(vector<int>&arr){
    int t, n; cin>> n;
    for(int i = 0; i < n; i++){
        cin >> t;
        arr.push_back(t);
    }
}

void xuat(vector<int>&arr){
    for(int i = 0; i < arr.size(); i++){
        cout << arr[i];
    }
}

int main(){
    vector<int>arr;
    nhap(arr);
    cout << arr.size();
    return 0;
}