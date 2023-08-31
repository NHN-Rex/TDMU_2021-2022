#include <iostream>
#include <string>
#include <vector>
using namespace std;

void find(string s, int n){
    int count;
    char x;
    bool check;
    vector<char>temp;
    for(int i = 0; i < s.size(); i++){
        check = true;
        for(int j = 0; j < temp.size(); j++){
            if(temp[j] == s[i])
                check = false;
        }
        if(check){
            x = s[i];
            count = 1;
            for(int j = i+1; j < s.size(); j++){
                if(x == s[j]){
                    count++;
                }
            }
            if(count == n){
                cout << x;
            }
            temp.push_back(s[i]);
        }
    }
}

int main(){
    string s = "122333444455555";
    // getline(cin, s);
    int a; cin >> a;
    find(s, a);
    return 0;
}