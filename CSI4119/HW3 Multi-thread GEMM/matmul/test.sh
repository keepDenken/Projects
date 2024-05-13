#!/bin/bash

for ((i=0; i<=20; i++))
do
  ./matmul ../input/in$i.txt ../input/out$i.txt
done

./matmul ../input/matrix1024.in ../input/matrix1024.out
./matmul ../input/matrix2048.in ../input/matrix2048.out
./matmul ../input/matrix_corner1.in ../input/matrix_corner1.out
./matmul ../input/matrix_corner2.in ../input/matrix_corner2.out
