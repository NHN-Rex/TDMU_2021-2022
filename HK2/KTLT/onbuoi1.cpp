// Bai 1:
// #include <iostream>
// #include <math.h>
// using namespace std;

// int main(){
//   int n, sum = 0;
//   cout << "nhap n (n>=0): "; cin >> n;
//   for(int i = 0; i < n; i+=2){
//     sum += i;
//   }
//   cout << sum;
// }

// Bai 2:
// #include <iostream>
// #include <math.h>
// using namespace std;

// int main(){
//   char a;
//   cout << "nhap vao 1 chu cai: "; cin >> a;
//   if(a>=65 && a<=90){
//     a += 32;
//   }else{
//     a -=32;
//   }
//   cout << a;
// }

// Bai 3:
// #include <iostream>
// #include <math.h>
// using namespace std;

// int ktChan(int n){
//   if(n%2 == 0) return 1;
//   else return 0;
// }


// Bai 4: 
// #include <iostream>
// #include <math.h>
// using namespace std;

// void nhap(int a[], int n){
//         for (int i = 0; i < n; i++){
//         cout << "nhap a["<<i<<"]: ";
//         cin >> a[i];
//     }
// }

// int ktSNT(int n){
//     if(n< 2){
//         return 0;
//     }else{
//         for(int i = 2; i <= sqrt(n); i++){
//             if(n % i==0){
//                 return 0;
//             }else{
//                 return 1;
//             }
//         }
//     }
//     return 1;
// }

// void xuatmang(int a[], int n){
//     for ( int i = 0; i < n; i++){
//         cout << a[i] << " ";
//     }
// }

// void tSNT(int a[], int n){
//     int sum = 0;
//     for (int i =0 ; i < n; i++){
//         if(ktSNT(a[i])==1){
//             sum += a[i];
//         }
//     }
//     cout << "\n" << sum;
// }

// int main(){
//     int a[10], n;
//     cout << "nhap so phan tu: "; cin >> n;
//     nhap(a, n);
//     xuatmang(a, n);
//     tSNT(a, n);
//     return 0;
// }

// Bai 5:
// #include <iostream>
// #include <math.h>
// using namespace std;

// int main(){
//     int a[100], n, min = 0, x;
//     cout << "nhap so phan tu: "; cin >> n;
//     for (int i = 0; i < n; i++){
//         cout << "nhap phan tu a[" << i << "]: ";
//         cin >> a[i];
//     }
//     for(int i = 0; i < n; i++){
//         if(a[i]>0){
//             min = a[i];
//             x = i;
//             break;
//         }
//     }
//     for(int i = x; i < n; i++){
//         if(a[i]>0 &&a[i] < min){
//             min = a[i];
//         }
//     }
//     cout << min;
// }

// Bai 6:
// #include <iostream>
// #include <math.h>
// using namespace std;

// int main(){
//     int a[100][100], n;
//     cout << "nhap n (100>=n>0): "; cin >> n;
//     for(int i = 0 ; i < n; i++){
//         for (int j = 0; j< n; j++){
//             cout << "nhap a["<<i<<"]["<<j<<"]: ";
//             cin >> a[i][j];
//         }
//     }
//     int sum = 0;
//     for(int i = 0 ; i < n; i++){
//         sum += a[i][i];
//     }
//     cout << sum;
// }