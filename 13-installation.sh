#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Pleae run the script with root prevelege"
    exit 1
fi

VALIDATE(){ # functions receive inputs through args just like shell script args
    if [ $? -ne 0 ]; then
     echo "ERROR:: Installing $2 is Failed"
        exit 1
    else
        echo "Installing $2 is SUCCESS"
    fi
}
dnf install mysql -y
VALIDATE $1 "MySql"

dnf install nginx -y
VALIDATE $1 "Nginx"

dnf install python3 -y
VALIDATE $1 "Python3"
