#!/bin/bash

NUMBER=$1
if [ $NUMBER -gt 100 ]
then
   echo "the given number $NUMBER is greater than 100"
else
  echo "the given number $NUMBER is not  greater than 100"
fi