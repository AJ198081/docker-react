#!/usr/bin/bash

PS3="Enter your city's number from the list above (enter '20' to exit): "

select city in Exit Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Bangalore "Delhi" Karachi Sydney Melbourne;
do
  case ${city} in
      Tokyo) country="Japan";;
      Bangalore | Delhi) country="India";;
      London | Manchester) country=England;;
      Moscow) country="Russia";;
      Dubai) country="UAE";;
      Karachi) country=Pakistan;;
      "Los Angeles") country="USA";;
      Sydney | Melbourne | Adelaide | Perth) country="Australia";;
      *) country="You are somewhere on Planet Earth, it's just my database doesn't have it"
  esac

if [ "${city}" == "Exit" ]; then
  echo "Good bye"
  break;
fi

if [ -z "${city}" ]; then
  echo "That is not a valid number, good bye"
  break;
fi

echo "${city} is in ${country}"

done