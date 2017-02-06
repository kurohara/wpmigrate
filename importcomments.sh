#!/bin/sh
. ./wpenv.sh
if [ "" = "$1" ];then
	echo "need to specify dump file"
	exit 1
fi
commentsql=$1
mysql -u ${dbuser} -p${dbpasswd} ${dbname} < $commentsql
