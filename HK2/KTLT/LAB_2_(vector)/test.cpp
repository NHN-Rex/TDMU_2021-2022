#include<iostream>
#include<string>
#include<vector>
using namespace std;

int main(){
    string s;
    getline(cin, s);
    vector<string>a;
    a.push_back("\0");
    a.pop_back();
    // if(a[0] == "\0") cout << "empty";
    // // cout << a.size();
    // if(a.capacity()==0) cout << "e";
    // int c = a.empty();
    // int d = a.capacity();
    // cout << c << " " << d;
    cout << a.size();
    cout << a.capacity();
    return 0;
}