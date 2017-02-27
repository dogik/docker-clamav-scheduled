#!/bin/sh

sed -i "s|{{CLAMAV_SCAN_CRON_SCHEDULE}}|$CLAMAV_SCAN_CRON_SCHEDULE|g" /etc/cron.d/clamav-scan
sed -i "s|{{CLAMAV_UPDATE_CRON_SCHEDULE}}|$CLAMAV_UPDATE_CRON_SCHEDULE|g" /etc/cron.d/clamav-scan

cron && tail -f /var/log/cron.log
