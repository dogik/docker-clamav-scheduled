# Docker Clamav Scheduled Scan
 Simple docker clamav container that runs on specified schedule only:

Usage:

	$ docker run -d \ 
		-e CLAMAV_SCAN_CRON_SCHEDULE="{cron timing}" \
		-e CLAMAV_UPDATE_CRON_SCHEDULE="{cron timing}" \
		-v {volume to scan}:/scan:ro 
	dogik/clamav-scheduled

eg.:

	$ docker run -d \ 
		-e CLAMAV_SCAN_CRON_SCHEDULE="0 12 * * *" \
		-e CLAMAV_UPDATE_CRON_SCHEDULE="*/10 * * * *" \
		-v /:/scan:ro 
	dogik/clamav-scheduled