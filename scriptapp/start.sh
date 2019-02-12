#!/bin/sh

[ -f /tmp/debug_apkg ] && echo "APKG_DEBUG: $0 $@" >> /tmp/debug_apkg
#start daemon
path=$1


IS_PRESENT=`grep 'MONITOR' /usr/local/ups/etc/upsmon.conf | wc -l`
if [ ${IS_PRESENT} -eq 0 ]; then
    echo 'MONITOR apc@10.42.0.201 1 client 123 slave' >> /usr/local/ups/etc/upsmon.conf
fi

sed -i  's/^FINALDELAY.*/FINALDELAY 0/g' /usr/local/ups/etc/upsmon.conf

cp $path/files/upssched.conf /usr/local/ups/etc/upssched.conf

if pidof -s "upsmon" >/dev/null; then
    echo "Process already running"
    upsmon -c reload
else
    upsmon
fi
