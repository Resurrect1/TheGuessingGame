#!/bin/bash
# File: guessinggame.sh

numfiles=$(( ls -1 | wc -l ))

echo "Welcome to the Guessing Game (GG)"
echo "This program let's you guess how many files are in the current folder!"
echo "In you honest opinion... how many files do you think are in this folder?"
echo "NO CHEATING!!! Ps... You can't return untill you have guessed correctly (muhahah)"
echo "Your guess, followed by [ENTER]: "

guess="-1"

function countFilesInDir ()
{
	ls -1 | wc -l
}


while [[ $(countFilesInDir) != $guess ]]
do
	read guess
	if ! [[ "$guess" =~ ^[0-9]+$ ]]
	then
		echo "Invalid input! Please enter a valid NUMBER and try again!"
	elif (( guess > $(countFilesInDir) ))
	then
		echo "The number you've guessed is too high... please try again!:"
	elif (( guess < $(countFilesInDir) ))
	then
		echo "The number you've guessed is too low... please try again!:"
	else
		echo "Correct! You're freed of this program!"
		break
	fi
done
