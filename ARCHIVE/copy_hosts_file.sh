#!/usr/local/bin/bash

for i in `cat hosts | awk '{print $2}'`
do
    scp -i ~/Projects/aws/aws.pem -o "StrictHostKeyChecking=no" \
        hosts ec2-user@$i:/tmp
    ssh -i ~/Projects/aws/aws.pem -q ec2-user@$i \
        "sudo cp /tmp/hosts /app; \
        sudo chown vzwuser:vzwuser /app/hosts; \
        sudo rm /tmp/hosts"
done

exit 0
