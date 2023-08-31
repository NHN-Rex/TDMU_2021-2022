#include <iostream>
#include <vector>
using namespace std;

bool comb(vector<int> &arr1, vector<int> &arr2, int &k){
    if(k>=0 && k <= (int)arr1.size()-1){
        for(int i = (int)arr2.size()-1; i >= 0; i--){
            arr1.insert(arr1.begin()+k, arr2[i]);
        }
        return 1;
    }
    return 0;
}