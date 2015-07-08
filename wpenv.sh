#!/bin/sh

# Database name that your WordPress instance uses.
dbname=`egrep -i -e "^[ \t]*define[ \t]*\([ \t]*'DB_NAME'" wp-config.php | sed -e "s/[  ();,']*//g" -e "s/defineDB_NAME//"`

# User name for the database.
dbuser=`egrep -i -e "^[ \t]*define[ \t]*\([ \t]*'DB_USER'" wp-config.php | sed -e "s/[  ();,']*//g" -e "s/defineDB_USER//"`

# Password for that user.
dbpasswd=`egrep -i -e "^[ \t]*define[ \t]*\([ \t]*'DB_PASSWORD'" wp-config.php | sed -e "s/[  ();,']*//g" -e "s/defineDB_PASSWORD//"`

