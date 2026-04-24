#!/bin/sh

set -e
chown -R $UID:$GID /etc/letsencrypt

if [ $# -gt 0 ];then
    exec su-exec $UID $@
else
    exec su-exec $UID bash /scripts/start.sh
fi
