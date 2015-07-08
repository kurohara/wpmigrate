#!/bin/sh
. ./wpenv.sh
mysqldump -u ${dbuser} -p${dbpasswd} ${dbname} > database.sql.tmp

progname=`basename $0`
if [ "$progname" != "export.sh" ];then
  siteaddr=`echo $progname | sed -e 's/^export//' -e 's/\.sh$//' -e 's/~/\//'`
  sed -e 's|'$siteaddr'|{{siteaddr}}|g' < database.sql.tmp > database.sql
  rm -f database.sql.tmp
else
  mv -f database.sql.tmp database.sql
fi


