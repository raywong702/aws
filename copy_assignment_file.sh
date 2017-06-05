#!/usr/local/bin/bash
for i in `cat hosts | awk '{print $2}'`
do
    scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null asignment.txt vzwuser@$i:/app
done

exit 0
