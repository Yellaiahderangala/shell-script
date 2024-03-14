#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e  "ERROR:: $2 .. $R failed $N"
    exit 1
        else echo -e "$2 .. $G sucess $N"
    fi
}

if [ $ID -ne 0 ]
then 
echo -e   $R "ERROR:: please run this script with root access $N"
exit 1 # you can give other than 0 (beacuse 0 means success so we need to give other than 0 to exit)
else 
echo -e  "  you are root user "
fi # fi means reverse of if , indicating condition end

# echo "all arguments passed :: $@"
# git mysql postfix net-tools
# package=git for first time 

for package in $@
do 
    yum list installed $package &>> $LOGFILE #checking installed or not
    if [ $? -ne 0 ] # if not installed
    then 
        yum install $package -y &>> $LOGFILE #install the package
        VALIDATE $? "installation of $package" #validate
    else 
        echo -e "$package is already installed ... $Y skipping $N"
    fi
done