#!/bin/bash

# install mysql

USERID=$(id -u)

if [ $USERID -nq 0 ]
then
    echo "ERROR:: Please run this script with root access"
else
    echo "you are running with root access."

dnf install mysql -y