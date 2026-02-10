#!/bin/sh

set -e
chown -R $UID:$GID /etc/letsencrypt
chown -R $UID:$GID /certbot

if [ $# -gt 0 ];then
    exec su-exec $UID $@
else
    exec su-exec $UID bash /scripts/start.sh
fi
