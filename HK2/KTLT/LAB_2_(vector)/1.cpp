#include<iostream>
#include<string>
#include<vector>
using namespace std;

void nhap(vector<string>&arr, string &s){
    string x = "";
    getline(cin, s);
    for(int i = 0; i < s.size(); i++){
        if(s[i]==' '){
            arr.push_back(x);
            x = "";
            continue;
        }
        x += s[i];
    }
    arr.push_back(x);

}

// void xuli(string &sx, vector<string>arr,)

// void xuat(vector<string>&arr){
//     for(int i = 0; i < arr.size(); i++){
//         cout <<arr[i]<<endl;
//     }
// }

int main(){
    string s, sx;
    vector <string> arr;
    nhap(arr, s);
    // xuat(arr);
    return 0;
}