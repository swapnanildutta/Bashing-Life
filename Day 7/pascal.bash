#!/bin/bash

read -p "Enter the number of rows: " row
echo "The pattern is"


for((i=1; i<=row; i++))
do
  for((j=1; j<=row - i; j++))
  do
    echo -n "  "
  done
  for((j=1; j<=2*i - 1; j++))
  do
    echo -n "* "
  done
  echo
done