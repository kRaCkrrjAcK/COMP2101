#!/bin/bash
#This script expects two variables to be defined before it runs.
#
#    count should contains the number of dice to roll
#    sides should contain the number of sides each die should have
#
#    Modify the script to allow the user to run the script without any command line arguments which will cause it to roll a pair of 6-sided dice.
#    Accept the following command line options:
#        -h or --help should display command line syntax and exit successfully
#        -c N or --count N should set the count of dice to roll to N, N must be a number from 1 to 9
#        -s N or --sides N should set the number of sides per die to N, N must be a number from 4 to 20
#    Display an error message and exit with a failed status if the user puts bad input on the command line.




sum=0
while [ $count -gt 0 ]; do
    roll=$(( $RANDOM % $sides +1 ))
    sum=$(( $sum + $roll ))
    echo "Rolled $roll"
    count=$((count - 1))
done
echo "You rolled a total of $sum"
