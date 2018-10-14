#!/bin/bash
#
#This script creates a Pictures directory and puts some image files into it,
#unless they are there already.
#It makes assumptions that the Pictures directory exists and that it was empty
#before we started.
#
#Assumtion that we have a Pictures directory in our home directory, hardcoded
#******cd ~/Pictures
# Assumes you are on-line, hardcoded ******wget -q http://zomzorp.net/pics.icanhazip
# Sample output:
#     Found 95 regular files using 7.1M of storage in the ~/Pictures directory
#startdir="$(pwd)"
#filenum="$(find  . -type f && wc -l)"
#fileuse="$(du -sh . && awk '(print $1)')"

cd ..
cd ~/Pictures || return
echo -n "Found "
find . -type f|wc -l
echo -n " regular files using  "
du -sh .|awk '{print $1}'
echo " of storage in the ~/Pictures directory"
