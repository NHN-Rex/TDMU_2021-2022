#include<bits/stdc++.h>
using namespace std;

void nhap(vector<string> &dssp){
    string a;
    while(cin>>a){
        dssp.push_back(a);
    }
}
bool kt(vector<string> a, string b){
    for(int i=0;i<(int)a.size();i++){
        if(a[i]==b) return false;
    }
    return true;
}
int main(){
    vector<string> d,a;
    nhap(d);
    if(d.empty()) cout<<"empty";
    else for(int i = 0; i<(int)d.size();++i){
            if(kt(a,d[i])){
                a.push_back(d[i]);
                cout<<d[i]<<"\n";
            }
        }
    return 0;
}