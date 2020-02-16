#!/bin/bash
#
# Forward incoming conections
#
# Jonas Colmsjö, 190628

if [[ $# -ne 1 ]] ; then
    echo 'Usage: ./login CONTAINER_NAME'
    exit 1
fi

lxc exec $1 -- sudo --login --user ubuntu
