#!/bin/bash

NUM=1

for i in $(seq 1 10)
do
    PER=$(expr $i \* 10)
    echo -ne "$PER%|"


    if [ $i -ne 10 ]; then
        while [ $NUM -le $i ]
        do
            echo -ne "="
            sleep 1
            NUM=`expr $NUM + 1`

        done
            echo -ne '>\n'
    else
        while [ $NUM -le $i ]
        do
            echo -ne "="
            sleep 1
            NUM=`expr $NUM + 1`

        done
            echo -ne '|complete\n'
    fi

done



