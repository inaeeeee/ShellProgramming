#!/bin/bash
######################
#     *
#    **
#   ***
#  ****
# *****
######################
MAX=5
for i in $(seq 1 $MAX)
do
    NUM=$i
    BLANK_NUM=$(expr $MAX - $NUM)
    # echo "$BLANK_NUM : $NUM"
    for k in $(seq 1 $BLANK_NUM)
    do
        echo -n ' '
    done
    
    for j in $(seq 1 $NUM)
    do
        echo -n '*'
    done 
    echo
done

