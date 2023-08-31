#include <iostream>
#include <string>
#include <vector>
using namespace std;

string split(string str, string delimiter){
    size_t pos = 0;
    string token;
    while ((pos = str.find(delimiter)) != string::npos) {
        token = str.substr(0, pos);
        cout << token << endl;
        str.erase(0, pos + delimiter.length());
    }
    return str;
}   
int main(){
    vector <string> vs;
    vs.push_back("nguyen");
    vs.push_back("nguyen");

    vs.push_back("nguyen");

    cout << vs.length();
    // int count = 0;
    // vector<int> a;
    // string s;
    // getline(cin, s);
    // for(int i = 0; i < s.size(); i++){
    //     if(s[i] == ' '){
    //         a.push_back(count);
    //         count = 0;
    //     }
    //     else{
    //         count++;
    //     }
    // }
    // a.push_back(count);
    // split(s, ' ');
    // int max = a[0], x = 0;
    // for(int i = 0; i < a.size(); i++){
    //     if(a[i]>max){
    //         max = a[i];
    //         x = i;
    //     }
    // }
    // cout << s[x];
    
}