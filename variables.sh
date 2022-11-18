#!/bin/bash

name=$1
compliment=$2

usr=$(whoami)
date=$(date)
whereami=$(pwd)


echo "Hi $1, ¿Do you have your $2 ready?"
sleep 2
echo "Just a little info about your status:"
sleep 2
echo "Today, $date, you are logged in at $usr"
sleep 2
echo "You are now located in $whereami" 
