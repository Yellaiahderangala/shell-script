#!/bin/bash 

echo "please enter your username:"
read -s USERNAME #the value entered will be automatically atteched to USERNAME variable 
echon "username is $USERNAME" # i am printing the username  just for validation , you should not print usernames & passwords in scripts 
# here -s means do not echo input coming from terminal

echo "please enter your password:"
read -s UPASSWORD #the value entered will be automatically atteched to USERNAME variable 
echon "upassword is $PASSWORD" 