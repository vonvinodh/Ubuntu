#!/bin/bash
echo "1"
touch sample.txt
echo "2"
ls -la
echo "3"
chmod u+x sample.txt
echo "4"
chmod 754 sample.txt
echo "5"
ls -l
echo "6"
if [ $(id -u) -eq 0 ]; then
chown codespace:codespace sample.txt
fi
echo "6"
ls -l
