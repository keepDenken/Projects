#!/bin/bash

for ((i=0;i<=20;i++))
do
  row="$(($RANDOM%1793 +256))"
  col="$(($RANDOM%1793 +256))"
  ./mat_gen $row $col in$i.txt out$i.txt
done
