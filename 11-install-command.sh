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

# Check if MySQL server is installed
dnf list installed mysql -y

# If the previous command failed, install MySQL server
if [ $? -ne 0 ]
then
    echo "MySQL server is not installed. Installing now..."
    dnf install mysql -y
    if [ $? -eq 0 ]
    then
        echo "MySQL server installed successfully."
    else
        echo "Failed to install MySQL server."
        exit 1
    fi
else
    echo "MySQL server is already installed."
fi

# Check if Nginx server is installed
dnf list installed nginx -y

if [ $? -ne 0 ]
then
    echo "Nginx server is not installed. Installing now..."
    dnf install nginx -y
    if [ $? -eq 0 ]
    then
        echo "Nginx server installed successfully."
    else
        echo "Failed to install Nginx server."
        exit 1
    fi
else
    echo "Nginx server is already installed."
fi