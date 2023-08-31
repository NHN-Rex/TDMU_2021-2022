#include <iostream>
#include <vector>
using namespace std;

void nhapmang(vector<int>&varr){
    int n, t; cin >> n;
    for(int i = 0; i < n; i++){
        cin >> t;
        varr.push_back(t);
    }
}
