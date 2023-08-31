#include <iostream>
#include <vector>
using namespace std;

bool check(vector<string>&vs, string &x){
    for(int i = 0; i < vs.size(); i++){
        if(x == vs[i]) return false;
    }
    return true;
}

int main(){
    string s, x = "";
    getline(cin, s);
    vector <string> vs;
    for(long unsigned i = 0; i < s.length(); i++){
        if(s[i] == ' '){
            if(check(vs, x)) vs.push_back(x);
            x = "";
            continue;
        }
        x+= s[i];
    }
    if(check(vs, x)) vs.push_back(x);
    for(int i = 0; i < vs.size(); i++){
        cout << vs[i] << " ";
    }
    return 0;
}