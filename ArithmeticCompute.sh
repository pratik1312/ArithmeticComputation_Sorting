##!/bin/bash -x
read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c
op1=$(($a+$b*$c))
echo $op1
op2=$(($a*$b+$c))
echo $op2
op3=$(($c+$a/$b))
echo $op3
