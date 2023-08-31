#include<iostream>
#include<string.h>
#include<vector>
using namespace std;

void nhap(vector<string>&ar1){
    string s;
    while(cin >> s){
        ar1.push_back(s);
    }
}

int xuli(vector<string>&arr, vector<string>&ar1){//nguyen huu nghia
    string temp;
    bool check = true;
    for(int i = 0; i < (int)ar1.size(); i++){
        temp = ar1[i];
        check = true;
        for(int j = 0; j < (int)ar1.size(); j++){
            if(temp == arr[j]){
                check = false;
                break;
            }
        }
        if(check == true){
            arr.push_back(temp);
        }
    }
    return 0;
}

int xuat(vector <string>&arr){
    if(arr.empty()){
        cout << "empty";
        return 0;
    }
    for(int i = 0; i < (int)arr.size(); i++){
        cout << arr[i] << endl;
    }
    return 0;
}
int main(){
    vector<string>arr;
    vector<string>ar1;
    nhap(ar1);
    xuli(arr, ar1);
    xuat(arr);
    return 0;
}