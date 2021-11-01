#!/bin/sh
read -p "Paste the IsErIk Hex value here:" text
if ! [[ $text =~ ^[0-9A-Fa-f]+$ ]] ; then
        echo "Unable to decode, string is not hex"
   else
        text1=$(echo $text | xxd -r -p | awk '{print $1}')
        echo "string contains hex => $text1"
fi
