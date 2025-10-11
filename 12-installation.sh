#!/bin/bash/

USERID=$(id-u)

if [ $USERID -ne 0 ]; then
    eco "ERROR:: please run this script with root privelege"

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing MYSQL is failure"
else
    echo "Installing MYSQL is SUCCESS"
fi            