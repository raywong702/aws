#!/usr/local/bin/bash

a=201706042359
b=201706032359
c=201706022359

d=access_log.1240921107
e=access_log.3408210027
f=access_log.3423032082

for i in `cat hosts | awk '{print $2}'`
do
    ssh -q vzwuser@$i "cd /log; touch error_log; touch access_log; \
        touch -t $a $d; touch -t $b $e; touch -t $c $f"
done

exit 0
