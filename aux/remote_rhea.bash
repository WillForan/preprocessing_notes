#!/usr/bin/env bash

[ $# -ne 1 ] && echo "need pitt id as only argument" && return 1
ssh -AY \
    -o Ciphers=+aes128-cbc \
    -o KexAlgorithms=+diffie-hellman-group1-sha1 \
    $1@unix.cssd.pitt.edu              -t ssh -AX \
    WPC-4951@web-server.mrctr.upmc.edu -t ssh -AY \
    lncd@rhea.wpic.upmc.edu 
