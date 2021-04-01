#!/bin/bash
#Generate a file with Random number

INPUT=$1
FILE_NAME="inputFile"

#Check if the fileexists already, remove it
if [ -f $FILE_NAME ]; then
     rm -rf $FILE_NAME
fi

if [ $# -eq 0 ]; then
   for i in `seq 0 9`
   do
     echo $i, $RANDOM >> $FILE_NAME
   done
else
   INPUT=$(expr $INPUT - 1)
   for i in `seq 0 $INPUT`
   do
     echo $i, $RANDOM >> $FILE_NAME
   done
fi

