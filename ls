#!/bin/bash
#
# Jonas Colmsjö, 190628

if [[ $# -ne 2 ]] ; then
    echo 'Usage: ./ls CONTAINER_NAME PATH'
    exit 1
fi


lxc exec $1 -- ls $2
