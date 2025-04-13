#!/bin/bash



echo -n "Здравствуйте!Введите  Ваш возраст: "
read age
if [ $age -ge 0 ] && [ $age -lt 12 ]; then
     echo "Ты- ребенок."
elif [ $age -ge 12 ] && [ $age -lt 18 ]; then
     echo "Ты - подросток."
elif [ $age -ge 18 ] && [ $age -lt 60 ]; then
     echo "Вы - взрослый."
else "Вы-песионер!"
echo "Вам" $age
fi
