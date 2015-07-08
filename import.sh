#!/bin/sh

. ./wpenv.sh

progname=`basename $0`
if [ "$progname" != "export.sh" ];then
  siteaddr=`echo $progname | sed -e 's/^import//' -e 's/\.sh$//' -e 's/~/\//'`
  sed -e 's|{{siteaddr}}|'$siteaddr'|g' < database.sql > database.sql.tmp
else
  cp database.sql database.sql.tmp
fi

mysql -u ${dbuser} -p${dbpasswd} ${dbname} < database.sql.tmp
rm -f database.sql.tmp

