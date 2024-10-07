#!/bin/bash

# Function Definitions
Help() {
    cat << EOF
!		debug		mdir		sendport	site
$		dir		mget		put		size
account		disconnect	mkdir		pwd		status
EOF
}

Invalid() {
    echo "?Invalid command"
}

Open() {
    echo -n "접속하려고 하는 FTP 서버 IP: "
    read IP1
    # echo $IP1
    ftp $IP1
}

while true
do
    echo -n "Myftp> "
    read CMD
    # echo $CMD

    case $CMD in
        'help') Help    ;;
        'open') Open    ;; 
        'quit') break   ;; 
        '')     :       ;;   
        *)      Invaild ;;
    esac
done
