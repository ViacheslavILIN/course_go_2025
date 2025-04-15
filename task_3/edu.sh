#!/bin/bash

echo "Введите свое имя:"
read name


IFS=$'\n'


my_array=($(cat $1))
arr_answer=()
# Вывод содержимого массива
for i in "${!my_array[@]}"; do
  
  #echo "Line $i: ${my_array[i]}"
  line=${my_array[i]}
  #echo `awk -F '","' ${my_array[i]}`
  
  question=$(echo "$line" | sed 's/"//g' | cut -d ',' -f1)
  _answer=$(echo "$line" | sed 's/"//g' | cut -d ',' -f2)
 
 echo $question
  
  read answer
  if [ -z $answer ]
  then
  answer='Нет ответа'
fi

echo "$question,$answer,$_answer" >> "$name.txt"

done

  
cat  $name.txt
