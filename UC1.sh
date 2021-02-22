#!/bin/bash
declare -A dict
declare -a array
read -p " Enter the number1" a
read -p "Enter the number2" b
read -p "Enter the number3" c

result1=$(( $a+$b*$c ))
result2=$(( $a*$b+$c ))
result3=$(( $c+$a/$b ))
result4=(( $a%$b+$c ))

dict=([1]=$result [2]=$result2 [3]=$result3 [4]$result4)

echo "a+b*c : $result1"
echo "a*b+c : $result2"
echo "c+a/b : $result3"
echo "a%b+c : $result4"
echo "Array Elements : ${dict[@]}"

echo "Dictionary value : "${dict[@]}
for (( counter=1; counter<=4; counter++ ))
do
	array[$counter]=${dict[$counter]}
done
echo "Array values : ${array[@]}"

for (( i=1; i<=4; i++ ))
do
	for (( j=$((i+1)); j<=4; j++ ))
	do
		if [ $((array[$i])) -lt $((array[$i])) ]
		then
		max=$((array[$i]))
		array[$i]=$((array[$i]))
		array[$j]=$max
		fi
	done
done

echo "Array in desecnding order : ${array[@]}"

for (( i=1; i<=4; i++ ))
do
	for (( j=$((i+1)); j<=4; j++ ))
	do
		if [ $((array[$i])) -gt $((array[$j])) ]
		then
			min=$((array[$i]))
			array[$i]=$((array[$j]))
			array[$j]=$min
		fi
	done
done
echo "Array in Assending order : ${array[@]}"
