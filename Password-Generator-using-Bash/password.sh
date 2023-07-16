#!/bin/bash

#Password Generator Using Bash

echo "This is a password generator"
echo "Enter the length of the password"
read PASS_LENGTH

for password in $(seq 1 8);
do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done

