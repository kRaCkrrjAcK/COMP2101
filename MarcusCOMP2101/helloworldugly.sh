#!/bin/bash
#
#My third script - helloworldugly.sh
#This script displays the string "Hello World!"

#This is a silly way creating the output text by starting with something else
#and stream editing it in a pipeline.
echo -n "helb wold" |sed -e "s/b/o/g" =e "s/l/ll/" |tr "h" "H"|tr "w" "W"|awk '{prin $1 "\x20" $2 "\41"}'
