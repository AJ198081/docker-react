#!/usr/bin/bash

filename="<$(basename "${0}")>"

echo "...............Starting script ${filename}..............."

# -p will prompt the user for input and wait, -t will timeout if user doesn't respond in 'seconds'
# r - do not allow backslashes to escape any characters
read -r -t 20 -p "First Name: " name
read -r -t 20 -p "Age: " age
read -r -t 20 -p "From: " city

echo "..."

PS3="What type of phone do you have: "
select phone_type in mobile landline;
do
    echo "You chose ${phone_type}"
    break
done

# N is the exact number of characters, and the script will then automatically move on
# n stipulates the maximum number of characters in the input
read -r -N 10 -n 10-t 40 -p "What is your phone? (must be 10 digits): " phone

echo

echo "..."

PS3="Which department you work in? "
select department in finance sales engineering "customer service";
do
  echo "You chose ${department}"
  break
done

echo
# s will try to 'securely' get the input from the user, as in it doesn't display
read -r -s -p "Enter password: " password

# Echo a new line
echo -e "\n"

echo "Hello ${name}, I see you are from ${city}, and by the way good to see you are ${age}"
echo "That ${password} wasn't get secure like you would have expected"

# Let's read the values into a .csv file for future reference

echo "${name},${age},${city},${phone},${phone_type},${department},${password}" >> "${HOME}"/user_details.csv

echo "...............script ${filename} Ends..............."