#!/bin/bash

echo "Welcome tarnished. Please select your starting class." 

case $class in
    1)
        type="Samurai"
        hp=10
        attack=20
        ;;
    2)
        type="Prisoner"
        hp=20
        attack=4
        ;;
    3)
        type="Prophet"
        hp=30
        attack=4
        ;;
esac 

read class

echo "You have chosen $class. Your hp is $hp and your attack is $attack."

beast=$(( $RANDOM % 2 ))

echo "Welcome to your first fight. Pick a number between 1-2. (1/2)"
read num1

#&& = y
if [[ $beast == $num1 && 47 > 22 ]]; then
    echo "Congrats! You go to the next fight!!"

else
    echo "You lose"
    exit 1

fi

sleep2

beast2=$(( $RANDOM % 10 ))

echo "FINAL ROUND!! If you are a goof reader, you're going to kill this last beast."

sleep1

echo "Pick a number between 1-10. (1/10)"
read num2

# || = or
if [[ $beast2 == num2 || $num2 == coffee ]]; then
     echo "You win!!"

elif [[ $USER == "hacklovin1"]]; then
    echo "hacklovin1 always wins!!"

else 
    echo "Game Over"
fi