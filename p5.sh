#!/bin/bash
echo "1"
cat -n data1.txt
echo "2"
grep 'Computer' <data1.txt
echo "3"
grep 'Computer' <data1.txt | cut -d ',' -f2,3 data1.txt
echo "4"
grep 'Computer' <data1.txt | cut -d ',' -f2,3 data1.txt |tr '[:lower:]' '[:upper:]'
echo "5"
grep 'Computer' <data1.txt | cut -d ',' -f2,3 data1.txt |tr '[:lower:]' '[:upper:]' | tee filter.txt
echo "6"
sort  filter.txt |uniq -c 
echo "7"
sort  filter.txt |uniq -c  > sample.txt
echo "8"
grep 'Computer' <data1.txt | wc -l
echo "9"
echo "Process Completed on $((date))" >p.log 