#include <iostream>
#include <string>

using namespace std;

int main(int argc, char** argv){
    int num = atoi(argv[1]);
    float array[num];
    float k = 0.125;
    
    auto init1 = [](float array[], int num, float init_val){
        for(int i=0; i<num; i++){
            array[i] = init_val;
        }
    };

    init1(array, num , 0);

    for(int i=0; i<num; i++)
        cout << i <<"th element of array is "<< array[i] << endl;
    
    return 0;
         
}