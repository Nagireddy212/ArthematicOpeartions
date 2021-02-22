#!/bin/bash
declare -A dict
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
