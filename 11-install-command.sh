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

#   Function to check installation status
checkInstallation() {
    if [ $1 -eq 0 ]
    then
        echo "$2 installed successfully."
    else
        echo "Failed to install $2."
        exit 1
    fi
}

# Check if MySQL server is installed
dnf list installed mysql -y

# If the previous command failed, install MySQL server
if [ $? -ne 0 ]
then
    echo "MySQL server is not installed. Installing now..."
    dnf install mysql -y
    checkInstallation $? "MySQL server"
else
    echo "MySQL server is already installed."
fi

# Check if Nginx server is installed
dnf list installed nginx -y

if [ $? -ne 0 ]
then
    echo "Nginx server is not installed. Installing now..."
    dnf install nginx -y
    checkInstallation $? "nginx server"
else
    echo "Nginx server is already installed."
fi