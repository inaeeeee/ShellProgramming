#!/bin/bash

###################
# 1. $HOME/.bashrc
# 2. $HOME/.vimrc
# 3. ?
###################

set -e
source /root/shell/functions.sh

################################
# 1. $HOME/.bashrc
################################
echo "#####################################"
echo "[$HOME/.bashsrc 서비스]"
BASHRC=$HOME/bashrc.txt
# BASHRC=$HOME/.bashrc
echo "[Phase 01] $BASHRC 파일 설정"
/bin/cp /etc/skel/.bashrc $BASHRC
cat << EOF >> $BASHRC

#
# Specific Configuration
#
export PS1='\[\e[31;1m\][\u@\h\[\e[33;1m\] \w]\$ \[\e[m\]'

alias ls='ls --color=auto -h'
alias pps='ps -ef | head -1 ; ps -ef | grep $1'
alias nstate='netstat -an | head -2 ; netstat -an | grep $1'
alias vi='/usr/bin/vim'
alias grep='grep --color=auto -i'
alias df='df -h -T'

EOF
echo "[ OK ] $BASHRC 설정 완료"

#################################
# 2. $HOME/.vimrc
echo "-----------------------------------------"
echo "[$HOME/.vimrc 서비스]"
VIMRC=$HOME/.vimrc
echo "[Phase 01] $VIMRC 파일 설정"
cat << EOF > $VIMRC
set ts=4 sw=4
set nu
set ai
syntax on
set et
EOF
echo "[ OK ] $VIMRC 설정 완료"
