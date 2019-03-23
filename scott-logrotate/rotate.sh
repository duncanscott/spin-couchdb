#!/bin/bash

cleanup ()
{
  kill -s SIGTERM $!
  exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
  /usr/sbin/logrotate -v -f /usr/share/logrotate/logrotate.conf -s /usr/share/logrotate/logrotate.status
  sleep 60 &
  wait $!
done
