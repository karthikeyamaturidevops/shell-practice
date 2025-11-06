#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo "ERROR:: Please run the script as root user."
    exit 1
else
    echo "SUCCESS:: Running script as root user."
fi

dnf install mysql -y