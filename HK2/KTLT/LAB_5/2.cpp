#include <iostream>
using namespace std;

void dichuyen(int n, char a, char b, char c){
    if(n == 1){
        cout << a << "->" << c<<"|";
        return;
    }
    dichuyen(n-1, a, c, b);
    dichuyen(1, a, b, c);
    dichuyen(n-1, b, a, c);
}

int main(){
    int n; cin >> n;
    char a = 'A', b = 'B', c = 'C';
    dichuyen(n, a, b, c);
    return 0;
}