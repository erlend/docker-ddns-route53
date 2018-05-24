#!/bin/sh

if [ $# -eq 0 ] || [ ${1:0:1} = '-' ]; then
  set -- /usr/local/bin/ddns-route53 $@
fi

exec $@
