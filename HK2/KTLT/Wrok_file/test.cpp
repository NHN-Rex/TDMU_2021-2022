#include <iostream>
#include <ctype.h>
using namespace std;
    
int main(){
    FILE *s; char c;
    s = fopen("C:/Users/nghia/OneDrive/Desktop/LearnSpace/TTNT_2021-2022/LearnSpace/HK2/KTLT/LAB_3_(struct)", "w");
    do{
        cout << "nhap ky tu: ";
        cin >> c;
        fputc(c, s);
    } while (c!= '\n');
    fclose(s);

    return 0;
}