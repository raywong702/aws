#!/usr/local/bin/bash

for i in `cat hosts | awk '{print $2}'`
do
    scp -i ~/Projects/aws/aws.pem -o "StrictHostKeyChecking=no" \
        assignment.txt ec2-user@$i:/tmp
    ssh -i ~/Projects/aws/aws.pem -q ec2-user@$i \
        "sudo cp /tmp/assignment.txt /app; \
        sudo chown vzwuser:vzwuser /app/assignment.txt; \
        sudo rm /tmp/assignment.txt"
done

exit 0
