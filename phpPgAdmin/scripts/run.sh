#!/bin/sh

STAMP=$(date)

echo "openshift-pgadmin:x:`id -u`:0:openshift-wordpress:/:/sbin/nologin" >> /etc/passwd
cp -vrpf /pgadmin/* /app/

echo "[${STAMP}] Starting daemon..."
# run apache httpd daemon
httpd -D FOREGROUND
