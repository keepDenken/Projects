#include "matmul.h"
#include <omp.h>
void matmul_ref(const int* const matrixA, const int* const matrixB,
                int* const matrixC, const int n, const int m) {
  // You can assume matrixC is initialized with zero
  for (int i = 0; i < n; i++)
    for (int j = 0; j < n; j++)
      for (int k = 0; k < m; k++)
        matrixC[i * n + j] += matrixA[i * m + k] * matrixB[k * n + j];
}

void matmul_optimized(const int* const matrixA, const int* const matrixB,
                      int* const matrixC, const int n, const int m) {
  // TODO: Implement your code
  // matrixA  = n x m matrix
  // matrixB  = m x n matrix
  // matrixC  = n x n matrix

  /***************Local Variable***************/
  int* matrixB_T  =new int[n*m];
  int local_sum   =0;
  int CASE        =0;
  int B           =64;
  int S           = (n>>6)*(n>>6)*(m>>6);
  int NT, NT_T, NT_R, NT_r;
  /*****************Set option*****************/ 
    if(S < 4*4*4){
    NT   = 4;
    NT_T = 4;
    NT_R = 4;
    NT_r = 4;
  }
  else if(S < 8*8*8){
    NT    =8;
    NT_T  =4;
    NT_R  =4;
    NT_r  =4;
  }
  else if(S < 16*16*16){
    NT    =24;
    NT_T  =14;
    NT_R  =14;
    NT_r  =14;
  }
  else {
    NT    =36;
    NT_T  =24;
    NT_R  =24;
    NT_r  =24;
  }
  
  if(m%B!=0 || n%B!=0)
    CASE  =1;
  omp_set_num_threads(NT);
  /******************Transpose*****************/
    #pragma omp parallel for num_threads(NT_T) schedule(auto) collapse(2)
    for(int i=0; i<m; i++){
      for(int j=0; j<n; j++)
        matrixB_T[j*m+i] = matrixB[i*n+j];
    }

  /*************Matrix Multiplication**********/
  switch(CASE){

    case 0:
      #pragma omp parallel for schedule(auto) num_threads(NT) collapse(2) firstprivate(local_sum)
      for(int i=0; i<n; i+=B){
        for(int j=0; j<n; j+=B){
          for(int k=0; k<m; k+=B){

            for(int ii=0; ii<B; ii++){
              for(int jj=0; jj<B; jj++){
		for(int kk=0; kk<B; kk++){
                    local_sum += matrixA[(i+ii)*m + (k+kk)] * matrixB_T[(j+jj)*m + (k+kk)];
                }
                matrixC[(i+ii)*n + (j+jj)] += local_sum;
                local_sum=0;
              }
            }

          }
        }
      }
      break;

    case 1:
      // For NB x NB submatrix - main
      #pragma omp parallel for schedule(auto) num_threads(NT) collapse(2) firstprivate(local_sum)
      for(int i=0; i<(n/B)*B; i+=B){
        for(int j=0; j<(n/B)*B; j+=B){
          for(int k=0; k<(m/B)*B; k+=B){

            for(int ii=0; ii<B; ii++){
              for(int jj=0; jj<B; jj++){
                for(int kk=0; kk<B; kk++){
                    local_sum += matrixA[(i+ii)*m + (k+kk)] * matrixB_T[(j+jj)*m+ (k+kk)];
                }
                matrixC[(i+ii)*n + (j+jj)] += local_sum;
                local_sum=0;
              }
            }

          }
        }
      }

      // For NB x NB submatrix - remain
      local_sum = 0;
      #pragma omp parallel for num_threads(NT_r) schedule(static) collapse(2) firstprivate(local_sum)
      for(int i=0; i<(n/B)*B; i++){
        for(int j=0; j<(n/B)*B; j++){
          for(int k=(m/B)*B; k<m; k++)
            local_sum += matrixA[i*m+k] * matrixB_T[j*m+k];
          matrixC[i*n+j] += local_sum;
          local_sum = 0;
        }
      }

      // For NB x r submatrix
      local_sum = 0;
      #pragma omp parallel for num_threads(NT_R) schedule(auto) collapse(2) firstprivate(local_sum)
      for(int i=0; i<(n/B)*B; i++){
        for(int j=(n/B)*B; j<n; j++){
          for(int k=0; k<m; k++)
            local_sum += matrixA[i*m+k] * matrixB_T[j*m+k];
          matrixC[i*n+j] += local_sum;
          local_sum = 0;
        }
      }
      // For r x NB submatrix
      local_sum = 0;
      #pragma omp parallel for num_threads(NT_R) schedule(auto) collapse(2) firstprivate(local_sum)
      for(int i=(n/B)*B; i<n; i++){
        for(int j=0; j<n; j++){
          for(int k=0; k<m; k++)
            local_sum += matrixA[i*m+k] * matrixB_T[j*m+k];
          matrixC[i*n+j] += local_sum;
          local_sum = 0;
        }
      }
      break;

    default:
    
      break;

  }
} 
