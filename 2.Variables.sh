a=10
name=Smit

#Printing Variable

echo a = $a
echo name = ${name}

#Date=23/04/2023

Date=$(date +%F)

echo Today Date is ${Date}

echo Hello
echo Script name = $0

script=$(realpath "$0")
scriptpath=($dirname "$0")

echo realpath is ${script}
echo scriptpath is ${scriptpath}