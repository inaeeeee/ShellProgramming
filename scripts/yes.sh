#!/bin/bash

# Fuction definitions
YES () {
    echo
    echo "YES" | boxes -d critical
}

NO () {
    echo
    echo "NO" | boxes -d critical
}

FAIL () {
    echo "[ FAIL ]"
    exit 2
}

# Variable definitions
echo -n "선택해(yes/no): "
read CHOICE

case $CHOICE in
    y|Y|yes|YES|Yes) YES  ;;
    n|N|no|NO|No)    NO   ;;
    *)               FAIL ;;
esac
