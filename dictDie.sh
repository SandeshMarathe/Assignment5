#!/bin/bash

count=0
count1=0
valid=1

while [ $valid ]
do
	var=$(( RANDOM%7 ))
	count=$(($count+1))
	dice[$count]=$var


	case $var in

		1)
			count1=$(( $count1+1 ));;
		2)
			count2=$(( $count2+1 ));;
		3)
			count3=$(( $count3+1 ));;
		4)
			count4=$(( $count4+1 ));;
		5)
			count5=$(( $count5+1 ));;
		6)
			count6=$(( $count6+1 ));;
		*)
			echo " Smile ";;
	esac


	if [[ $count1 -eq 10 || $count2 -eq 10 || $count3 -eq 10 || $count4 -eq 10 || $count5 -eq 10 || $count6 -eq 10 ]]
	then
		break
	fi
done

echo "1 repeats " $count1 "times"
echo "2 repeats " $count2 "times"
echo "3 repeats " $count3 "times"
echo "4 repeats " $count4 "times"
echo "5 repeats " $count5 "times"
echo "6 repeats " $count6 "times"

arr=( $count1 $count2 $count3 $count4 $count5 $count6 )

echo "Array : " ${arr[@]}

largest=${arr[0]}

smallest=${arr[0]}

for (( i=0; i<=${#arr[*]}; i++ ))
do

	if [[ ${arr[i]} -gt $largest ]]
	then

		largest=${arr[$i]}
	fi

	for (( j=0; j<${#arr[*]}; j++ ))
	do
		if [[ ${arr[j]} -lt $smallest ]]
		then

			smallest=${arr[$j]}
		fi
	done
done

echo " Largest : " $largest

echo " Smallest : " $smallest
