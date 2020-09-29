##!/bin/bash -x
declare -A Operations
index=0
read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c
op1=$(($a+$b*$c))
echo "Result of first expression : "$op1
op2=$(($a*$b+$c))
echo "Result of second expression : "$op2
op3=$(($c+$a/$b))
echo "Result of third expression : "$op3
op4=$(($a%$b+$c))
echo "Result of fourth expression : "$op4

Operations[op1]=$op1
Operations[op2]=$op2
Operations[op3]=$op3
Operations[op4]=$op4

echo "The results in dictionary : "${Operations[@]}
for b in ${Operations[@]}
do
	array[((index++))]=$b
done
echo "Array elements are: "${array[@]}
for (( i=0; i<${#array[@]}; i++ ))
do
	for (( j=i+1; j<${#array[@]}; j++ ))
	do
		if ((array[$i]<array[$j]))
		then
			temp="${array[i]}"
			array[$i]="${array[j]}"
			array[$j]="$temp"
		fi
	done
done
echo "Array elements in descending order : "${array[@]} 
