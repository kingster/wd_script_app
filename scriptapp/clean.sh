#!/bin/sh

[ -f /tmp/debug_apkg ] && echo "APKG_DEBUG: $0 $@" >> /tmp/debug_apkg

#remove link
# rm -f /usr/bin/utelnetd  2> /dev/null
rm -f /var/www/wd_script_app >/dev/null
# rm -f /dev/ttyp*
# rm -f /dev/ptyp*