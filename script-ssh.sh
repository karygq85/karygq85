#!/bin/bash
n=0
filename= "ec2list.txt"
echo "copy SSH key to all EC2"
while read line; do
'cat ~/.ssh/id_rsa.pub | ssh -i ansible_key.pem ubuntu@$line "cat - >> ~/.ssh/authorized_keys"'
 echo "$n"
 n=$((n=1))
 done


###cat ~/.ssh/id_rsa.pub | ssh -i ansible_key.pem ubuntu@ec2-13-58-195-142.us-east-2.compute.amazonaws.com "cat - >> ~/.ssh/authorized_keys"

