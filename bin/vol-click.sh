#!/bin/sh

mute=1

pacmd list-sinks|grep 'muted: yes' > /dev/null

if [ $? -eq 0 ]; then
	mute=0
fi

for i in $(pacmd list-sinks|grep index|sed -e 's/[^0-9]//g'); do pacmd set-sink-mute $i $mute; done

sleep 0.1

killall -USR1 py3status
