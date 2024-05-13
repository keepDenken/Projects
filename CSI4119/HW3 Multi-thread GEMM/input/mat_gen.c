#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>
#include <omp.h>
#define RANDMAX 100;

int main(int argc, char** argv){
    omp_set_num_threads(4);
    int n           = atoi(argv[1]);
    int m           = atoi(argv[2]);
    printf("%d, %d\n", n, m);
    char* in_name   = argv[3];
    char* out_name  = argv[4];
    
    int* matA   = (int*)malloc(sizeof(int)*n*m);
    int* matB   = (int*)malloc(sizeof(int)*n*m);
    int* matC   = (int*)malloc(sizeof(int)*n*n);
    int* matB_t = (int*)malloc(sizeof(int)*n*m);
    int local_sum = 0;

    FILE* file_in   = fopen(in_name, "wb");
    FILE* file_out  = fopen(out_name, "wb");
    printf("start filling\n");
    srand(time(NULL));

    printf("initializing\n");
    for(int i=0; i<n; i++){
        for(int j=0; j<m; j++){
            matA[i*m + j] = rand()%RANDMAX;
            matB[j*n + i] = rand()%RANDMAX;
	    matB_t[i*m+j] = matB[j*n+i];
        }
    }

    printf("calculating\n");
    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            for(int k=0; k<m; k++){
                local_sum += matA[i*m + k] * matB_t[j*m + k];
            }
	    matC[i*n+j] = local_sum;
	    local_sum   = 0;
        }
    }

    printf("start writing\n");
    fprintf(file_in, "%d %d\n", n, m);
    fprintf(file_out, "%d\n", n);
    for(int i=0; i<n; i++){
        for(int j=0;j<m;j++){
            fprintf(file_in, "%d ", matA[i*m+j]);
        }
        fprintf(file_in, "\n");
    }
    for(int i=0; i<m; i++){
        for(int j=0;j<n;j++){
            fprintf(file_in, "%d ", matB[i*n+j]);
        }
        fprintf(file_in, "\n");
    }

        for(int i=0; i<n; i++){
        for(int j=0;j<n;j++){
            fprintf(file_out, "%d ", matC[i*n+j]);
        }
        fprintf(file_out, "\n");
    }

    fclose(file_in);
    fclose(file_out);

}
