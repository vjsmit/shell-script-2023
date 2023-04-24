a=10
name=Smit

#Printing Variable

echo a = $a
echo name = ${name}

#Date=23/04/2023

Date=$(date +%F)

echo Today Date is ${Date}

echo Hello
echo script name $0
echo first arg is $1
echo 2nd arg is $2
echo All arg is $*
echo No of Args $#