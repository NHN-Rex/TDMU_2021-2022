#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

void in(vector <int> &v){
    int n, t; cin >> n;
    for (int i=0 ; i < n ; i++){
        cin >> t;
        v.push_back(t);
    }
}

void out(vector <int> v){
    for (int i=0 ; i < (int)v.size(); i++){
        cout << v[i] << " ";
    }
}

void insert(vector<int>&v, int &x, int &k){
    cin >> x >> k;
    if (k >= 0 && k <= (int)v.size()){
        v.insert(v.begin() + k, x);
    }
}

int main(){
    int x, k;
    vector<int>v ;
    in(v);
    insert(v, x, k);
    out(v);
    return 0;
}