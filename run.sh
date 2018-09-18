#!/bin/sh
echo "-= start script =-"
echo 'java option :' $J_OPTS
echo '-= Run Filebeat =-'
exec /opt/filebeat/filebeat -e -c /opt/filebeat/filebeat.yml -d "publish" &
echo '-= Run Application =-'
exec java -jar $J_OPTS /opt/app/run.jar >> /opt/logs/sms.log
