#!/bin/bash

echo "Welcome, tarnished!"
sleep 2
echo "Please select your starting class. You can chose between:"

echo "Samuray (1)"
echo "Prisoner (2)"
echo "Prophet (3)"

echo "Type 1, 2 or 3"

read class

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

echo "You have chosen $type. Your hp is $hp and your attack is $attack."

beast=$(( $RANDOM % 2 ))

sleep 1

echo "Welcome to your first fight. Pick a number between 1-2. (1/2)"
read num1

#&& = y
if [[ $beast == $num1 && 47 > 22 ]]; then
    echo "Congrats! You go to the next fight!!"

else
    echo "You lose"
    exit 1

fi

sleep 2

beast2=$(( $RANDOM % 10 ))

echo "FINAL ROUND!! If you are a good reader, you're going to kill this last beast."

sleep 1

echo "Pick a number between 1-10."
read num2

# || = or
if [[ $beast2 == num2 || $num2 == coffee ]]; then
     echo "You win!!"

elif [[ $USER == "hacklovin1" ]]; then
    echo "hacklovin1 always wins!!"

else 
    echo "Game Over"
fi
