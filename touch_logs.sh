#!/usr/local/bin/bash

a=201706042359
b=201706032359
c=201706022359

d=access_log.1240921107
e=access_log.3408210027
f=access_log.3423032082

for i in `cat hosts | awk '{print $2}'`
do
    ssh -i ~/Projects/aws/aws.pem -q ec2-user@$i "cd /log; \
        sudo touch error_log; sudo touch access_log; \
        sudo touch -t $a $d; sudo touch -t $b $e; \
        sudo touch -t $c $f; \
        sudo touch shakespeare-romeo-48.txt"
done

exit 0
