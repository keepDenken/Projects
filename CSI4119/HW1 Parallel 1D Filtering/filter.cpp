#include <stdlib.h>
// #include <cstdio>
#include <iostream>
#include <chrono>
#include <thread>
#include <mutex>

int main(int argc, char** argv)
{

  if(argc < 2) std::cout<<"Usage : ./filter num_items"<<std::endl;
  int N = atoi(argv[1]);
  int NT = 8; //Default value. change it as you like.


  //0. Initialize

  const int FILTER_SIZE=5;
  const float k[FILTER_SIZE] = {0.125, 0.25, 0.25, 0.25, 0.125};
  float *array_in = new float[N];
  float *array_out_serial = new float[N];
  float *array_out_parallel = new float[N];
  {
    std::chrono::duration<float> diff;
    auto start = std::chrono::steady_clock::now();
    for(int i=0;i<N;i++) {
      array_in[i] = i;
    }
    auto end = std::chrono::steady_clock::now();
    diff = end-start;
    std::cout<<"init took "<<diff.count()<<" sec"<<std::endl;
  }

  {
    //1. Serial
    std::chrono::duration<float> diff;
    auto start = std::chrono::steady_clock::now();
    for(int i=0;i<N-4;i++) {
      for(int j=0;j<FILTER_SIZE;j++) {
        array_out_serial[i] += array_in[i+j] * k[j];
      }
    }
    auto end = std::chrono::steady_clock::now();
    diff = end-start;
    std::cout<<"serial 1D filter took "<<diff.count()<<" sec"<<std::endl;
  }

  {
    //2. parallel 1D filter
    std::chrono::duration<float> diff;
    auto start = std::chrono::steady_clock::now();
    /* TODO: put your own parallelized 1D filter here */
    /****************/
    std::thread threads[NT];
    int size = (N-4) / NT;
    int remain = (N-4) % NT;
    auto filter_array = [](float* array_in, const float* k, int base, int top, int FILTER_SIZE, float* array_out_parallel){
        float local = 0;
        for(int i=base; i<top; i++){
          local += array_in[i]*k[0];
          local += array_in[i+1]*k[1];
          local += array_in[i+2]*k[2];
          local += array_in[i+3]*k[3];
          local += array_in[i+4]*k[4];

          array_out_parallel[i] = local;
          local = 0;
        }
    };

    for(int i=0; i<NT; i++){
      threads[i] = std::thread(filter_array, array_in, k, i*size, (i+1)*size, FILTER_SIZE, array_out_parallel);
    }
    for(int i=size*NT; i< N-4; i++){
      for(int j=0; j<FILTER_SIZE; j++)
        array_out_parallel[i] += array_in[i+j]*k[j];
    }
    for(int i=0; i<NT;i++){
      threads[i].join();
    }
    /****************/
    /* TODO: put your own parallelized 1D filter here */
    auto end = std::chrono::steady_clock::now();
    diff = end-start;
    std::cout<<"parallel 1D filter took "<<diff.count()<<" sec"<<std::endl;



    int error_counts=0;
    const float epsilon = 0.01;
    for(int i=0;i<N;i++) {
      float err= std::abs(array_out_serial[i] - array_out_parallel[i]);
      if(err > epsilon) {
        error_counts++;
        if(error_counts < 5) {
          std::cout<<"ERROR at "<<i<<": Serial["<<i<<"] = "<<array_out_serial[i]<<" Parallel["<<i<<"] = "<<array_out_parallel[i]<<std::endl;
          std::cout<<"err: "<<err<<std::endl;
        }
      }
    }


    if(error_counts==0) {
      std::cout<<"PASS"<<std::endl;
    } else {
      std::cout<<"There are "<<error_counts<<" errors"<<std::endl;
    }

  }
  return 0;
}