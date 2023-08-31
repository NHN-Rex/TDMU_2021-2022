#include<iostream>
#include<vector>
using namespace std;

void nghichdao(vector<int>&varr){
    vector<int>temp;
    for(int i = varr.size()-1; i >= 0; i--){
        temp.push_back(varr[i]);
    }
    varr = temp;
}

int main(){
    vector <int> varr;
    varr.push_back(1);
    varr.push_back(2);
    varr.push_back(3);
    varr.push_back(4);
    nghichdao(varr);
    for(int i = 0; i < varr.size(); i++)
        cout << varr[i];
    return 0;
}