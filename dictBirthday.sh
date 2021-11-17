#!/bin/bash

n=50

declare -A birth_day

for(( i=1; i<=n; i++ ))
do
	 (( birth_month = RANDOM % 12+1 ))
	 (( birth_year = RANDOM % 92+2 ))

	 birth_day[$birth_month]=$i

done

for month in ${!birth_day[@]}
do
	 echo "The individuals who are having birthday in month $month are: "

	 for i in ${birth_day[$month]}
	 do
		 echo "$i "
	 done
done
