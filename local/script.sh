#!/bin/sh
su postgres -c '/usr/bin/pg_ctl start -l /var/log/psql/logfile -D /usr/local/psql/data'
su sonar bash -c '/opt/sonarqube/bin/linux-x86-64/sonar.sh start'
while true; do  sleep 1000 
done