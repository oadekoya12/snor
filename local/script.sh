#!/bin/sh
# sysctl -w vm.max_map_count=262144
ulimit -n 65536 
su postgres -c '/usr/bin/pg_ctl start -l /var/log/psql/logfile -D /usr/local/psql/data'
su sonar -c '/opt/sonarqube/bin/linux-x86-64/sonar.sh start'
while true; do  sleep 1000 
done