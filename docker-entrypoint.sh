#!/bin/bash
set -eo pipefail
shopt -s nullglob

# if command starts with an option, prepend mysqld
if [ "${1:0:1}" = '-' ]; then
	set -- mysqld "$@"
fi



if [ "$1" = 'mysqld' -a -z "$wantHelp" -a "$(id -u)" = '0' ]; then
	DATADIR="/var/lib/mysql/"
	chown -R mysql:mysql /var/lib/mysql
	chmod 777 -R /var/lib/mysql
	exec gosu mysql "$BASH_SOURCE" "$@"
fi



exec "$@"
