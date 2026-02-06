#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROR:: Pleae run the script with root prevelege"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing MYSQL is Failed"
    exit 1
else
    echo "Installing MYSQL is SUCCESS"
fi