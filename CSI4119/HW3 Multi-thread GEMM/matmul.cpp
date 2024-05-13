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
  int *matrixB_T  = new int[n*m];
  int local_sum   =0;
  int B           =256;
  int TRANSPOSE   =0;
  int CASE        =0;
  int NT 	  =4;
  

  /*****************Set option*****************/ 
  /*Set Number of Threads NT*/
  if(n*m > 256*256 && n*m < 512*512){
    NT = 6;
    B  = 128;
  }
  else if(n*m < 2*1024*1024){
    NT = 14;
    B  = 1024;
  }
  else{
    NT = 20;
    B  = 1024;
  }
  omp_set_num_threads(NT);

  /*Transpose if multiple of power of 2*/
  if(n%B == 0)
    TRANSPOSE=1;
  /*Whether aligned by sub matrix block*/
  if(n%B !=0 || m%B !=0)
    CASE=1;

  /******************Transpose*****************/
  if(1){
    CASE += 2;
    #pragma omp parallel for schedule(auto) collapse(2)
    for(int i=0; i<m; i++){
      for(int j=0; j<n; j++)
        matrixB_T[j*m+i] = matrixB[i*n+j];
    }
    // switch(CASE){
    //   case 2:
    //     #pragma omp parallel for num_threads(NT_T) schedule(auto) collapse(2)
    //     for(int i=0; i<m; i+=B){
    //       for(int j=0; j<n; j+=B){

    //         for(int ii=0; ii<B;i++){
    //           for(int jj=0; jj<B; jj++)
    //             matrixB_T[(j+jj)*m + (i+ii)] = matrixB_T[(i+ii)*n + (j+jj)];
    //         }

    //       }
    //     }
    //     break;        

    //   case 3:
    //     #pragma omp parallel for num_threads(NT_T) schedule(auto) collapse(2)
    //     for(int i=0; i<(m/B)*B; i+=B){
    //       for(int j=0; j<(n/B)*B; j+=B){

    //         for(int ii=0; ii<B;i++){
    //           for(int jj=0; jj<B; jj++)
    //             matrixB_T[(j+jj)*m + (i+ii)] = matrixB_T[(i+ii)*n + (j+jj)];
    //         }

    //       }
    //     }

    //     #pragma omp parallel for num_threads(NT_T) schedule(auto) collapse(2)
    //     for(int i=(m/B)*B; i<m; i++){
    //       for(int j=0; j<(n/B)*B; j++)
    //         matrixB_T[j*m + i] = matrixB[i*n + j];
    //     }

    //     #pragma omp parallel for num_threads(NT_T) schedule(auto) collapse(2)
    //     for(int i=0; i<m; i++){
    //       for(int j=(n/B)*B; j<n; j++)
    //         matrixB_T[j*m + i] = matrixB[i*n + j];
    //     }
        break;

      default:
        break;
    }

  }

  /*************Matrix Multiplication**********/
  switch(CASE){
    case 0:
      for(int i=0; i<n; i+=B){
        for(int j=0; j<n; j+=B){
          for(int k=0; k<m; k+=B){

            #pragma omp parallel for schedule(auto) firstprivate(local_sum)
            for(int ii=0; ii<B; ii++){
              for(int jj=0; jj<B; jj++){
                for(int kk=0; kk<B; kk++){
                    local_sum += matrixA[(i+ii)*m + (k+kk)] * matrixB[(j+jj) + (k+kk)*n];
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
      for(int i=0; i<(n/B)*B; i+=B){
        for(int j=0; j<(n/B)*B; j+=B){
          for(int k=0; k<(m/B)*B; k+=B){

            #pragma omp parallel for schedule(auto) collapse(2) firstprivate(local_sum)
            for(int ii=0; ii<B; ii++){
              for(int jj=0; jj<B; jj++){
                for(int kk=0; kk<B; kk++){
                    local_sum += matrixA[(i+ii)*m + (k+kk)] * matrixB[(j+jj) + (k+kk)*n];
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
      #pragma omp parallel for schedule(auto) collapse(2) firstprivate(local_sum)
      for(int i=0; i<(n/B)*B; i++){
        for(int j=0; j<(n/B)*B; j++){
          for(int k=(m/B)*B; k<m; k++)
            local_sum += matrixA[i*m+k] * matrixB[j+k*n];
          matrixC[i*n+j] += local_sum;
          local_sum = 0;
        }
      }

      // For NB x r submatrix
      local_sum = 0;
      #pragma omp parallel for schedule(auto) collapse(2) firstprivate(local_sum)
      for(int i=0; i<(n/B)*B; i++){
        for(int j=(n/B)*B; j<n; j++){
          for(int k=0; k<m; k++)
            local_sum += matrixA[i*m+k] * matrixB[j+k*n];
          matrixC[i*n+j] += local_sum;
          local_sum = 0;
        }
      }

      // For r x NB submatrix
      local_sum = 0;
      #pragma omp parallel for schedule(auto) collapse(2) firstprivate(local_sum)
      for(int i=(n/B)*B; i<n; i++){
        for(int j=0; j<(n/B)*B; j++){
          for(int k=0; k<m; k++)
            local_sum += matrixA[i*m+k] * matrixB[j+k*n];
          matrixC[i*n+j] += local_sum;
          local_sum = 0;
        }
      }

      // For r x NB submatrix
      local_sum = 0;
      #pragma omp parallel for schedule(auto) collapse(2) firstprivate(local_sum)
      for(int i=(n/B)*B; i<n; i++){
        for(int j=(n/B)*B; j<n; j++){
          for(int k=0; k<m; k++)
            local_sum += matrixA[i*m+k] * matrixB[j+k*n];
          matrixC[i*n+j] += local_sum;
          local_sum = 0;
        }
      }

      break;

    case 2:
      for(int i=0; i<n; i+=B){
        for(int j=0; j<n; j+=B){
          for(int k=0; k<m; k+=B){

            #pragma omp parallel for schedule(auto) collapse(2) firstprivate(local_sum)
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
      break;

    case 3:
      // For NB x NB submatrix - main
      for(int i=0; i<(n/B)*B; i+=B){
        for(int j=0; j<(n/B)*B; j+=B){
          for(int k=0; k<m; k+=B){

            #pragma omp parallel for schedule(auto) collapse(2) firstprivate(local_sum)
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
      #pragma omp parallel for schedule(auto) collapse(2) firstprivate(local_sum)
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
      #pragma omp parallel for schedule(auto) collapse(2) firstprivate(local_sum)
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
      #pragma omp parallel for schedule(auto) collapse(2) firstprivate(local_sum)
      for(int i=(n/B)*B; i<n; i++){
        for(int j=0; j<(n/B)*B; j++){
          for(int k=0; k<m; k++)
            local_sum += matrixA[i*m+k] * matrixB_T[j*m+k];
          matrixC[i*n+j] += local_sum;
          local_sum = 0;
        }
      }

      // For r x r submatrix
      local_sum = 0;
      #pragma omp parallel for schedule(auto) collapse(2) firstprivate(local_sum)
      for(int i=(n/B)*B; i<n; i++){
        for(int j=(n/B)*B; j<n; j++){
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
