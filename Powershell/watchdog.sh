#!/bin/bash

while true; do
    LOG=''
    sleep 10

    route=$(ip route get 8.8.8.8 | awk '/via/{print $3}')

    if [ "${route}" = "24.37.163.133"]; then

        LOG=$LOG"Mode: master"
        if ping -c 1 24.37.163.134 &> /dev/null || ping -c 1 24.37.163.133 &> /dev/null || ping -c 1 24.37.163.134 &> /dev/null; then
            LOG=$LOG", Internet: CONNECTED"
        else
            LOG=$LOG", Internet: LOST"
            reboot
        fi

    elif [ "${route}" = "10.6.21.200" ]; then

        LOG=$LOG"Mode: slave"
        if ping -c 1 10.6.21.200 &> /dev/null || ping -c 1 10.6.21.200 &> /dev/null || ping -c 1 10.6.21.200 &> /dev/null; then
            LOG=$LOG", Master: RUNNING"
        else
            LOG=$LOG", Master: DOWN >>> Promoted to Master"
            route del default gw 10.6.21.200
            ifconfig eth0 24.37.163.134 netmask 255.255.255.252
            ifconfig eth1:0 10.6.21.200 netmask 255.255.255.0
            ifconfig eth1:1 10.6.21.30 netmask 255.255.255.0
            route add default gw 24.37.163.133
        fi

    else
        LOG=$LOG" > No Configuration >>> Promoted to Slave"
        route add default gw 10.6.21.200
    fi
    
    logger -p 'info' -t 'watchdog' $LOG
    
done
