#!/usr/bin/bash

# A weather app to find out if it's chaco weather
echo -n "Hello, welcome to Chaco weather app. Enter your zipcode or city (city,state): " 

read location

# Uses zip code to get weather from inxi command line program
inxi -W "$location" | cat > weather.txt

# Varibale cuts only to the tempurture from the inxi weather return
temp=$(cut -c 23-25 weather.txt | head -n 2)

# Returns if it is warm enough to wear chacos or not in the command line
echo 'Chaco Weather:'

if [[ $temp -gt 0 ]]
    then 
        echo 'Yep, wear chacos and be free.
    Current Temp: ' $temp 'C'
    else
        echo 'Nope, wear boots or toes will die. 
    Current Temp: ' $temp 'C'

fi