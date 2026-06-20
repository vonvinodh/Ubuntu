#!/bin/bash
echo "1"
cat data.txt
echo "2"
head -n 3 data.txt
echo "3"
tail -n 2 data.txt
echo "4"
cut -f 2 data.txt
echo "5"
cut -f 2 data.txt | tr '[:lower:]' '[:upper:]'
echo "6"
sort -k 4 data.txt
echo "7"
cut -f 2 data.txt | sort -u
echo "8"
awk -F '\t' '$4>80 {print $2}' data.txt
echo "9"
sed 's/Computer/CSE/g' data.txt