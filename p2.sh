#!/bin/bash
echo "1"
mkdir -p project/year2025/month07/week1
echo "2"
cd project/year2025/month07/week1
for i in {1..5}
do
touch file$i.txt
done
echo "3"
mkdir -p archive
count=1
for i in file*.txt
do
mv "$i" "archive/archived$i.txt"
count=$((count++))
done
echo "4"
cp -r archive backup
echo "5"
rm archive/*txt