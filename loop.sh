#!/bin/sh
RELAY_CTRL=/sys/class/leds/tp-link:blue:relay/brightness

state=0
while :
do
        case "`cat $RELAY_CTRL`" in
        0)state=0
        ;;
        1) if [ $state = 0 ]; then
         wget -s http://www.pr0xy.com
        fi
        state=1
        ;;
        esac
        sleep 1
done
