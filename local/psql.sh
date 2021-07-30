#!/bin/sh
/usr/bin/initdb -D /usr/local/psql/data --no-locale --encoding=UTF8
/usr/bin/pg_ctl start -l /var/log/psql/logfile -D /usr/local/psql/data
psql -c "CREATE USER sonar WITH PASSWORD 'Password';"
psql -c "CREATE DATABASE sonar;"
psql -c "grant all privileges on database sonar to sonar;"