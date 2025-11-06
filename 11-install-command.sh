#!/bin/bash

USERID=$(id -u) # Get the user ID of the current user

# Check if the user is root

if [ $USERID -ne 0 ] 
then 
    echo "ERROR:: Please run the script as root user."
    exit 1
else
    echo "SUCCESS:: Running script as root user."
fi

# Install MySQL server
dnf install mysql -y 

if [ $? -eq 0 ]
then 
    echo "MySQL server installed successfully."
else
    echo "Failed to install MySQL server."
    exit 1
fi