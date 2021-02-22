#!/bin/bash
read -p " Enter the number1" a
read -p "Enter the number2" b
read -p "Enter the number3" c

result1=$(( $a+$b*$c ))
echo $result1
