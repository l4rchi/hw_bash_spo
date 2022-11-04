#!/bin/bash
#Из условия понятно что последний человек будет всегда занимать предпоследний номер стула

#Проверка аргументов
if [[ $1 -eq 0 ]]; then
	echo "Error: Enter the num"
	exit 1
fi
int_='^[0-9]+$'
if ! [[ $1 =~ $int_ ]]; then
	echo "Error: Enter integer "
	exit 1
fi
if [[ $1 -lt 2 ]]; then
	echo "Error: The entered number must be greatest then 1:"
	exit 1
fi

echo "Last patient's chair number:"
echo $(($1-1))
 
exit 0
