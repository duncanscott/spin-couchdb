#!/bin/sh
chown root:root /logrotate.conf
chmod 664 /logrotate.conf
/usr/sbin/logrotate -v -f /logrotate.conf