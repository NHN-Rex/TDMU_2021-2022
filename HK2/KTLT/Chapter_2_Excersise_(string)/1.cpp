#include <iostream>
#include <string>
#include <stdlib.h>
using namespace std;

int main(){
    string s, temp;
    int x, sum = 0;
    getline(cin, s);
    for(int i = 0; i < s.size(); i++){
        if(isdigit(s[i])){
            temp += s[i];
            x = i+1;
            while(true){
                if(isdigit(s[x])){
                    temp += s[x];
                }else break;
                x++;
            }
            i = x;
        }
        sum += atoi(temp.c_str());
        temp = "";
    }
    cout << sum;
}