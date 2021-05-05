# put it in .bashrc to reboot every time 
# to find dangerous string in dmesg

#!/bin/bash
num=`cat counter`
dmesg > log
res=`grep dangerous log`

if [ -z "$res" ]
then
        num=$((num + 1))
        echo $num > counter
        if [ $num -gt 3 ]
                then
                        cat counter
                        echo 0 > counter
                else
                        sudo reboot
        fi
else
        cat counter
        echo 0 > counter
fi
