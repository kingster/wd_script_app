#!/bin/sh

[ -f /tmp/debug_apkg ] && echo "APKG_DEBUG: $0 $@" >> /tmp/debug_apkg

path=$1

# #create link
# ln -s $path/sbin/utelnetd /usr/bin/utelnetd
ln -s $path /var/www

# #cmd on pre-install
# idx=0
# while [ $idx -lt 7 ]; do
#      mknod /dev/ptyp$idx c 2 $idx 2>/dev/null
#      mknod /dev/ttyp$idx c 3 $idx 2>/dev/null
#      let idx=idx+1
# done