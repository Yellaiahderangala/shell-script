#!/bin/bash 

echo "please enter your username:"
read -s USERNAME #the value entered will be automatically atteched to USERNAME variable 
echo "username is $USERNAME" # i am printing the username  just for validation , you should not print usernames & passwords in scripts 
# here -s means do not echo input coming from terminal

echo "please enter your password:"
read -s PASSWORD #the value entered will be automatically atteched to USERNAME variable 
echo "password is $PASSWORD" 