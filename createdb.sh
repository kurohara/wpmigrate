#!/bin/sh
. ./wpenv.sh

if [ "${rootpasswd}" != "" ];then
  login=" -u root -p${rootpasswd} "
fi
mysqladmin ${login} create ${dbname}
mysql ${login} -e "grant all privileges on ${dbname}.* to ${dbuser}@localhost identified by '${dbpasswd}';"

