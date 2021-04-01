#!/bin/bash
#Generate a file with Random number

# Exit on error.
set -o errexit
# Exit on error inside any functions or subshells.
set -o errtrace


INPUT="$1"
FILE_NAME="inputFile"

#Check if the fileexists already, remove it
if [ -f $FILE_NAME ]; then
     rm -rf $FILE_NAME
fi

# Check if the Given argument is empty, Then generate the csv file up to 10, else up to N value
if [ $# -eq 0 ]; then
   for i in $(seq 0 9)
   do
     echo "$i", $RANDOM >> $FILE_NAME
   done
else
   INPUT=$(("$INPUT" - 1))
   for i in $(seq 0 "$INPUT")
   do
     echo "$i", $RANDOM >> $FILE_NAME
   done
fi

