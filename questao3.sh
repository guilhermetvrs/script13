#!/bin/bash
function ping_test {
        ping -c 3 -4 $1 &>> /dev/null && echo "OK" || echo "FALHA"
}

read -p "Digite o IP " ip
a=$(ping_test $ip)
echo $a
