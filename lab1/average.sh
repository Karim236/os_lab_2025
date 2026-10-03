#!/usr/bin/env bash

if [ "$#" -eq 0 ]; then
    echo "Ошибка: передайте хотя бы одно число"
    exit 1
fi

sum=0

for number in "$@"
do
    ((sum += number))
done

average=$(awk -v sum="$sum" -v count="$#" 'BEGIN {printf "%.2f", sum / count}')

echo "Количество: $#"
echo "Среднее: $average"