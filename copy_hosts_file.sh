#!/usr/local/bin/bash
for i in `cat hosts | awk '{print $2}'`
do
    scp -o "StrictHostKeyChecking=no" hosts vzwuser@$i:/app
done

exit 0
