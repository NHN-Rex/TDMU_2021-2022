#include <iostream>
#include <vector>
using namespace std;

bool thempt(vector<char>&varr){
    char x; cin >> x;
    if((x>=65 && x <= 90)||(x>=97 && x<=122)){
        varr.push_back(x);
        return 1;
    }
    return 0;
}
