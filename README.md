# Docker Clamav Scheduled Scan

	docker run -d -e CLAMAV_SCAN_CRON_SCHEDULE="*/5 * * * *" -e CLAMAV_UPDATE_CRON_SCHEDULE="*/10 * * * *" -v /data:/scan:ro dogik/docker-clamav-scheduled
