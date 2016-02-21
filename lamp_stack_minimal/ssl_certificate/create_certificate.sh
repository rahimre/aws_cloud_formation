#!/bin/bash
#Give a filename to script 
#haproxy need the pem file which is combibe of crt and key file
#look at the file ./roles/lb/files/mysitename.pem
#
#Client 
#
if [ "$#" -eq 0 ]
  then echo "enter a filename"
  exit
fi

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $1.key -out $1.crt
cat $1.crt $1.key | tee $1.pem
