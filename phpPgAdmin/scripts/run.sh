#!/bin/sh

STAMP=$(date)

echo "oc:x:`id -u`:0:oc:/:/sbin/nologin" >> /etc/passwd

echo "[${STAMP}] Starting daemon..."
# run apache httpd daemon
httpd -D FOREGROUND
