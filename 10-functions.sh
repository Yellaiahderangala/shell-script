#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then echo "ERROR:: $2 .. failed"
    exit 1
    else echo "$2 .. sucess"
    fi
}

if [ $ID -ne 0 ]
then 
echo "ERROR:: please run this script with root access"
exit 1 # you can give other than 0 (beacuse 0 means success so we need to give other than 0 to exit)
else 
echo "you are root user"
fi # fi means reverse of if , indicating condition end

yum install mysql -y

VALIDATE $? "installing MYSQL"

yum install git -y

VALIDATE $? "installing GIT"