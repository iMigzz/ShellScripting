#! /bin/bash 

<<COMMENT
echo "hello world"

# System define variables
echo $BASH #will give you the name of the bash
echo $BASH_VERSION #give bash version
echo $HOME # give the home directory
echo $PWD # give the present working directory

#User define variable
name=Mark
echo The name is $name
value1=10
echo The value is $value1

#user inputs
echo "Enter your name"
read name1
echo "How are you $name1?"
read text1
echo "I am $text1 too!"

#multiple inputs
echo "Enter 3 values separate it with spaces"
read value2 value3 value4
echo "The values are $value2, $value3, $value4"

#you can adjust the input in the same line in the terminal
read -p "User-name " user_val
echo "$user_val is your User-name"
#for secret no input can be seen
read -sp "Enter password " user_pass
echo "$user_pass is your password"

#read an array
echo "enter names"
read -a names
echo "You enter first name: ${names[0]} and second: ${names[1]}"

#in case you did not write variable in the read you can see your input in $REPLY variable
echo "enter someting"
read
echo "You write something like: $REPLY"

#1st way Passing arguments to a Bash-Script
echo $0 $1 $2 $3 $4 
echo "It will print the following text you inputed in the terminal"

#2nd way Passing arguments to a Bash-Script pero naa kalahian kay ang kina una nimo nga arg kay mahimo na index0
arg=("$@") #convert the arg into array
echo ${arg[1]} " and " ${arg[2]} " and " ${arg[3]}

#print number of arguments
echo $#

var1=10

#if stament
if [ $var1 -eq 9 ]
then 
    echo $var1 "is equal to 9"
fi

#2nd way to use if statement 
if (( $var1 >= 9 ))
then 
    echo $var1 "is greater than to or equal to 9"
fi

COMMENT

word1=abc

#For string comparison
if [ $word1 == "abc" ]
then 
    echo $word1 "is same"
fi

ika 5 ep nata sa shell script
